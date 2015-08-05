<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="com.vsa.struts.form.MainForm"  %>
<%@ page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE HTML>
	<!-- Add CSS And JavaScript -->
	<link rel="stylesheet" href="metro-ui/build/css/metro.css">
	<link rel="stylesheet" href="metro-ui/build/css/metro-responsive.css">
	<link rel="stylesheet" href="metro-ui/build/css/metro-icons.css">
	<script type="text/javascript" src="metro-ui/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="metro-ui/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="metro-ui/build/js/metro.js"></script>
	<!-- Add CSS And JavaScript End -->
	</head>
	<body>
	<% if(session.getAttribute("username") == null)
			response.sendRedirect("login.jsp");
	%>
		<html:form action="/main">
		<div class="app-bar fixed-top darcula" data-role="appbar">
	        <a class="app-bar-element branding" href="index.jsp">VSA Group</a>
	        <span class="app-bar-divider"></span>
	        <ul class="app-bar-menu">
	            <li data-flexorderorigin="0" data-flexorder="1"><a href="main.jsp">Main Dashboard</a></li>
	            <li data-flexorderorigin="1" data-flexorder="2" class="">
	                <a href="" class="dropdown-toggle">Project</a>
	                <ul class="d-menu" data-role="dropdown" style="display: none;">
	                    <li><a href="">New project</a></li>
	                    <li class="divider"></li>
	                    <li><a href="">Edit Project</a></li>
	                </ul>
	            </li>
	            <li data-flexorderorigin="2" data-flexorder="1" >
	            	<a href="" class="dropdown-toggle">Managed User</a>
	            	<ul class="d-menu" data-role="dropdown" style="display: none;">
	                    <li><a href="">Create User</a></li>
	                    <li class="divider"></li>
	                    <li><a href="">Edit User</a></li>
	                </ul>
	            </li>
	        </ul>
	        <div class="app-bar-element place-right">
	        <a href="signout.do" class="app-bar-element branding"><span class="mif-switch"></span>&nbsp;&nbsp;Sign out</a>
	        </div>
            </div>
		</html:form>