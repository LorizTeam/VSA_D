<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="com.vsa.struts.form.DetailuserForm"  %>
<html> 
	<head>
		<title>JSP for CreateprojectForm form</title>
	</head>
	<body>
		<%@ include file="menubar.jsp" %>
		<html:form action="/createproject" enctype="multipart/form-data" method="POST">
		<div class="grid container upload-file">
			<div class="row cells3">
                    <div class="cell debug">
                    	Image 1 <div class="input-control file" data-role="input">
								    <html:file property="image1"></html:file>
								    <button class="button"><span class="mif-folder fg-red"></span></button>
								</div>
                    </div>
                    <div class="cell debug">
                    	Image 2 <div class="input-control file" data-role="input">
								    <html:file property="image2"></html:file>
								    <button class="button"><span class="mif-folder fg-red"></span></button>
								</div>
                    </div>
                    <div class="cell debug">
                    	Image 3 <div class="input-control file" data-role="input">
								    <html:file property="image3"></html:file>
								    <button class="button"><span class="mif-folder fg-red"></span></button>
								</div>
                    </div>
            </div>
            <div class="1">
            	<div class="cell debug">
            		<html:submit property="submit" styleClass="button success">Submit</html:submit>
            	</div>
            </div>
		</div>
		</html:form>
	</body>
</html>

