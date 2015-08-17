<%@ include file="defaultimport.jsp" %>
<%@ page import="com.smict.struts.form.BusinessForm" %>
<html> 
	<head>
		<title>For Change Detail Project</title>
	</head>
	<body>
	<%@ include file="menubar.jsp" %>
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
								    	<% if (request.getAttribute("buList") != null) {
												List buList = (List)request.getAttribute("buList");
												for (Iterator iter = buList.iterator(); iter.hasNext();) {
										  			BusinessForm createproject = (BusinessForm) iter.next();
										 %>
								        <option value="<%=createproject.getBu_no() %>"><%=createproject.getBu_name() %></option>
								        <%
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
								    </select>
								</div>
                    		</div>
                    </div>
	           		<div class="row cells2">
	           			<div class="cell">
	           			
	           				Project Name <div class="input-control text success" data-role="input" >
											    <input type="text" class="form-control" name="tb_projectname" id="tb_projectname" placeholder="Project Name" required>
											    <button class="button helper-button clear"><span class="mif-cross"></span></button>
											</div>
						</div>
						<div class="cell" >
							Project Year <div class="input-control text success" data-role="input" >
											<input type="text" class="form-control" name="tb_projectyear" id="tb_projectyear" placeholder="Project Year" required>
											<button class="button helper-button clear"><span class="mif-cross"></span></button>
										</div>
										<!--  -->
                    	</div>
	           		</div>
	           		<div class="row align-center">
	           			<table class="table striped hovered cell-hovered border bordered">
	           				<tr>
	           					<th>Image</th>
	           					<th>Select Head</th>
	           				</tr>
	           				<tr>
	           					<td>
	           						<div class="image-container image-format-sd" style="width: 150px;height: 150px;">
                            			<div class="frame"><img src="upload/AKATSUKI 13/2015-08-17 16-47-35.jpg"></div>
                        			</div>
                        		</td>
	           					<td>
	           						<label class="input-control radio small-check">
									    <input type="radio" name="rdo" value="upload/AKATSUKI 13/2015-08-17 16-47-35.jpg">
									    <span class="check"></span>
									</label>
	           					</td>
	           				</tr>
	           				<tr>
	           					<td>
	           						<div class="image-container image-format-sd" style="width: 150px;height: 150px;" >
                            			<div class="frame"><img  src="upload/AKATSUKI 12/2015-08-17 16-31-59.jpg"></div>
                        			</div>
                        		</td>
	           					<td>
	           						<label class="input-control radio small-check">
									    <input type="radio" name="rdo" value="upload/AKATSUKI 12/2015-08-17 16-31-59.jpg">
									    <span class="check"></span>
									</label>
	           					</td>
	           				</tr>
	           				<tr>
	           					<td>Image</td>
	           					<td>Select Head</td>
	           				</tr>
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

