<%@ include file="defaultimport.jsp" %>
<%@ page import = "com.smict.struts.data.DBuser"  %>
<%@ page import = "com.smict.struts.form.UserForm"  %>
<% if(session.getAttribute("username") == null){
		response.sendRedirect("login.jsp");
	}else{
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>createuser.jsp</title>
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
    <%@ include file="cssinclude.jsp" %>
    
    <div class="grid">
		<div class="row cells12">
			<div class="cell colspan6 offset3 window">
				<div class="window-caption  bg-cyan fg-white">
					<span class="window-caption-icon"><span class="mif-user-check"></span></span>
					<span class="window-caption-title">Edit user detail</span>
					<a  href="EditUser.jsp"><span class="btn-close "></span></a>
				</div>
				
				<html:form action="/createuser" method="POST" styleClass="window-content grid">					
						<div class="row cells12">
							<div class="cell colspan2 align-right "><h5 class="caption">Name</h5></div>
							<div class="cell colspan10 ">						
								<div class="input-control text success" data-role="input" >
									<input type="text" class="form-control" name="tb_firstname" id="tb_name" placeholder="First" required>
									<button class="button helper-button clear"><span class="mif-cross"></span></button>
								</div>
								<div class="input-control text success" data-role="input" >
									<input type="text" class="form-control" name="tb_lastname" id="tb_lastname" placeholder="Last" required>
									<button class="button helper-button clear"><span class="mif-cross"></span></button>
								</div>
							</div>	
						</div>
						<div class="row cells12"  style="margin-bottom:5px;">
							<div class="cell colspan2 align-right "><h5 class="caption">Username</h5></div>
							<div class="cell colspan10 ">
								<div class="input-control text success" data-role="input" >
									<input type="text" class="form-control" name="tb_username" id="tb_username" placeholder="Username" required>
									<button class="button helper-button clear"><span class="mif-cross"></span></button>
								</div>
							</div>
						</div>
						<div class="row cells12" style="margin-bottom:5px;">
							<div class="cell colspan2 align-right "><h5 class="caption"> Permission</h5></div>
							<div class="cell colspan10 ">
								<div class="input-control select text success" >
									<select name="slc_position" id="slc_position">
									<%
										Iterator<?> iterate = null;
										
										DBuser dbuser = new DBuser();
										iterate = dbuser.GetPosition("").iterator();
										while(iterate.hasNext()){
											UserForm userform = (UserForm) iterate.next();
									%>
										<option value="<%=userform.getPosition_no() %>"><%=userform.getPosition_name() %></option>
									<%
										}
									 %>
										
									</select>
								</div>
							</div>
						</div>
						
		           		<div class="row align-center ">		           			
							<button type="submit" name="submit" id="submit" class="button success"><span class="mif-user-plus"></span> CREATE</button>
							<a href="EditUser.jsp" class="button danger"><span class="mif-cross"></span> Cancel</a>
						</div>	 	
						<hr class="bg-cyan"/>							           			
				</html:form> 
 
			</div>
		</div>
	</div>

  </body>
</html:html>
<%} %>

