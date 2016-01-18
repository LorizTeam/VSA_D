
<%@page import="com.smict.struts.data.DBaward"%><%@ include file="defaultimport.jsp" %>
<%@ page import="com.smict.struts.form.IndexVSAForm"%>
<%@ page import="com.smict.struts.data.DBProject"%>
<%@ page import="com.smict.struts.form.BusinessForm"%>
<%@ page import="com.smict.struts.form.AwardForm"%>

<!DOCTYPE html>
<html>
<head>

<title>Vorrarat Supachocke Architect | Home :: VSA</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="css/kitit.css" />
<link rel="stylesheet" href="css/csskit2.css" />
<link rel="stylesheet" href="css/uikit.css" />
<link rel="stylesheet" href="css/components/tooltip.min.css"/>
<link rel="stylesheet" href="css/tooltip.css" />
<link rel="stylesheet" href="swipe/css/swiper.min.css"/>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
<script src="js/bootstrap.js" type="text/javascript"></script>
<!-- js -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>

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
				<li><a ><img class="img-responsive"
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
						<li class="l"><a href="#Stage">Home</a></li>
						<li><a href="#work">Work</a></li>
						<li><a href="#team">Team</a></li>
						<li><a href="#award">Award</a></li>
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
	<br class="hidden-xs hidden-sm">
	<div class="welcome container-center">
		<div class="container-center">
			<h3>Vorrarat Supachocke <span class="red">Architect</span> </h3>
			<br  class="hidden-xs hidden-sm">
			<br class="hidden-md hidden-lg"/>
			<br  class="hidden-xs hidden-sm">
			<div class="container-fluid">
			<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 wel-img">
				<a href="#" class="mask"> <img src="images/wlb.jpg"
					class="img-responsive zoom-img" alt="">
				</a>
			</div>
			<div class="col-xs-12 col-md-6 col-lg-6 wel-text">		
				<p><b>Vorrarat Supachoke Architect (VS<span class="red">a</span>)</b> was founded in 2007 by
					Vorrat Foythong and Supachoke Kittipatmeta.
				</p>
				
				<p>
					The main of our Architecture concerning about site context,
					project's character and project's requirement are combined to
					produce the architectural design which is able <b>BALANCE</b> the
					client's need and environment.
				</p>
			</div>
			</div>
			</div>
		</div>
	</div>


	<!--grid-hover-->
	<div id="work" class="index-portfilio">
		<div class="container-center">
			<h3>Our Work</h3>
<br/><script src="lg/js/lightgallery.js"></script>
	<script src="lg/js/lg-fullscreen.js"></script>
	<script src="lg/js/lg-hash.js"></script>
			<!-- project and fillter -->
			<article class=" container-center " id="project">
				
			<div class="swiper-container container-center">
		        <div class="swiper-wrapper">
		       <%
		       		DBProject dbpj = new DBProject();
		       		ListIterator indexHeadIter = dbpj.Get_HeaderProjectForIndex("VSA",2).listIterator();
		       		
		       		while(indexHeadIter.hasNext()){
		       			IndexVSAForm vsaform = (IndexVSAForm) indexHeadIter.next();
		       	%>
		       			<!-- 1project -->
		            <div class="swiper-slide">
		            	<a id="<%=vsaform.getPj_no() %>" class=" uk-overlay uk-overlay-hover gallery-img">	        
							<img class="uk-overlay-scale" src="<%=vsaform.getPic_path() %>"style="width: 100%;height:100%;">							
							<div class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
								<%=vsaform.getPj_name() %>
							</div>	
							<script type="text/javascript">
								$('#<%=vsaform.getPj_no() %>').on('click', function() {
								    $(this).lightGallery({
								       dynamic: true,
								      dynamicEl: [
								    	  <%
								    	  ListIterator indexDetailIter = dbpj.Get_PictureProjectForIndex("VSA",vsaform.getPj_name()).listIterator();
								       		
								       		while(indexDetailIter.hasNext()){
								       			IndexVSAForm vsaDetailform = (IndexVSAForm) indexDetailIter.next();
								       			
								       		%>
								       			{
											    	"src": '<%=vsaDetailform.getPic_path()%>'
											    },
								       		<%
								       		}
								    	  %>
								    	  
								    	  
								       
								       
								       ]
								    })
								 
								});
					
							</script>				
						</a>
						
					</div>
		           <!-- 1project -->
		       	
		       	<%		
		       			
		       		}
		       		
		       		
		       		
		       %>
		           
		           
		        </div>
		        <!-- Add Pagination -->
		        <div class="swiper-pagination"></div>
		    </div>
		    </article>
		</div>
		
		</div>
	
	 
	 
	<!-- This is the modal -->
	
	<!--grid-hover-->
	<!--index-team-->
	<div id="team" class="content-team">
		<div class="container-center team">
			<h3 class="m_1">Our team</h3>
			<p class="content-t">Dolor nunc vule putateulr ips dol
				consec.Donec sem ertet laciniate ultricie upie disse utes comete
				dolo lectus. fgilla itollicil tua ludin dolor nec met quam accumsan.</p>
			<div class="team-left">
				
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--/index-team-->
	<!--Award-->
	<div id="award" class="content-team container-center">
		<div class="container-center team">
			<h3 class="m_1">Award / Published</h3>
			<br/>
			<div class="swiper-container container-center">
		        <div class="swiper-wrapper">

		       <%
		       		DBaward dbaward = new DBaward();
		       		ListIterator awardHeadIter = dbaward.select_award("1","").listIterator();
		       		
		       		while(awardHeadIter.hasNext()){
		       			AwardForm awardform = (AwardForm) awardHeadIter.next();
		       	%>
		       			<!-- 1project -->
		            <div class="swiper-slide">
		            	<a id="<%=awardform.getAward_no() %>" class=" uk-overlay uk-overlay-hover gallery-img">	        
							<img class="uk-overlay-scale" src="<%=awardform.getAwardpicpath() %>"style="width: 100%;height:100%;">							
							<div class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
								<%=awardform.getAwardname() %>
							</div>	
							<script type="text/javascript">
								$('#<%=awardform.getAward_no() %>').on('click', function() {
								    $(this).lightGallery({
								       dynamic: true,
								      dynamicEl: [
								    	  <%
								    	  ListIterator awardDetailIter = dbaward.select_award("1","").listIterator();
								       		
								       		while(awardDetailIter.hasNext()){
								       			AwardForm awardDetailform = (AwardForm) awardDetailIter.next();
								       			
								       		%>
								       			{
											    	"src": '<%=awardDetailform.getAwardpicpath()%>',
								            
								            		'subHtml': '<h4 class="white"><%=awardform.getAwardname() %></h4><p><%=awardform.getAward_description() %></p>'
											    },
								       		<%
								       		}
								    	  %>
								    	  
								    	  
								       
								       
								       ]
								    })
								 
								});
					
							</script>				
						</a>
						
					</div>
		           <!-- 1project -->
		       	
		       	<%		
		       			
		       		}
		       		
		       		
		       		
		       %>
		           
		        </div>
		       
		        <!-- Add Pagination -->
		        <div class="swiper-pagination"></div>
		    </div>
			<!--script-->

			
			<link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
			<script type="text/javascript" src="js/nivo-lightbox.min.js"></script>
			<script type="text/javascript">
				$(document).ready(function() {
					$('#nivo-lightbox-demo a').nivoLightbox({
						effect : 'fade'
					});
					
					
			$('a[href*=#]:not([href=#])').click(
					function() {
						if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')&& location.hostname == this.hostname) {
							var target = $(this.hash);
							target = target.length ? target: $('[name=' + this.hash.slice(1)+ ']');
							if (target.length) {
								$('html,body').animate({
								scrollTop : target.offset().top
								}, 1000);
								return false;
							}
					}
				
					});
				});
			</script>

			<!---->
		</div>
	</div>
	<!--/Award-->
	<!--footer-->
	
	<div class="nav nav-pills social-bottom  text-center" >	
		<a href="#"><img src="images/face-icon-o.png"></a>
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
	</div>
	<!--/footer-->


	<script src="js/tooltip.js" ></script>
	
	

	<!--footer-starts-->
	<!-- Swipe -->
	<script type="text/javascript" src="swipe/js/swiper.jquery.min.js"></script>
	<script type="text/javascript" src="swipe/js/swiper.min.js"></script>
	<script>
	    var swiper = new Swiper('.swiper-container', {
	     pagination: '.swiper-pagination',	
	        slidesPerView: 3,
	        slidesPerColumn: 3,
	        paginationClickable: true,
	        spaceBetween: 10
	    });
	    
	    $(function() {
			$('a[href*=#]:not([href=#])')
				.click(
					function() {
						if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')&& location.hostname == this.hostname) {
							var target = $(this.hash);
							target = target.length ? target: $('[name=' + this.hash.slice(1)+ ']');
							if (target.length) {
								$('html,body').animate({
								scrollTop : target.offset().top
								}, 1000);
								return false;
							}
					}
				});
			});
    </script>
</body>
</html>
