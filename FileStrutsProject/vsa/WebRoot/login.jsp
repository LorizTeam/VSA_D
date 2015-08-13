<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ page import="com.vsa.struts.form.LoginForm" %>
<!DOCTYPE html>
<html> 
	<head>
		<title>Login Page</title>
	</head>
	<body>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Frederick Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- Add CSS -->
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="metro-ui/build/css/metro-icons.css">
	<!-- Add CSS End -->
	<!-- Add JavaScript -->
	<script src="js/components/lightbox.js"></script>
	<script src="js/jquery.js"></script>
   	<script src="js/uikit.min.js"></script>
	<script src="js/components/grid.min.js"></script>
	<script src="js/responsiveslides.min.js"></script>
	<script>
				$("span.menu").click(function(){
					$(".top-nav ul").slideToggle("slow" , function(){
					});
				});
	</script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
	</script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script src="js/bootstrap.js"></script>
	<!-- Add JavaScript End -->
	<div class="container">
		<div class="row"> </div>
		<div class="row"> </div>
		<div class="row"> </div>
		<div class="row"> </div>
		<div class="row"> </div>
	</div>
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<html:form action="/login">
			<div class="form-signing">
				<h2 class="form-signing-heading text-center">Please Sign in . .</h2>
				<div class="row"></div>
				<input type="text" id="InputUsername" name="InputUsername" class="form-control" placeholder ="Username"/>
				<input type="password" id="InputPassword" name="InputPassword" class="form-control" placeholder ="Password"/>
				<div class="col-xs-4 col-md-4"></div>
				<button type="submit" class="btn btn-primary form-control">Sign in</button>
				<%if(request.getAttribute("alert") != null){%>
				<div class="alert alert-success text-center" role="alert"><span class="mif-warning mif-ani-flash mif-ani-fast fg-red mif-2x"></span>&nbsp;&nbsp;&nbsp;Username or Password Incorrect</div>
				<%} %>
			</div>
			</html:form>
		</div>
		<div class="col-md-4"></div>
	</body>
</html>