<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>

<html> 
	<head>
		<title>JSP for CreateprojectForm form</title>
	</head>
	<body>
		<%@ page include="menubar.jsp" %>
		<html:form action="/createproject">
			<html:submit/><html:cancel/>
		</html:form>
	</body>
</html>

