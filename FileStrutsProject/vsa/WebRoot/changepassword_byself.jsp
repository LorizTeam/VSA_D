<%@ include file="defaultimport.jsp" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>Change Password</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div class="grid container upload-file ">
	    <div class="row cells12 align-left">
			<div class="cell"></div>
	        <div class="cell debug colspan10">
	        <html:form action="/createuser" method="POST">
		        <div class="row">
		        Name
		        </div>
		        <div class="row cells2" >
		        	<div class="cell">
		        		<div class="input-control text success" data-role="input" >
							<input type="text" class="form-control" name="tb_firstname" id="tb_name" placeholder="First" required>
							<button class="button helper-button clear"><span class="mif-cross"></span></button>
						</div>
		        	</div>
		        	<div class="cell">
		        		<div class="input-control text success" data-role="input" >
							<input type="text" class="form-control" name="tb_lastname" id="tb_lastname" placeholder="Last" required>
							<button class="button helper-button clear"><span class="mif-cross"></span></button>
						</div>
		        	</div>
		        </div>
	        </div>
	        <div class="cell"></div>
	    </div>
    </div>
  </body>
</html:html>
