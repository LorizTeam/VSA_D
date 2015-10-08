<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'testcss.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<!-- Add metro-ui CSS And JavaScript -->
	<link rel="stylesheet" href="metro-ui/build/css/metro.css">
	<link rel="stylesheet" href="metro-ui/build/css/metro-responsive.css">
	<link rel="stylesheet" href="metro-ui/build/css/metro-icons.css">
	<script type="text/javascript" src="metro-ui/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="metro-ui/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="metro-ui/build/js/metro.js"></script>
	<!-- Add metro-ui CSS And JavaScript End -->
  </head>
  
  <body>
    <div class="app-bar-element place-right">
<!--            <span class="dropdown-toggle"><span class="mif-cog"></span>Manuwat</span>-->
			<button class="button rounded dropdown-toggle"><span class="mif-cog mif-1x"></span>&nbsp;Manuwat</button>
            <div class="app-bar-drop-container padding10 place-right no-margin-top block-shadow fg-dark" data-role="dropdown" data-no-close="true" style="width: 220px; display: none;">
                <h1 class="text-light">Position</h1>
                <h1 class="text-light">Admin</h1>
                <a class="button" href="signout.do"><span class="mif-switch"></span>&nbsp;&nbsp;Signout</a>
            </div>
        </div>
  </body>
</html>
