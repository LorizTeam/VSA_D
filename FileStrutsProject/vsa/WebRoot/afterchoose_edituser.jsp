<%@ include file="defaultimport.jsp" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ page import="com.smict.struts.data.DBuser" %>
<%@ page import="com.smict.struts.form.UserForm" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>aftereditchooseproject.jsp</title>
	<style>
		.app-bar .app-bar-element > .button {
		    margin-top: 0.5rem !important;
		}
	</style>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<%@ include file="cssinclude.jsp"%>
  	
  	<div class="grid">
		<div class="row cells12">
			<div class="cell colspan6 offset3 window">
				<div class="window-caption  bg-cyan fg-white">
					<span class="window-caption-icon"><span class="mif-user-check"></span></span>
					<span class="window-caption-title">Edit user detail</span>
					<a  href="EditUser.jsp"><span class="btn-close "></span></a>
				</div>
				<%	List<?> UserList = null;
		        	Iterator<?> iterateuser = null;	
		        	if(request.getAttribute("detailuserList") != null){
		        		UserList = (List<?>) request.getAttribute("detailuserList");
		        		iterateuser = UserList.iterator();
		        		while(iterateuser.hasNext()){
		        		UserForm userForm = (UserForm) iterateuser.next();%>
				<form action="afterchoose_edituser.do" method="POST" class="window-content grid">					
						<div class="row cells12">
							<div class="cell colspan2 align-right "><h5 class="caption">Name</h5></div>
							<div class="cell colspan10 ">						
								<div class="input-control text " data-role="input" >			
									<input type="text" class="form-control" name="tb_firstname" id="tb_name" placeholder="First Name" value="<%=userForm.getName() %>" required>
									<button class="button helper-button clear"><span class="mif-cross"></span></button>
								</div>
						        <div class="input-control text" data-role="input" >
									<input type="text" class="form-control" name="tb_lastname" id="tb_lastname" placeholder="Last Name" value="<%=userForm.getSurname() %>" required>
									<button class="button helper-button clear"><span class="mif-cross"></span></button>
								</div>
								
							</div>	
						</div>
						<div class="row cells12"  style="margin-bottom:5px;">
							<div class="cell colspan2 align-right "><h5 class="caption">Username</h5></div>
							<div class="cell colspan10 ">
								<div class="input-control text " data-role="input" >				        	
									<input type="text" class="form-control" name="tb_username" id="tb_username" placeholder="Username" value="<%=userForm.getUsername() %>" readonly="readonly">
									<button class="button helper-button clear"><span class="mif-cross"></span></button>
								</div>
							</div>
						</div>
						<div class="row cells12" style="margin-bottom:5px;">
							<div class="cell colspan2 align-right "><h5 class="caption"> Permission</h5></div>
							<div class="cell colspan10 ">
								<div class="input-control select " >
									<select name="slc_position" id="slc_position">
									<%	Iterator<?> iterate = null;
										DBuser dbuser = new DBuser();
										iterate = dbuser.GetPosition("").iterator();
										while(iterate.hasNext()){
											UserForm userform_pos = (UserForm) iterate.next();
											if(userForm.getPosition_name().equals(userform_pos.getPosition_name())){%>									
											<option value="<%=userform_pos.getPosition_no() %>" selected><%=userform_pos.getPosition_name() %></option>
									<% }else{%>
										<option value="<%=userform_pos.getPosition_no() %>"><%=userform_pos.getPosition_name() %></option>
									<%}
									} %>
										
									</select>
								</div>	
							</div>
						</div>
						<div class="row align-center" style="margin-bottom:0;">	           		 		
	           		 		<label class="input-control checkbox small-check">
								<input type="checkbox" name="chk_resetpassword">
								<span class="check"></span>
								<span class="caption">Reset Password to 12345</span>				
							</label>
	           		 	</div>
		           		<div class="row align-center ">		           			
							<button type="submit" name="submit" id="submit" class="button success"><span class="mif-floppy-disk"></span> SAVE</button>
							<a href="EditUser.jsp" class="button danger"><span class="mif-cross"></span> Cancel</a>
						</div>	 	
						<hr class="bg-cyan"/>							           			
				</form>
				 <% }
				 } %>
		        <!--  alert if user not found ,or deleted user -->
				<%String alert = null;
				if(request.getAttribute("alert") != null){ alert = (String)request.getAttribute("alert"); }
				if(alert != null){ %>
	           		<div class="row align-center padding10" >
	           			<span class="tag alert padding10 margin10">
	           				<span class="mif-not"></span> <%=alert %>
	           			</span><br/>
	           			<span class="margin10">
	           				<a  href="EditUser.jsp">Back</a>
	           			</span>
	           			
	           		</div>
	           	<% } %>
	           <!--  alert if user not found ,or deleted user -->	 
			</div>
		</div>
	</div>
	
  </body>
</html:html>
