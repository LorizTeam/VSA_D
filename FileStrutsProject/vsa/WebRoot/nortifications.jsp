<%@ include file="defaultimport.jsp" %>
<%@page import="com.smict.struts.data.NortificationsData"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import = "com.smict.struts.form.NortificationsForm"%>
<%@page import="org.json.simple.JSONObject"%>
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
	<%
		
	 %>
	
  </head>
  
  <body>&nbsp;<%@ include file="menubar.jsp" %> 
	<div class="uk-grid " >	 	
			<div class="uk-width-9-10 uk-grid uk-container-center" >						
				<ul  class="uk-tab uk-width-1-3"  >
					<li class="business"><a href="">ทุกบริษัท</a></li>
					<li><a class="business" id="vsa" href="nortifications.jsp?bu_no=1">VS<span class="fg-red">a</span></a></li>
					<li><a class="business" id="wvs" href="nortifications.jsp?bu_no=2">WVS</a></li>		
					<li><a class="business" id="vsct" href="nortifications.jsp?bu_no=3">VSCT</a></li>
					<li><a class="business" id="plz" href="nortifications.jsp?bu_no=4">Palidzen</a></li>		
				</ul>
			</div>
	</div>	
  	<div  id="fillnoti"> 				
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
			<div id="h_norti" class="uk-width-medium-1-3" style="overflow:auto;min-height:450px;max-height:450px;" data-uk-grid="{controls: '#fillnoti',gutter:0.1}">
  <%	NortificationsData nortiData = new NortificationsData();
  		if(request.getParameter("bu_no") != null){
  			iterate = nortiData.select_Nortifications_Header("",request.getParameter("bu_no")).iterator();
  		}else{
  			iterate = nortiData.select_Nortifications_Header("","").iterator();
  		}
  		
  		while(iterate.hasNext()){
  			NortificationsForm nortiForm = (NortificationsForm) iterate.next();
  %>
  				<a onclick="Shownorti(<%=nortiForm.getNorti_id() %>)" data-uk-filter="s<%=nortiForm.getNorti_s()%>" class="uk-panel uk-panel-box uk-width-1-1 forclickdetail" style="margin:0 0 5px;">
  					<div class="uk-grid">
	    				<div class="uk-width-1-2">
	    					<h5><small>ลำดับที่ <%=nortiForm.getNorti_id() %> (<%=nortiForm.getBu_name() %>)</small></h5>
	    				</div>
	    				<div class="uk-width-1-2">
	    					<h5><small><span class="mif-alarm"></span><%=nortiForm.getTimestamp() %></small></h5>	 
	    				</div>   				
	    			</div>
  					
  					<% if(nortiForm.getNorti_s().equals("1")){ %>
					<div id="status" class="uk-panel-badge uk-badge uk-badge-danger"><%=nortiForm.getNorti_sname() %> !</div>
					<%}else{%>
					<div id="status" class="uk-panel-badge uk-badge uk-badge-success"><%=nortiForm.getNorti_sname() %> !</div>
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
				
				<div class=" uk-width-medium-2-3 " >
					<div class="window-caption  bg-cyan fg-white">
						<span class="window-caption-icon"><span class="mif-apps"></span></span>
						<span class="window-caption-title">Edit Project Detail</span>						
					</div>
					<div class="window-containt">
					<!-- use message detail   nortiForm.getBu_no() -->
					<div class="uk-grid" style="margin-top:0;">								
						<h4 class="uk-width-1-2"><small>ลำดับที่ <span id="norti_id"></span> - <span class="tag info" id="bu_name"></span></small></h4>
						<h5 class="uk-width-1-2 align-right"><span class="tag success" id="norti_sname"></span></h5>
					</div>	
					<div class="uk-grid" style="margin-top:20;">
						<h3 class="uk-width-1-2"><small><B><span id="norti_from"></span></B> <<span id="norti_email"></span>></small></h3>
						<h4 class="uk-width-1-2 align-right"><small><span id="timestamp"></span> </small></h4>
					</div>
					
					<hr/>
					<h2><small><span id="norti_message"></span></small></h2>
					</div>
				</div>
				
				
			</div>
		</div>   


   <script src="wvsjs/jquery.js"></script>
   <script src="wvsjs/uikit.min.js"></script>
   <script src="wvsjs/components/grid.min.js"></script>
   
  <script>
  
  		function Shownorti(message){
  			show_deatil(message);
  			update_and_showheader(message);
  		}
  		
  		$(".forclickdetail").click(function(){
  			
  			$(this).find("#status").removeClass("uk-badge-danger");
	    	$(this).find("#status").addClass("uk-badge-success");
	    	$(this).find("#status").text("อ่านแล้ว !");
	    	$(this).attr( "data-uk-filter", "s0" );
  		});
  		
		function show_deatil(message){
			$.ajax({
                    type: "post",
                    url: "json_nortification.jsp", //this is my servlet
                    data: {id_nortification:message},
                    async:true,
                    success: function(result){ 
//                    	$('#showname').html(result);	
//								alert(result);
						var obj = JSON.parse(result);
						$("#norti_id").html(obj.norti_id);
						$("#norti_from").html(obj.norti_from);
						$("#norti_email").html(obj.norti_email);
						$("#norti_message").html(obj.norti_message);
						$("#norti_s").html(obj.norti_s);
						$("#bu_no").html(obj.bu_no);
						$("#timestamp").html(obj.timestamp);
						$("#bu_name").html(obj.bu_name);
						$("#norti_sname").html(obj.norti_sname);
                    }
                });
		}
		
		function update_and_showheader(message){
			$(this).find("#status").removeClass("uk-badge-danger");
	    	$(this).find("#status").addClass("uk-badge-success");
	    	$(this).find("#status").text("อ่านแล้ว !");
	    	$(this).attr( "data-uk-filter", "s0" );
			$.ajax({
                    type: "post",
                    url: "ajax_header_nortification.jsp", //this is my servlet
                    data: {id_nortification:message},
                    async:true,
                    success: function(result){
                    	
                     
//                    	$('#showname').html(result);	
//								alert(result);
//						$("#h_norti").html(result);
						//h_norti;
                    }
                });
		}
	</script>
  </body>
</html>
