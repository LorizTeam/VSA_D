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
  	<%@ include file="menubar.jsp" %>
    <div class="grid container page-content">
			<div class="row cells12 align-left">
				<div class="cell"></div>
		        <div class="cell debug colspan10">
		        	<%List<?> UserList = null;
		        	Iterator<?> iterateuser = null;
		        	
		        	if(request.getAttribute("detailuserList") != null){
		        		UserList = (List<?>) request.getAttribute("detailuserList");
		        		iterateuser = UserList.iterator();
		        		while(iterateuser.hasNext()){
		        		UserForm userForm = (UserForm) iterateuser.next();
		        	%>
		        	
		           	<form action="/afterchoose_edituser" method="POST">
		           		<div class="row">
		           			
		           			<label class="input-control checkbox">
								<input type="checkbox" name="chk_resetpassword">
								<span class="check"></span>
							</label>
							Reset Password to 12345
		           		</div>
		           		<div class="row">
				        Edit Username
				        </div>
				        <div class="row" >
				        	<div class="cell">
				        		<div class="input-control text success" data-role="input" >
									<input type="text" class="form-control" name="tb_username" id="tb_username" placeholder="Username" value="<%=userForm.getUsername() %>" disabled>
									<button class="button helper-button clear"><span class="mif-cross"></span></button>
								</div>
				        	</div>
				        </div>
		           		<div class="row">
		           			Name 
		           		</div>
		           		<div class="row cells2">
		           			<div class="cell">
				        		<div class="input-control text success" data-role="input" >
									<input type="text" class="form-control" name="tb_firstname" id="tb_name" placeholder="First" value="<%=userForm.getName() %>" required>
									<button class="button helper-button clear"><span class="mif-cross"></span></button>
								</div>
				        	</div>
				        	<div class="cell">
				        		<div class="input-control text success" data-role="input" >
									<input type="text" class="form-control" name="tb_lastname" id="tb_lastname" placeholder="Last" value="<%=userForm.getSurname() %>" required>
									<button class="button helper-button clear"><span class="mif-cross"></span></button>
								</div>
				        	</div>
		           		</div>
		           		<div class="row">
				        Position
				        </div>
				        Select Project Type 
				        <div class="input-control select text success" >
							<select name="slc_position" id="slc_position">
							<%
								Iterator<?> iterate = null;
								
								DBuser dbuser = new DBuser();
								iterate = dbuser.GetPosition("").iterator();
								while(iterate.hasNext()){
									UserForm userform_pos = (UserForm) iterate.next();
									if(userForm.getPosition_name().equals(userform_pos.getPosition_name())){
							%>
								<option value="<%=userform_pos.getPosition_no() %>" selected><%=userform_pos.getPosition_name() %></option>
							<%
									}else{
							%>
								<option value="<%=userform_pos.getPosition_no() %>"><%=userform_pos.getPosition_name() %></option>
							<%
									}
								}
							 %>
								
							</select>
						</div>
						<%String alert = null;
						if(request.getAttribute("alert") != null){
								alert = (String)request.getAttribute("alert");
							}
						if(alert != null){
	           			%>
	           				<div class="row align-center" ><span class="tag alert"><%=alert %></span></div>
	           			<%
	           			}
	           		 	%>
		           		<div class="row align-center">
							<button type="submit" name="submit" id="submit" class="button success">Create</button>
						</div>
		           	</form>
		           	<%
		        		}
		        	}
		        	 %>
				</div>
				<div class="cell"></div>
			</div>
		</div>         
  </body>
</html:html>
