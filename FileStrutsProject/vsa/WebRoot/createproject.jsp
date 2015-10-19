<%@ include file="defaultimport.jsp"%>
<%@ page import="com.smict.struts.form.BusinessForm"%>
<% if(session.getAttribute("username") == null){
		response.sendRedirect("login.jsp");
	}else{
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Upload File in this page</title>
		<style>
.app-bar .app-bar-element>.button {
	margin-top: 0.5rem !important;
}
</style>
	</head>
	<body class="bg-grayLighter">
			<%@ include file="cssinclude.jsp"%>
		<script type="text/javascript">
		$(document).ready(function() {
			$('#slc_bu').change(function() {
				$.ajax( {
					type : "post",
					url : "ajax_slc_pjtype.jsp", //this is my servlet
					data : {
						slc_bu : $('#slc_bu').val()
					},
					success : function(result) {
						$('#slc_typepj').html(result);
						//								alert(result);
				}
				});
			});
		
		});
		</script>
			<html:form action="/createproject" enctype="multipart/form-data" method="POST">				
				<div class="grid">
					<div class="row cells5">
						<div class="cell colspan3 offset1  window">
							<div class="window-caption  bg-cyan fg-white">
								<span class="window-caption-icon">
									<span class="mif-folder-upload"></span>
								</span>
								<span class="window-caption-title">Create Project</span>
								<a  href="main.jsp"><span class="btn-close "></span></a>
							</div>
							<div class="window-content grid">
							<div class="row">
								<div class="cell">
									<ul class="step-list">
										<li>
											<h3><small>Company</small></h3>
											<div class="input-control" style="width:100%;" >			
												<select name="slc_bu" id="slc_bu" data-popover-mode="click" data-role="popover" 
												data-popover-shadow="true" data-popover-position="top" 
												data-popover-text="Choose a company that will add albums ." data-popover-background="bg-cyan" 
												data-popover-color="fg-white"> 
													<option value=null>Select Company</option>
													<%
														if (request.getAttribute("buList") != null) {
																List buList = (List) request.getAttribute("buList");
																for (Iterator iter = buList.iterator(); iter.hasNext();) {
																	BusinessForm createproject = (BusinessForm) iter.next();
													%>
													<option value="<%=createproject.getBu_no()%>"><%=createproject.getBu_name()%></option>
													<%
														}
															}
													%>
												</select>
											</div>
											
										</li>
										<li>
											<h3><small>Project Type</small></h3>
											<div class="input-control "  style="width:100%;">
												<select name="slc_typepj" id="slc_typepj"data-popover-mode="click" data-role="popover" 
												data-popover-shadow="true" data-popover-position="top" 
												data-popover-text="Choose a project type." data-popover-background="bg-cyan" 
												data-popover-color="fg-white">
													<option value=null>Select Company First</option>
												</select>
											</div>
											
										</li>
										<li>
											<h3><small>Project Name</small></h3> 
											<div class="input-control text" style="width:100%;" data-role="input">
												<input type="text" name="tb_projectname" id="tb_projectname" 
												placeholder="Insert project name here."data-role="popover"
												 data-popover-position="top" 												 
												 data-popover-text="Add name of project" 
												 data-popover-background="bg-cyan" data-popover-color="fg-white" 
												 data-popover-mode="focus">
											</div>
											 
											
										</li>
										<li>
											<h3><small>Year</small></h3>
											<div class="input-control text" data-role="input">
												<input type="text" name="tb_projectyear" id="tb_projectyear" placeholder="Project Year" 
												data-role="popover"
												 data-popover-position="right" 												 
												 data-popover-text="Add year of project" 
												 data-popover-background="bg-cyan" data-popover-color="fg-white" 
												 data-popover-mode="focus">
											</div>
											
										</li>
										<li>
											<h3><small>Cover Image</small></h3>
											 <div class="input-control file" data-role="input">
										        <html:file property="uploadedFile" />
										        <button class="button text fg-cyan"><span class="mif-folder"></span></button>
										    </div>
										    <hr class="bg-cyan"/>
										</li>		
									</ul>
								</div>
							</div>
							<div class="row cells10">
								<div class="cell offset4 colspan2" >
									<button type="submit" name="submit"style="width:100%;" id="submit" class="button success">Create</button>
								</div>
							</div>
						
							</div>
						</div>
					</div>
				</div>
				
		</html:form>
	</body>
</html>
<%} %>