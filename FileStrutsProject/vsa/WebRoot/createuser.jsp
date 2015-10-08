<%@ include file="defaultimport.jsp" %>
<%@ page import = "com.smict.struts.data.DBuser"  %>
<%@ page import = "com.smict.struts.form.UserForm"  %>
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
    <%@ include file="menubar.jsp" %>
    <div class="grid container upload-file ">
	    <div class="row cells12 align-left">
			<div class="cell"></div>
	        <div class="cell debug colspan10">
	        <html:form action="/createuser" method="POST">
		        <div class="row">
		        Name
		        </div>
		        <div class="row cells2" >
		        	<div class="cell">
		        		<div class="input-control text success" data-role="input" >
							<input type="text" class="form-control" name="tb_firstname" id="tb_name" placeholder="First" required>
							<button class="button helper-button clear"><span class="mif-cross"></span></button>
						</div>
		        	</div>
		        	<div class="cell">
		        		<div class="input-control text success" data-role="input" >
							<input type="text" class="form-control" name="tb_lastname" id="tb_lastname" placeholder="Last" required>
							<button class="button helper-button clear"><span class="mif-cross"></span></button>
						</div>
		        	</div>
		        </div>
		        <div class="row">
		        Username
		        </div>
		        <div class="row" >
		        	<div class="cell">
		        		<div class="input-control text success" data-role="input" >
							<input type="text" class="form-control" name="tb_username" id="tb_username" placeholder="Username" required>
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
							UserForm userform = (UserForm) iterate.next();
					%>
						<option value="<%=userform.getPosition_no() %>"><%=userform.getPosition_name() %></option>
					<%
						}
					 %>
						
					</select>
				</div>
				<div class="row align-center">
					<button type="submit" name="submit" id="submit" class="button success">Create</button>
				</div>
				</html:form> 
	        </div>
	        <div class="cell"></div>
	    </div>
    </div>
  </body>
</html:html>
