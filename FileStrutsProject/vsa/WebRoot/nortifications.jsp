<%@ include file="defaultimport.jsp" %>
<%@page import="com.smict.struts.data.NortificationsData"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import = "com.smict.struts.form.NortificationsForm"%>
<%Iterator<?> iterate = null;
  List<?> Nortifications = null; %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <html:base />
    
    <title>Nortifications.jsp</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
		.app-bar .app-bar-element > .button {
		    margin-top: 0.5rem !important;
		}
	</style>
  </head>
  
  <body>
  <%@ include file="menubar.jsp" %>
  <%
  		NortificationsData nortiData = new NortificationsData();
  		iterate = nortiData.select_Nortifications_Header("","").iterator();
  		while(iterate.hasNext()){
  			NortificationsForm nortiForm = (NortificationsForm) iterate.next();
  	%>
  		<%=nortiForm.getNorti_id() %><br/>
  		<%=nortiForm.getNorti_from() %><br/>
  		<%=nortiForm.getNorti_email() %><br/>
  		<%=nortiForm.getNorti_message() %><br/>
  		<%=nortiForm.getNorti_s() %><br/>
  		<%=nortiForm.getNorti_sname() %><br/>
  		<%=nortiForm.getBu_no() %><br/>
  		<%=nortiForm.getBu_name() %><br/>
  		<%=nortiForm.getTimestamp() %><br/>
  		____________________________________<br/>
  	<%
  		}
   %>
  </body>
</html>
