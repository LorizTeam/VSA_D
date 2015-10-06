<%@ include file="defaultimport.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html:html lang="true">
  <head>
    <html:base />
    
    <title>createuser.jsp</title>
	<style>
		.app-bar .app-bar-element > .button {
		    margin-top: 0.5rem !important;
		}
	</style>
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
    <%@ include file="menubar.jsp" %>
    <div class="grid container upload-file ">
    <div class="row cells12 align-left">
		<div class="cell"></div>
        <div class="cell debug colspan10">
        <div class="row">
        Name
        </div>
        <div class="row cells2" >
        	<div class="cell">
        			<div class="input-control text success" data-role="input" >
							<input type="text" class="form-control" name="tb_name" id="tb_name" placeholder="First" required>
							<button class="button helper-button clear"><span class="mif-cross"></span></button>
						</div>
        	</div>
        	<div class="cell">
        		
        	</div>
        </div>            
        </div>
        <div class="cell"></div>
    </div>
    
  </body>
</html:html>
