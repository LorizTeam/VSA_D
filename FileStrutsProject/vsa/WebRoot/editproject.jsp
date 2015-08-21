<%@ include file="defaultimport.jsp" %>
<%@ page import="com.smict.struts.form.BusinessForm" %>
<html> 
	<head>
		<title>Choose Project For Edit</title>
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
		<script type="text/javascript">
			$(document).ready(function() {
			    $('#tb_choosepj').DataTable();
			} );
		</script>
		<html:form action="/editproject">
			<div class="grid container page-content">
				<div class="row cells12 align-left">
					<div class="cell"></div>
		           	<div class="cell debug colspan9">
		           		<div class="row align-center" ><h4>Choose Project For Edit</h4></div>
						<div class="row cell">
							<div class="cell">
								<div class="dataTable_wrapper">
									<table id="tb_choosepj" class="table table-striped table-bordered table-hover" cellspacing="0" width="100%">
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
								 
								        <tfoot>
								            <tr>
								                <th>Project No.</th>
								                <th>Business Name</th>
								                <th>Project Year</th>
								                <th>Project Name</th>
								                <th>Project Type name</th>
								                <th>Choose Edit</th>
								            </tr>
								        </tfoot>
								 
								        <tbody>
								        <%
								        	if(projectList != null){
								      			iter = projectList.iterator();
								        		while(iter.hasNext()){
								        			BusinessForm project = (BusinessForm) iter.next();
								        %>
								        	<tr>
								                <td><%=project.getPj_no() %></td>
								                <td><%=project.getBu_name() %></td>
								                <td><%=project.getPj_year().substring(1) %></td>
								                <td><%=project.getPj_name() %></td>
								                <td><%=project.getPj_typename() %></td>
								                <td>
								                	<label class="input-control radio small-check">
													    <input type="radio" name="rdo" value="<%=project.getPj_no() %>">
													    <span class="check"></span>
													</label>
												</td>
								            </tr>
								        <%
								        		}
								        	}
								         %>
								           
								        </tbody>
								    </table>
								    <div class="row align-center">
										<button type="submit" name="submit" id="submit" class="button success">Edit</button>
									</div>
							    </div>
							</div>
						</div>
					</div>
					<div class="cell"></div>
				</div>
			</div>
		</html:form>
		<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
		<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
		
	</body>
</html>

