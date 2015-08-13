<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="com.smict.struts.form.UserForm"  %>
<%@ page import="com.smict.struts.form.CreateprojectForm"  %>
<%@ page import="java.util.*" %>
<html> 
	<head>
		<title>JSP for CreateprojectForm form</title>
	</head>
	<body>
		<%@ include file="menubar.jsp" %>
		<form action="/createproject" enctype="multipart/form-data" method="POST" >
		<div class="grid container upload-file ">
			<div class="row cells12 align-left">
					<div class="cell"></div>
                    <div class="cell debug colspan10">
                    	<div class="row" >
                    		Project Name <div class="input-control text success" data-role="input" >
							    <input type="text" class="form-control" name="tb_projectname" id="tb_projectname" placeholder="Project Name" required>
							    <button class="button helper-button clear"><span class="mif-cross"></span></button>
							</div>
							&emsp;
							Project Year <div class="input-control text success" data-role="input" >
							    <input type="text" class="form-control" name="tb_projectyear" id="tb_projectyear" placeholder="Project Year" required>
							    <button class="button helper-button clear"><span class="mif-cross"></span></button>
							</div>
                    	</div>
                    	<div class="row" >
                    		Select Your Business <div class="input-control select text success" >
							    <select>
							    	<% if (request.getAttribute("buList") != null) {
											List buList = (List)request.getAttribute("buList");
											for (Iterator iter = buList.iterator(); iter.hasNext();) {
									  			CreateprojectForm createproject = (CreateprojectForm) iter.next();
									 %>
							        <option value="<%=createproject.getBu_no() %>"><%=createproject.getBu_name() %></option>
							        <%
									  		}
			  							}
							    	 %>
							    </select>
							</div>
                    	</div>
                    	<div class="row">
							Image Heading <div class="input-control file text success" data-role="input">
								    <input type="file" name="img1">
								    <button class="button"><span class="mif-folder fg-red"></span></button>
							</div>
						</div>
						<div class="row">
							<button type="submit" name="submit" id="submit" class="button success">Create</button>
						</div>
                    </div>
                     <div class="cell"></div>
            </div>
		</div>
		</form>
	</body>
</html>

