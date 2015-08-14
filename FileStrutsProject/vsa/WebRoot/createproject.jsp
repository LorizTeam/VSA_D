<%@ include file="defaultimport.jsp" %>
<%@ page import="com.smict.struts.form.BusinessForm"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload File in this page</title>

</head>
<body>
	<%@ include file="menubar.jsp" %>
	<script type="text/javascript">
		$(document).ready(function() {
            $('#slc_bu').change(function ()
            {
                $.ajax({
                    type: "post",
                    url: "ajax_slc_pjtype.jsp", //this is my servlet
                    data: {slc_bu:$('#slc_bu').val()},
                    success: function(result){      
                            $('#slc_typepj').html(result);
//								alert(result);
                    }
                });
            });

        });
	</script>
	<html:form action="/createproject" enctype="multipart/form-data" method="POST">
		<div class="grid container upload-file ">
			<div class="row cells12 align-left">
					<div class="cell"></div>
                    <div class="cell debug colspan10">
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
                    	<div class="row cells2" >
                    		<div class="cell" >
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
                    		</div>
                    	</div>
                    	<div class="row">
							Select Image : <div class="input-control file text success" data-role="input">
												<html:file property="uploadedFile"/><br/>
												<button class="button"><span class="mif-folder fg-red"></span></button>
											</div>
						</div>
						<div class="row align-center">
							<button type="submit" name="submit" id="submit" class="button success">Create</button>
						</div>
                    </div>
                     <div class="cell"></div>
            </div>
		</div>
	</html:form>
</body>
</html>
