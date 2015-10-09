<%@ include file="defaultimport.jsp" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<% if(session.getAttribute("username") == null)
			response.sendRedirect("login.jsp");
%>

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
  <!-- Preloader with Bootstrap Progress Bar -->
<div class='loader'>
  <div class='loader-container'>
    <h3><b>Please wait a moment while we are preparing the content !</b></h3>
    <div class='progress progress-striped active'>
      <div class='progress-bar progress-bar-color' id='bar' role='progressbar' style='width: 0%;'></div>
    </div>
  </div>
</div>
<body>
    	<div class="grid container upload-file ">
	    <div class="row cells12 align-left">
			<div class="cell"></div>
	        <div class="cell debug colspan10">
	        <form action="changepassword_byself.do" method="POST" data-role="validator" data-on-submit="submit" novalidate="novalidate" id="formchangepassword">
		        <div class="row">
		        Username&nbsp;&nbsp;<div class="input-control">
		        <% if (session.getAttribute("userList") != null) {
					List<?> userList = (List)session.getAttribute("userList");
						for (Iterator iter = userList.iterator(); iter.hasNext();) {
				  			UserForm detailUser = (UserForm) iter.next();
				 %>
				 		<input type="text" name="tb_cusernme" readonly value="<%=detailUser.getUsername() %>">
				 <%
				  		}
			  		}
			  	 %>
						</div>
		        </div>
		        <div class="row">
		        New Password&nbsp;&nbsp;<div class="input-control text success" data-role="input" >
							<input type="password" class="form-control text" name="tb_cpassword" id="tb_cpassword" placeholder="Password" 
							data-validate-func="minlength"
            				data-validate-arg="6"
            				data-validate-hint="This field must contains min 6 symbols!">
							<button class="button helper-button clear"><span class="mif-cross"></span></button>
						</div>
		        </div>
		        New Confirm Password&nbsp;&nbsp;<div class="input-control text success" data-role="input" id="div_confirmpassword" >
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
    
    $("form").submit(function(event){
    	if($("#tb_cpassword").val() != $("#tb_confirmpassword").val() ){
    		event.preventDefault();
    		$("#tb_confirmpassword").focus();
    		$("#div_confirmpassword").removeClass("success");
	    	$("#div_confirmpassword").addClass("error");
	    	$("#1234").fadeIn();
    	}
    });
});
</script>
<script>
	var progress = setInterval(function () {
    var $bar = $("#bar");

    if ($bar.width() >= 600) {
        clearInterval(progress);
    } else {
        $bar.width($bar.width() + 60);
    }
    $bar.text($bar.width() / 6 + "%");
    if ($bar.width() / 6 == 100){
      $bar.text("Still working ... " + $bar.width() / 6 + "%");
    }
}, 800);

$(window).load(function() {
  $("#bar").width(600);
  $(".loader").fadeOut();
});
</script>
  </body>
  
</html:html>
