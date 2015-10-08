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
		<!-- Add metro-ui CSS And JavaScript -->
	<link rel="stylesheet" href="metro-ui/build/css/metro.css" type="text/css"></link>
	<link rel="stylesheet" href="metro-ui/build/css/metro-responsive.css" type="text/css"></link>
	<link rel="stylesheet" href="metro-ui/build/css/metro-icons.css" type="text/css"></link>
	<link rel="stylesheet" href="css/mycss.css" type="text/css"></link>
	
	<script type="text/javascript" src="metro-ui/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="metro-ui/build/js/metro.js"></script>
	
	<!-- Add metro-ui CSS And JavaScript End -->
  </head>
  
  <body>
    <div class="grid container upload-file ">
	    <div class="row cells12 align-left">
			<div class="cell"></div>
	        <div class="cell debug colspan10">
	        <form action="createprojectStart.do" method="POST" data-role="validator" data-on-submit="submit" novalidate="novalidate" id="formchangepassword">
		        <div class="row">
		        Username&nbsp;&nbsp;<div class="input-control text success" data-role="input" >
							<input type="text" class="form-control" name="tb_cusernme" id="tb_cusernme" placeholder="Username"
							data-validate-hint="This field can not be empty" data-validate-func="required"">
							<button class="button helper-button clear"><span class="mif-cross"></span></button>
						</div>
		        </div>
		        <div class="row">
		        Password&nbsp;&nbsp;<div class="input-control text success" data-role="input" >
							<input type="password" class="form-control" name="tb_cpassword" id="tb_cpassword" placeholder="Password" required>
							<button class="button helper-button clear"><span class="mif-cross"></span></button>
						</div>
		        </div>
		        Confirm Password&nbsp;&nbsp;<div class="input-control text success" data-role="input" id="div_confirmpassword" >
							<input type="password" class="form-control" name="tb_confirmpassword" id="tb_confirmpassword" placeholder="Confirm Password" required>
							<button class="button helper-button clear"><span class="mif-cross"></span></button>
							<span style="display:none" id="1234">
							<span style="color:red">Password Not Match</span>
							</span>
						</div>
				<div class="row align-center">
					<input type="submit" name="submit" id="submit" class="button success" value="Submit"/>
				</div>
			</form>
		    </div>
		    
		    
	        </div>
	        <div class="cell"></div>
	    </div>
<script>
$(document).ready(function(){
	
    $("#tb_confirmpassword").keyup(function(){
    	$("#1234").fadeIn();
	    var tb_password = $("#tb_cpassword").val(),tb_confirmpassword = $("#tb_confirmpassword").val();
	    $("#div_confirmpassword").removeClass("success");
	    $("#div_confirmpassword").addClass("error");
	    if(tb_password == tb_confirmpassword){
	    	$("#1234").fadeOut();
	    	$("#div_confirmpassword").removeClass("error");
	    	$("#div_confirmpassword").addClass("success");
	    }
    });
});
</script>
<script>
$(document).ready(function(){    
    $("form").submit(function(event){
    	if($("#tb_cpassword").val() != $("#tb_confirmpassword").val() ){
    		event.preventDefault();
    		$("#tb_confirmpassword").focus();
    	}
    });
});
</script>
  </body>
</html:html>
