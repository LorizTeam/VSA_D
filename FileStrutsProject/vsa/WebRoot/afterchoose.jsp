<%@ include file="defaultimport.jsp" %>
<%@ page import="com.smict.struts.form.BusinessForm" %>
<html> 
	<head>
		<title>For Change Detail Project</title>
		<link rel="stylesheet" href="css/uikit.min.css"/>
		<script src="js/jquery.js"></script>
		<script src="js/uikit.min.js"></script>
		<script src="js/components/lightbox.js"></script>	
		<style>
			.app-bar .app-bar-element > .button {
			    margin-top: 0.5rem !important;
			}
		</style>
	</head>
	<body>
	<%@ include file="cssinclude.jsp"%>
	<% 
		
		Iterator<?> itertest = null;
		Iterator<?> iter=null;
		List<?> buList = null;
		List<?> slc_typepj=null;

		if (request.getAttribute("slc_typepj") != null) {
			 slc_typepj = (List<?>)request.getAttribute("slc_typepj");
		}
		
		if (request.getAttribute("buList") != null) {
			 buList = (List<?>)request.getAttribute("buList");
		}
		
		List<?> masterdetailList = null;
		if (request.getAttribute("Listforafterchoose") != null) {
			masterdetailList = (List<?>)request.getAttribute("Listforafterchoose");
		}
		
		List<?> detailList = masterdetailList;
		itertest = detailList.iterator();
		BusinessForm createproject1 = (BusinessForm) itertest.next();
		String alert = null;
		if(request.getAttribute("alert") != null){
			alert = (String)request.getAttribute("alert");
		}
	%>
	<script type="text/javascript">
		$(document).ready(function() {
            $('#slc_bu').change(function ()
            {
                $.ajax({
                    type: "post",
                    url: "ajax_slc_pjtype.jsp",
                    data: {slc_bu:$('#slc_bu').val()},
                    success: function(result){      
                            $('#slc_typepj').html(result);
                    }
                });
            });
        });
	</script>
		<html:form action="/afterchoose" enctype="multipart/form-data" method="POST">
		<div class="grid">
			<div class="row cells12">
				<div class="cell colspan10 offset1 window">
					<div class="window-caption  bg-cyan fg-white">
						<span class="window-caption-icon"><span class="mif-apps"></span></span>
						<span class="window-caption-title">Edit Project Detail</span>
						<a  href="editprojectStart.do"><span class="btn-close "></span></a>
					</div>
					<div class="window-content row">
					<div class="cell">
						<input type="hidden" name="pj_no" id="pj_no" value="<%=createproject1.getPj_no() %>"/>
						<div class="grid">
							<div class="row cells12">
								<div class="cell colspan10 offset1  window">
									<div class="window-caption  bg-brown fg-white">
										<span class="window-caption-icon"><span class="mif-cog"></span></span>
										<span class="window-caption-title">Edit Project Detail</span>
									</div>
									<div class="window-content row cells2">
										<div class="cell">
											<h3><small>Company</small></h3>
											<div class="input-control select "  style="width:100%;">
												<select name="slc_bu" id="slc_bu">
													<option value=null>Please Choose Business</option>
												    	<% if (buList != null) {
																for (iter = buList.iterator(); iter.hasNext();) {
														  			BusinessForm createproject = (BusinessForm) iter.next();
														  			if(createproject1.getBu_name().equals(createproject.getBu_name())){
														  			
														 %>
												 	<option value="<%=createproject.getBu_no() %>" selected><%=createproject.getBu_name() %></option>
												        <%
														}else{
														 %>
												 	<option value="<%=createproject.getBu_no() %>"><%=createproject.getBu_name() %></option>
												        <%
														}
														  		}
								  							}
												    	 %>
												</select>
											</div>
										</div>
										<div class="cell">
											<h3><small>Project Type</small></h3>
											<div class="input-control select"  style="width:100%;">
												 <select name="slc_typepj" id="slc_typepj">
												    	<option value=null>Please Choose Business First</option>
												    	<%
												    		if(request.getAttribute("slc_typepj") != null){
												    			iter = slc_typepj.iterator();
												    			while(iter.hasNext()){
												    				BusinessForm for_slc_typepj = (BusinessForm) iter.next();
												    				if(for_slc_typepj.getPj_typename().equals(createproject1.getPj_typename())){
												    	%>
												    					<option value="<%=for_slc_typepj.getPj_typeno()%>" selected><%=for_slc_typepj.getPj_typename()%></option>
												    	<%
												    				}else{
												    	%>
												    					<option value="<%=for_slc_typepj.getPj_typeno()%>"><%=for_slc_typepj.getPj_typename()%></option>
												    	<%
												    				}
												    	
												    			}
												    		}
												    	 %>
												    	
												   </select>
											</div>
										</div>
										<div class="row cells2">
											<div class="cell">
												<h3><small>Project Name</small></h3>
												<div class="input-control" data-role="input"  style="width:100%;" >
													<input type="text" class="form-control" name="tb_projectname" id="tb_projectname" placeholder="Project Name" value="<%=createproject1.getPj_name() %>" required>
													<button class="button helper-button clear"><span class="mif-cross"></span></button>
												</div>
											</div>
											<div class="cell">
												<h3><small>Project Year</small></h3>	
												<div class="input-control" data-role="input"  style="width:100%;" >
													<input type="text" class="form-control" name="tb_projectyear" id="tb_projectyear" placeholder="Project Year" value="<%=createproject1.getPj_year() %>" required>
													<button class="button helper-button clear"><span class="mif-cross"></span></button>
												</div>
											</div>
										</div>
											<hr class="bg-brown"/>
										<div class="row align-center">
											<button type="submit" name="submit" id="submit" class="button success"><span class="mif-floppy-disk"></span> SAVE</button>
										</div>
									</div>
								</div>
							</div>
							<div class="row cells12">
								<div class="cell colspan4 offset1  window">
									<div class="window-caption  bg-brown fg-white">
										<span class="window-caption-icon"><span class="mif-upload"></span></span>
										<span class="window-caption-title">Upload Image</span>
									</div>
									<div class="window-content">
									<h2><small>Select Image</small></h2>
									<ul class="step-list">
										<li>
											<div class="input-control file" data-role="input" style="width:100%;">
												<html:file property="uploadedFile1"/>
												<button class="button text fg-brown"><span class="mif-folder"></span></button>
											</div>
										</li>
										<li>
											<div class="input-control file" data-role="input" style="width:100%;">
												<html:file property="uploadedFile2"/>
												<button class="button text fg-brown"><span class="mif-folder"></span></button>
											</div>
										</li>
										<li>
											<div class="input-control file" data-role="input" style="width:100%;">
												<html:file property="uploadedFile3"/>
												<button class="button text fg-brown"><span class="mif-folder"></span></button>
											</div>
										</li>
										<li>
											<div class="input-control file" data-role="input" style="width:100%;">
												<html:file property="uploadedFile4"/>
												<button class="button text fg-brown"><span class="mif-folder"></span></button>
											</div>
										</li>
									</ul>
										<div class="row align-center">
										<button type="submit" name="upload" id="upload" class="button success"><span class="mif-upload"></span> upload</button>
									</div>
									<hr class="bg-brown"/>
									</div>
								</div>
								<div class="cell colspan6  window">
									<div class="window-caption  bg-brown fg-white">
										<span class="window-caption-icon"><span class="mif-images"></span></span>
										<span class="window-caption-title">Edit Gallery Picture</span>
									</div>
									<div class="window-content row cells2">
									<%if(alert != null){%>
					           			<div class="row align-center" ><span class="tag alert"><%=alert %></span></div>
					           		<%}%>
					           		<div class="row align-center">
					           			<table class="table striped hovered cell-hovered border bordered align-center">
					           				<tr>
					           					<th>Main Pic</th>
					           					<th>Picture</th>           					
					           					<th>(Show/Hidden)</th>
					           					<th>Delete</th>
					           				</tr>
					           				<%	List<?> detailList1 = masterdetailList;
					           					itertest = detailList1.iterator();
					           					int i = 0;
					           					while(itertest.hasNext()){
					           						BusinessForm createproject2 = (BusinessForm) itertest.next();%>
					           				<tr>   					
					           					<td>
					           						<label class="input-control radio small-check">
					           						<%if(createproject2.getPic_typename().equals("Head")){%>
					           							<input type="radio" name="rdo" value="<%=createproject2.getPic_path() %>" checked>
					           						<%}else{%>
					           							<input type="radio" name="rdo" value="<%=createproject2.getPic_path() %>">
					           						<%}%>
													    <span class="check"></span>
													</label>
					           					</td>
					           					<td>
					           						<div class="image-container image-format-sd" style="width: 100px;height: 100px;">
				                            			<a href="<%=createproject2.getPic_path() %>" data-uk-lightbox class="frame"><img src="<%=createproject2.getPic_path() %>"></a>
				                            			<input type="hidden" name="picpath" id="picpath" value="<%=createproject2.getPic_path() %>"/>
				                            
				                        			</div>
				                        		</td>
					           					<td>
					           						<label class="switch">
					           						<%if(createproject2.getPicstatus_name().equals("enable")){%>
					           								<input type="checkbox" name="chk_picstatus<%=i %>" checked>
					           						<%}else{%>
					           								<input type="checkbox" name="chk_picstatus<%=i %>">
					           						<%}%>
													    <span class="check"></span>
													</label>
					           					</td>
					           					<td>
					           						<label class="input-control checkbox">
													    <input type="checkbox" name="chkbtn<%=i %>">
													    <span class="check"></span>
													</label>
					           					</td>
					           				</tr>
					           				<%i++;
					           				}
					           				%>
					           			</table>
					           		</div>
					           		<div class="row align-center">
										<button type="submit" name="submit" id="submit" class="button success"><span class="mif-floppy-disk"></span> SAVE</button>
									</div>
									
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>
				</div>
			</div>
		</div>
		
	

		<div class="grid container page-content">
			<div class="row cells12 align-left">
				<div class="cell"></div>
	           	<div class="cell colspan10">

	          	</div>
	          	<div class="cell"></div>
			</div>
		</div>
		</html:form>
	</body>
</html>

