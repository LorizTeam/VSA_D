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
	<link rel="stylesheet" href="wvscss/uikit.min.css"/>
	<style>
		.app-bar .app-bar-element > .button {
		    margin-top: 0.5rem !important;
		}
	</style>
  </head>
  
  <body>&nbsp; 
  <%@ include file="menubar.jsp" %> 
  	<div  id="fillnoti"> 	
  		<div class="uk-grid " >	 	
			<div class="uk-width-9-10 uk-grid uk-container-center" >						
				<ul  class="uk-tab uk-width-1-3" data-uk-tab >
					<li class="uk-active" data-uk-filter=""><a href="">ทั้งหมด</a></li>
					<li><a id="vsa" href="">VSa</a></li>
					<li><a id="wvs" href="">WVS</a></li>		
					<li><a id="vsct" href="">VSCT</a></li>
					<li><a id="plz" href="">Palidzen</a></li>		
				</ul>
			</div>
		</div>		
  		<div class="uk-grid "style="margin-top:5px;">	 	
			<div class="uk-width-9-10 uk-grid uk-container-center">						
				<ul class="uk-subnav uk-subnav-pill uk-width-1-3">
					<li class="uk-active" id="all" data-uk-filter="" ><a href="">ทั้งหมด</a></li>
					<li id="unread" data-uk-filter="s1"><a href="">ยังไม่อ่าน</a></li>
					<li id="read" data-uk-filter="s0"><a href="">อ่านแล้ว</a></li>				
				</ul>
			</div>
		</div>
		
	</div>
 	 <div class="uk-grid ">	 	
		<div class="uk-width-9-10 uk-grid uk-container-center">				
			<div class="uk-width-medium-1-3" style="overflow:auto;height:450px;" data-uk-grid="{controls: '#fillnoti',gutter:0.1}">
  <%	NortificationsData nortiData = new NortificationsData();
  		iterate = nortiData.select_Nortifications_Header("","").iterator();
  		while(iterate.hasNext()){
  			NortificationsForm nortiForm = (NortificationsForm) iterate.next();
  %>
  				<a href="#" data-uk-filter="s<%=nortiForm.getNorti_s()%>" class="uk-panel uk-panel-box uk-width-1-1" style="margin:0 0 5px;">
  					<div class="uk-grid">
	    				<div class="uk-width-1-2">
	    					<h5><small>ลำดับที่ <%=nortiForm.getNorti_id() %> (<%=nortiForm.getBu_name() %>)</small></h5>
	    				</div>
	    				<div class="uk-width-1-2">
	    					<h5><small><span class="mif-alarm"></span><%=nortiForm.getTimestamp() %></small></h5>	 
	    				</div>   				
	    			</div>
  					
  					<% if(nortiForm.getNorti_s().equals("1")){ %>
					<div class="uk-panel-badge uk-badge uk-badge-danger"><%=nortiForm.getNorti_sname() %> !</div>
					<%}else{%>
					<div class="uk-panel-badge uk-badge uk-badge-success"><%=nortiForm.getNorti_sname() %> !</div>
					<%} %>
					
					<p><%=nortiForm.getNorti_message() %></p>		 			
	    			<h3 class="uk-panel-title"><small>
	    				<span class="mif-user"></span> : <b><%=nortiForm.getNorti_from() %></b>	
	    				<span class="mif-envelop"></span> :<b><%=nortiForm.getNorti_email() %></b>   			
	    			</small></h3>
	    			<hr/>   			
				</a>	 	
	
  		
  	<%
  		}
   %>
   			</div>
				
				<div class="uk-width-medium-2-3">
					<!-- use message detail   nortiForm.getBu_no() -->



					<!-- use message detail -->
				</div>
				
				
			</div>
		</div>   


   <script src="wvsjs/jquery.js"></script>
   <script src="wvsjs/uikit.min.js"></script>
   <script src="wvsjs/components/grid.min.js"></script>
  
  </body>
</html>
