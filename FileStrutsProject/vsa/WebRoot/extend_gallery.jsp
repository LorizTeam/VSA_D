
<%@page import="com.smict.struts.data.DBaward"%><%@ include file="defaultimport.jsp" %>
<%@ page import="com.smict.struts.form.IndexVSAForm"%>
<%@ page import="com.smict.struts.data.DBProject"%>
<%@ page import="com.smict.struts.form.BusinessForm"%>
<%@ page import="com.smict.struts.form.AwardForm"%>
<% 
String ProjectName = request.getParameter("p").toString(),
		CoperateName = request.getParameter("c").toString(),head_picture = "";
		
	
		DBProject dbpj = new DBProject();
	       		ListIterator indexDetailIter1 = dbpj.Get_HeaderProjectForIndex(CoperateName,ProjectName).listIterator();
	       		
		        while(indexDetailIter1.hasNext()){ 
		        	IndexVSAForm vsaDetailform = (IndexVSAForm) indexDetailIter1.next();
		        		head_picture = vsaDetailform.getPic_path().substring(2);
		        	}
%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	var link = parent.document.createElement('link');
	link.type = 'image/png';
	link.rel = 'icon';
	link.href = 'http://smartict.ar-bro.net:8080/vsa/images/favivsa/vsa.png';
	parent.document.getElementsByTagName('head')[0].appendChild(link);
	document.title = '<%=CoperateName %> :: <%=ProjectName %>';
</script>
<link rel="icon" type="" sizes="192x192"  href="images/favivsa/vsa.png">
<title><%=CoperateName %> :: <%=ProjectName %></title>
<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="css/kitit.css" />
<link rel="stylesheet" href="css/csskit2.css" />
<link rel="stylesheet" href="css/uikit.css" />
<link rel="stylesheet" href="css/components/tooltip.min.css"/>
<link rel="stylesheet" href="css/tooltip.css" />
<link rel="stylesheet" href="swipe/css/swiper.css"/>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Vorrarat Supachocke Architect vsa The main of our Architecture " />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta property="og:url"                content="http://smartict.ar-bro.net:8080/vsa/extend_gallery.jsp?c=<%=CoperateName %>&p=<%=ProjectName %>" />
<meta property="og:title"              content="<%=CoperateName %> :: <%=ProjectName %>" />
<meta property="og:description"        content="Work gallery of project " />
<meta property="og:image"              content="http://smartict.ar-bro.net:8080/upload/<%=head_picture %>" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- //for-mobile-apps -->
<!--fonts-->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,700,300,600,800,400'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro'
	rel='stylesheet' type='text/css'>
<!--//fonts-->


<!--Adobe Edge Runtime End-->
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/uikit.min.js" type="text/javascript"></script>
<script src="js/components/pagination.js" type="text/javascript"></script>
<script src="js/components/grid.min.js" type="text/javascript"></script>
<script src="js/components/tooltip.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="fotorama.css" />
<link rel="stylesheet"href="lg/css/lightgallery.css">
<script src="fotorama.js" type="text/javascript"></script>

<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<!-- js -->

<!--/script-->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 900);
		});
	});
</script>

</head>
<body>
	<!--header-->
	<div id="header">

		<!-- Social icon -->
		<div class="fix-social" >
			<ul>
				<li><a  target="_blank"  href="https://www.facebook.com/VSa-Group-361013917413488/?ref=ts&fref=ts"><img class="img-responsive"
						src="images/face-icon-o.png"></a></li>
				<li><a ><img class="img-responsive"
						src="images/ig-icon-o.png"></a></li>
				<li><a ><img class="img-responsive"
						src="images/pin-icon-o.png"></a></li>
				<li><a title="ID:SMICT <small class='visible-xs c'>(tab to close)</small>" rel="tooltip"><img class="img-responsive"
						src="images/line-icon-o.png"></a></li>

			</ul>
		</div>
		<!-- Social icon -->
		<div class="width-page">
				
			
			<nav class="navbar navbar-default ">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"> </span> <span class="icon-bar"> </span> <span
							class="icon-bar"> </span>
					</button>
				</div>
				<div class="collapse navbar-collapse nav-wil container-center"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav  top-nav">
						<li class="l"><a href="<%=CoperateName.toLowerCase()+".jsp" %>">Home</a></li>
						<li><a href="<%=CoperateName.toLowerCase()+".jsp" %>#work">Work</a></li>
						<li><a href="<%=CoperateName.toLowerCase()+".jsp" %>#team">Team</a></li>
						<li><a href="<%=CoperateName.toLowerCase()+".jsp" %>#award">Award</a></li>
						<li><a href="contact.jsp">Contact</a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<!-- /.navbar-collapse -->

			</nav>
			
			<div class="clearfix"></div>
		</div>


	</div>
	<div id="Stage" class="clearfix"></div>
	
	<!--/header-->
	

	<!--grid-hover-->
	<div id="work" class="index-portfilio">
		<div class="container-center" style="margin-bottom: 30px">
			<h3 class="m_1"><%=ProjectName %></h3>
<br/><script src="lg/js/lightgallery.js"></script>
	<script src="lg/js/lg-fullscreen.js"></script>
	<script src="lg/js/lg-hash.js"></script>
			<!-- project and fillter -->
			<div class="uk-grid uk-grid-collapse" id="gallery" data-uk-grid>
			<%
		        
	       		ListIterator indexDetailIter = dbpj.Get_PictureProjectForIndex(CoperateName,ProjectName).listIterator();
	       		
		        while(indexDetailIter.hasNext()){ 
		        	IndexVSAForm vsaDetailform = (IndexVSAForm) indexDetailIter.next(); %>
		        	<div class="uk-width-medium-1-4 uk-width-small-1-1 gallery-img2"  href="<%=vsaDetailform.getPic_path()%>">
	        		
	        			<img class="uk-width-1-1" src="<%=vsaDetailform.getPic_path()%>"style=" height:100%; -webkit-transform:scale(1.8,1.2);"/>
	        		
	        		</div>
		        	
		      <%  }
		     %>   
			  
			</div>
			
			
			
		</div>
		
		</div>
	

	
	<!--footer-->
	
	<div class="nav nav-pills social-bottom  text-center" >	
		<a target="_blank"  href="https://www.facebook.com/VSa-Group-361013917413488/?ref=ts&fref=ts"><img src="images/face-icon-o.png"></a>
		<a href="#"><img src="images/ig-icon-o.png"></a>
		<a href="#"><img src="images/pin-icon-o.png"></a>
		<a title="ID:SMICT <small class='visible-xs c'>(tab to close)</small>" rel="tooltip">
			<img src="images/line-icon-o.png"></a>								
	</div>
	
	<div class="footer">
	
		<div class="container-center get_in_touch  text-center">
			
		
				<p  class="white">Tel:<a>+66-2618-4316</a> Email:<a 
							href="mailto:vsagroup2007@yahoo.co.th">vsagroup2007@yahoo.co.th</a>
				</p>
				<p>
					 	&#xA9; 2015 VSA GROUP <a href="contact.jsp">Contact Us</a>
				</p>
							
			</div>
			<!--<div id="testproject"></div>-->
			<div class="clearfix"></div>
	</div>
	
	<!--/footer-->


	<script src="js/tooltip.js" ></script>
	
	

	<!--footer-starts-->
	<!-- Swipe -->
	
	<script type="text/javascript" src="swipe/js/swiper.jquery.min.js"></script>
	<script type="text/javascript" src="swipe/js/swiper.min.js"></script>
	<script>
    
        $(document).ready(function() {
            $("#gallery").lightGallery(); 
        });
	   
    </script>
</body>
</html>
