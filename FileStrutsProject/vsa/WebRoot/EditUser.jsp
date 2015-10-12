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
    
    <title>EditUser.jsp</title>
	<style>
		.app-bar .app-bar-element > .button {
		    margin-top: 0.5rem !important;
		}
	</style>
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"></link>
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css" type="text/css"></link>
	<link rel="stylesheet" href="css/jquery.dataTables.css" type="text/css"></link>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="vsagroup,vsa,vsa group">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>

    <%@ include file="menubar.jsp" %>
    <script type="text/javascript">
			$(document).ready(function() {
			    $('#tb_choosepj').DataTable();
			} );
	</script>
    <form action="editUser.do" method="POST" >
    	<div class="grid">
			<div class="row cells12">
				<div class="cell colspan10 offset1 window">
					<div class="window-caption  bg-cyan fg-white">
						<span class="window-caption-icon"><span class="mif-users"></span></span>
						<span class="window-caption-title">Edit User</span>					
					</div>
					<div class="window-content grid">
						<div class="row align-center" ><h4>Choose User For Edit</h4></div>
		           		<%String alert = null;
						if(request.getAttribute("alert") != null){
								alert = (String)request.getAttribute("alert");
							}
						if(alert != null){%>
	           			<div class="row align-center" ><span class="tag alert"><%=alert %></span></div>
	           			
	           			<% } %>
						<table id="tb_choosepj" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
							<thead>
								<tr>
									<th>Username</th>
									<th>FirstName</th>
									<th>LastName</th>
									<th>Postition</th>
									<th>Choose Edit</th>
								</tr>
							</thead>
							 <tfoot>
								 <tr>
								     <th>Username</th>
								     <th>FirstName</th>
								     <th>LastName</th>
								     <th>Postition</th>
								     <th>Choose Edit</th>
								   </tr>
							</tfoot>
								 
							<tbody>
							<%	DBuser dbuser = new DBuser();
								List<?> userList = null;
								Iterator<?> iterate = null;
								userList = dbuser.checkuser("",""); 
								if(userList != null){
								   iterate = userList.iterator();
								   while(iterate.hasNext()){
								   UserForm user = (UserForm) iterate.next();%>
								<tr>
									<td><%=user.getUsername() %></td>
									<td><%=user.getName() %></td>
									<td><%=user.getSurname() %></td>
									<td><%=user.getPosition_name() %></td>
									<td>
										<label class="input-control radio small-check">
											<input type="radio" name="rdo" value="<%=user.getUsername() %>" required>
											<span class="check"></span>
										</label>
									</td>
								</tr>
							<% } } %>
							</tbody>
						</table>
						<div class="row align-center">
							<button type="submit" name="submit" id="submit" class="button success"><span class="mif-pencil"></span> Edit</button>
						</div>
					</div>
				</div>
			</div>
		</div>
    </form>
	<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
  </body>
</html:html>
