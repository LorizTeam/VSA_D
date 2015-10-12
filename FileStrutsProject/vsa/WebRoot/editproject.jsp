<%@ include file="defaultimport.jsp" %>
<%@ page import="com.smict.struts.form.BusinessForm" %>
<html> 
	<head>
		<title>Choose Project For Edit</title>
		<style>
			.app-bar .app-bar-element > .button {
			    margin-top: 0.5rem !important;
			}
		</style>
	</head>
	<body>
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"></link>
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css" type="text/css"></link>
	<link rel="stylesheet" href="css/jquery.dataTables.css" type="text/css"></link>
		<%@ include file="menubar.jsp" %>
		<%
			List<?> projectList = null;
			Iterator iter = null;
			if(request.getAttribute("projectList") != null){
				projectList = (List<?>) request.getAttribute("projectList");
			}
		 %>
		
		<html:form action="/editproject" method="POST">
		
		<div class="grid">
			<div class="row cells12">
				<div class="cell colspan10 offset1 window">
					<div class="window-caption  bg-cyan fg-white">
						<span class="window-caption-icon"><span class="mif-widgets"></span></span>
						<span class="window-caption-title">Edit Project</span>					
					</div>
					<div class="window-content grid">
						<div class="row align-center" ><h4>Choose Project For Edit</h4></div>						
							<table id="tb_choosepj" class="table  table-bordered table-hover" >
								<thead>
									<tr>
								        <th>Project No.</th>
								        <th>Business Name</th>
								        <th>Project Year</th>
								        <th>Project Name</th>
								        <th>Project Type name</th>
								        <th>Choose Edit</th>
								    </tr>
							    </thead>
								<tbody>
								<% if(projectList != null){
								    iter = projectList.iterator();
								    while(iter.hasNext()){
								        BusinessForm project = (BusinessForm) iter.next();%>
								        <tr>
								        	<td><%=project.getPj_no() %></td>
								        	<td><%=project.getBu_name() %></td>
								        	<td><%=project.getPj_year().substring(1) %></td>
								        	<td><%=project.getPj_name() %></td>
								        	<td><%=project.getPj_typename() %></td>
								        	<td>
								                <label class="input-control radio small-check">
									                <input type="radio" name="rdo" value="<%=project.getPj_no() %>" required>
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
		
		</html:form>
		<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
		<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$.extend( $.fn.dataTable.defaults, {
				    "searching": true,
				    "ordering": false
				} );
			    $('#tb_choosepj').DataTable();
			} );
		</script>
	</body>
</html>

