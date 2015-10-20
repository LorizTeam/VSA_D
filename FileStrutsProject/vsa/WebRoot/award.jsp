
<%@page import="com.smict.struts.data.DBaward"%><%@ include file="defaultimport.jsp"%>
<%@ page import="com.smict.struts.form.BusinessForm"%>
<%@ page import="com.smict.struts.form.AwardForm"%>
<%@ page import="com.smict.struts.data.DBProject"%>
<% if(session.getAttribute("username") == null){
			response.sendRedirect("login.jsp");
	}else{
%>
<html> 
	<head>
		<title>Award</title>
		<link rel="stylesheet" href="css/uikit.min.css"/>
		<script src="js/jquery.js"></script>
		<script src="js/uikit.min.js"></script>
		<script src="js/components/lightbox.js"></script>
	</head>
	<body>
		<%@ include file="cssinclude.jsp"%>
		<html:form action="/award" enctype="multipart/form-data" method="POST">
			<div class="grid">
			<div class="row cells12">
				<div class="cell colspan10 offset1 window">
					<div class="window-caption  bg-cyan fg-white">
						<span class="window-caption-icon"><span class="mif-apps"></span></span>
						<span class="window-caption-title">Award</span>
						<a  href="main.jsp"><span class="btn-close "></span></a>
					</div>
					<div class="window-content row">
						<div class="cell">
							<div class="grid">
								<!-- Upload Start -->
								<div class="row cells12">
									<div class="cell colspan10 offset1  window">
										<div class="window-caption  bg-brown fg-white">
											<span class="window-caption-icon"><span class="mif-cog"></span></span>
											<span class="window-caption-title">Upload images award</span>
										</div>
										<div class="window-content row cells2">
											<div class ="cell">
												<h3><small>Image award</small></h3>
												<div class="input-control file" style="width:100%;" data-role="input">
													<html:file property="uploadedFile" />
													<button class="button text fg-cyan"><span class="mif-folder"></span></button>
												</div>
											</div>
											<div class ="cell">
												<h3><small>Name award</small></h3>
												<div class="input-control text" style="width:100%;" data-role="input">
												<input type="text" name="tb_awardname" id="tb_awardname" 
												placeholder="Insert award name here" data-role="popover"
												 data-popover-position="top" 												 
												 data-popover-text="Add name of award" 
												 data-popover-background="bg-cyan" data-popover-color="fg-white" 
												 data-popover-mode="focus">
												</div>
											</div>
											
										</div>
										<div class="row align-center">
												<h3><small>Company</small></h3>
											<div class="input-control" style="width:100%;" >			
												<select name="slc_bu" id="slc_bu" data-popover-mode="click" data-role="popover" 
												data-popover-shadow="true" data-popover-position="top" 
												data-popover-text="Choose a company that will add albums ." data-popover-background="bg-cyan" 
												data-popover-color="fg-white"> 
													<option value=null>Select Company</option>
													<%	DBProject dbproject = new DBProject();
														List buList = (List) dbproject.bu_nameList();
														for (Iterator iter = buList.iterator(); iter.hasNext();) {
															BusinessForm createproject = (BusinessForm) iter.next();
													%>
													<option value="<%=createproject.getBu_no()%>"><%=createproject.getBu_name()%></option>
													<%
														}
													%>
												</select>
											</div>
										</div>
										
										<div class="row align-center">
											<button type="submit" name="upload" id="upload" class="button success"><span class="mif-floppy-disk"></span> SAVE</button>
										</div>
										<hr class="bg-brown"/>
									</div>
								</div>
								</html:form>
								<!-- Upload END -->
								<!-- Delete Start -->
								<html:form action="/award">
								<div class="row cells12">
									<div class="cell colspan10 offset1  window">
										<div class="window-caption  bg-brown fg-white">
											<span class="window-caption-icon"><span class="mif-cog"></span></span>
											<span class="window-caption-title">Delete images award</span>
										</div>
										<div class="window-content row cells2">
											<%
												if(request.getAttribute("alert") != null){
												String alert = (String)request.getAttribute("alert");
											%>
												<div class="row align-center" ><span class="tag alert"><%=alert %></span></div>
											<%
												}
											 %>
											<table class="table striped hovered cell-hovered border bordered align-center"> 
												<tr>
													<th>Picture</th>
													<th>Business</th>
													<th>Award name</th>
													<th>Delete</th>
												</tr>
												
												<%
													DBaward dbaward = new DBaward(); 
													List awardList = dbaward.select_award("","");
													Iterator iterate = awardList.iterator();
													int i = 0;
													while(iterate.hasNext()){
														AwardForm awardForm = (AwardForm) iterate.next();
												%>
													<tr>
													<td><div class="image-container image-format-sd" style="width: 100px;height: 100px;">
					                            			<a href="<%=awardForm.getAwardpicpath() %>" data-uk-lightbox class="frame"><img src="<%=awardForm.getAwardpicpath() %>"></a>
					                            			<input type="hidden" name="picpath" id="picpath" value="<%=awardForm.getAwardpicpath() %>"/>
					                            
					                        			</div>
					                        		</td>
													<td><%=awardForm.getBuname() %></td>
													<td><%=awardForm.getAwardname() %></td>
													<td>
														<label class="input-control checkbox">
														    <input type="checkbox" name="chkbtn<%=i %>">
														    <span class="check"></span>
														</label>
													</td>
													</tr>
												<%	i++;
													}
												 %>
												
											</table>
										</div>
										
										<div class="row align-center">
											<button type="submit" name="delete" id="delete" class="button danger"><span class="mif-bin"></span> Delete</button>
										</div>
										<hr class="bg-brown"/>
									</div>
								</div>
								
								<!-- Delete END -->
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
