<%@ include file="defaultimport.jsp" %>
<%@ page import="com.smict.struts.form.BusinessForm" %>
<html> 
	<head>
		<title>For Change Detail Project</title>
	</head>
	<body>
	<%@ include file="menubar.jsp" %>
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
		<input type="hidden" name="pj_no" id="pj_no" value="<%=createproject1.getPj_no() %>"/>
		<div class="grid container page-content">
			<div class="row cells12 align-left">
				<div class="cell"></div>
	           	<div class="cell debug colspan9">
	           		<div class="row align-center" ><h4>Upload Image</h4></div>
					<div class="row cells2">
	           			<div class="cell">
	           				Select Image 1 : <div class="input-control file text success" data-role="input">
												<html:file property="uploadedFile1"/><br/>
												<button class="button"><span class="mif-folder fg-red"></span></button>
											</div>
	           			</div>
	           			<div class="cell">
	           				Select Image 2 : <div class="input-control file text success" data-role="input">
												<html:file property="uploadedFile2"/><br/>
												<button class="button"><span class="mif-folder fg-red"></span></button>
											</div>
	           			</div>
	           		</div>
	           		<div class="row cells2">
	           			<div class="cell">
	           				Select Image 3 : <div class="input-control file text success" data-role="input">
												<html:file property="uploadedFile3"/><br/>
												<button class="button"><span class="mif-folder fg-red"></span></button>
											</div>
	           			</div>
	           			<div class="cell">
	           				Select Image 4 : <div class="input-control file text success" data-role="input">
												<html:file property="uploadedFile4"/><br/>
												<button class="button"><span class="mif-folder fg-red"></span></button>
											</div>
	           			</div>
	           		</div>
	           		<div class="row align-center">
						<button type="submit" name="upload" id="upload" class="button success">upload</button>
					</div>
	           	</div>
	          	<div class="cell"></div>
			</div>
		</div>
		<div class="grid container page-content">
			<div class="row cells12 align-left">
				<div class="cell"></div>
	           	<div class="cell debug colspan9">
	           		<div class="row align-center" ><h4>Edit Project Details</h4></div>
	           		<div class="row cells2" >
                    		<div class="cell">
	                    		Select Your Business <div class="input-control select text success" >
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
                    			Select Project Type <div class="input-control select text success" >
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
                    </div>
	           		<div class="row cells2">
	           			<div class="cell">
	           			
	           				Project Name <div class="input-control text success" data-role="input" >
											    <input type="text" class="form-control" name="tb_projectname" id="tb_projectname" placeholder="Project Name" value="<%=createproject1.getPj_name() %>" required>
											    <button class="button helper-button clear"><span class="mif-cross"></span></button>
											</div>
						</div>
						<div class="cell" >
							Project Year <div class="input-control text success" data-role="input" >
											<input type="text" class="form-control" name="tb_projectyear" id="tb_projectyear" placeholder="Project Year" value="<%=createproject1.getPj_year().substring(1) %>" required>
											<button class="button helper-button clear"><span class="mif-cross"></span></button>
										</div>
										<!--  -->
                    	</div>
	           		</div>
	           		<div class="row align-center">
	           			<table class="table striped hovered cell-hovered border bordered align-center">
	           				<tr>
	           					<th>Image</th>
	           					<th>Select Head</th>
	           					<th>Picture Staus</th>
	           				</tr>
	           				<%	
	           					List<?> detailList1 = masterdetailList;
	           					itertest = detailList1.iterator();
	           					int i = 0;
	           					while(itertest.hasNext()){
	           						BusinessForm createproject2 = (BusinessForm) itertest.next();
	           				%>
	           				<tr>
	           					<td>
	           						<div class="image-container image-format-sd" style="width: 150px;height: 150px;">
                            			<div class="frame"><img src="<%=createproject2.getPic_path() %>"></div>
                            			<input type="hidden" name="picpath" id="picpath" value="<%=createproject2.getPic_path() %>"/>
                        			</div>
                        		</td>
	           					<td>
	           						<label class="input-control radio small-check">
	           						<%
	           							if(createproject2.getPic_typename().equals("Head")){
	           						%>
	           								<input type="radio" name="rdo" value="<%=createproject2.getPic_path() %>" checked>
	           						<%
	           							}else{
	           						%>
	           								<input type="radio" name="rdo" value="<%=createproject2.getPic_path() %>">
	           						<%
	           							}
	           						 %>
									    
									    <span class="check"></span>
									</label>
	           					</td>
	           					<td>
	           						<label class="switch">
	           						<%
	           							if(createproject2.getPicstatus_name().equals("enable")){
	           							
	           							}
	           						 %>
									    <input type="checkbox" name="chk_picstatus<%=i %>">
									    <span class="check"></span>
									</label>
	           					</td>
	           				</tr>
	           				<%
	           					i++;
	           					}
	           				%>
	           			</table>
	           		</div>
	           		<div class="row align-center">
						<button type="submit" name="submit" id="submit" class="button success">Submit</button>
					</div>
	          	</div>
	          	<div class="cell"></div>
	          	
			</div>
			
		</div>
		
			
		</html:form>
	</body>
</html>

