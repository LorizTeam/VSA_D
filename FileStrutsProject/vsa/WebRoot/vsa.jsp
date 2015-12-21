<%@ include file="defaultimport.jsp" %>
<%@ page import="com.smict.struts.form.IndexVSAForm"%>
<%@ page import="com.smict.struts.data.DBProject"%>
<%@ page import="com.smict.struts.form.BusinessForm"%>


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
<meta name="keywords"
	content="Frederick Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
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
<script type="text/javascript" charset="utf-8"
	src="edge_includes/edge.5.0.0.min.js"></script>
<style type="text/css">
.edgeLoad-EDGE-1385226 {
	visibility: hidden;
}
</style>

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
		<div class="header width-page">

			<div class="navigation ">
				<nav class="navbar navbar-default ">
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
			</div>
			<div class="clearfix"></div>
		</div>


	</div>
	<div id="Stage" class="clearfix"></div>
	
	<!--/header-->

	<br class="hidden-xs hidden-sm">
	<br class="hidden-xs hidden-sm">
	<br class="hidden-xs hidden-sm">
	<br>
	<div class="welcome container-center">
		<div class="container-center">
			<h3>Vorrarat Supachocke <span class="red">Architect</span> </h3>
			<br  class="hidden-xs hidden-sm">
			<br class="hidden-md hidden-lg"/>
			<br  class="hidden-xs hidden-sm">
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


	<!--grid-hover-->
	<div id="work" class="index-portfilio">
		<div class="container-center">
			<h3>OUR WORK</h3>
<br/><script src="lg/js/lightgallery.js"></script>
	<script src="lg/js/lg-fullscreen.js"></script>
	<script src="lg/js/lg-hash.js"></script>
			<!-- project and fillter -->
			<article class=" container-center " id="project">
				
			<div class="swiper-container container-center">
		        <div class="swiper-wrapper">
		       
		       <%@ include file="data-test.jsp" %>    
		           
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
				});
			</script>

			<!---->
		</div>
	</div>
	<!--/Award-->
	<!--footer-->
	<div class="footer">
		<div class="container-center get_in_touch  text-center">
				<div class="social-bottom">					
					<img class="img-responsive" src="images/face-icon.png"></a>
					<img class="img-responsive"src="images/ig-icon.png"></a>
					<img class="img-responsive"src="images/pin-icon.png"></a>
					<a title="ID:SMICT <small class='visible-xs c'>(tab to close)</small>" rel="tooltip">
						<img class="img-responsive"src="images/line-icon.png"></a>
				</div>
		
				<p  class="white">Tel:<a>+66-2618-4316</a> Fax:<a>+66-2618-4315</a> Email:<a 
							href="mailto:vsagroup2007@yahoo.co.th">vsagroup2007@yahoo.co.th</a>
				</p>
				<p>
					 	&#xA9; 2015 VSA GROUP <a href="http://w3layouts.com/">Contact Us</a>
				</p>
							
			</div>
			<!--<div id="testproject"></div>-->
			<div class="clearfix"></div>
		</div>
	</div>
	<!--/footer-->
	<script type="text/javascript">
		$(document).ready(function() {
			var obj,objpicture;
			$.ajax({
                    type: "post",
                    url: "json_indexproject.jsp", //this is my servlet
                    data: {bu_name:"VSA"},
                    async:true,
                    success: function(result){
                    	
						obj = JSON.parse(result);
						var out ='';
						var projectheadercount = 0;
						if(obj.length > 9){
							projectheadercount = 9;
						}else{
							projectheadercount = obj.length;
						}
						for(var i = 0 ; i < projectheadercount; i++){
							out += 
							'<li data-uk-filter="'+obj[i].pj_typename+'" data-my-category="'+obj[i].pj_year+'" class=" uk-width-2-6">'+
							'<a href="" class="uk-overlay uk-overlay-hover gallery-img" data-uk-modal="{target:\'#'+obj[i].pj_no+'\'}">'+
							'<img class="uk-overlay-scale" src="'+obj[i].pic_path+'" style="width: 100%;height:100%;">'+
							'<figcaption class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">'+
							obj[i].pj_name+
							'</figcaption>'+
							'</a>'+
							'</li>';
							
						}
						
						document.getElementById("loop_projectheader").innerHTML = out;
						
                    }
                });
                
//            $.ajax({
//            	type: "post",
//                    url: "json_indexproject.jsp", //this is my servlet
//                    data: {bu_name:"VSA"},
//                    async:true,
//                    success: function(result){
//                    	objpicture = JSON.parse(result);
//                 		var outsrcpicture = '';
//                 		
//                 		for(var i = 0; i < objpicture.length ; i++){
//                 			var objsrcpicture = JSON.parse(objpicture[i].srcpicture);
//                 			
//                 		}
//                 		alert(objsrcpicture);
//                    }
//            });
                
         	$('[data-uk-pagination]').on('select.uk.pagination', function(e, pageIndex){
         		
         		var clickpage = pageIndex+1;
         		var startproject = 0 ;
         		
         		if(clickpage > 1){
         			startproject = (clickpage *9)-9;
         		}
         		
         		var endproject =  (clickpage*9);
         		var out ='';
         		if(endproject > obj.length){
         			endproject = obj.length;
         		}
         		var $log = $("#loop_projectheader");
				for(var i = startproject ; i < endproject; i++){
							out += 
							'<li data-uk-filter="'+obj[i].pj_typename+'" data-my-category="'+obj[i].pj_year+'" class=" uk-width-2-6"> '+
							'<a href="" class="uk-overlay uk-overlay-hover gallery-img" data-uk-modal="{target:\'#'+obj[i].pj_no+'\'}">'+
							'<img class="uk-overlay-scale" src="'+obj[i].pic_path+'" style="width: 100%;height:100%;">'+
							'<figcaption class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">'+
							obj[i].pj_name+
							'</figcaption>'+
							'</a>'+
							'</li>';
							
						}
				var html = $.parseHTML(out);
				$("#loop_projectheader").empty();
				$log.append(html);
				$("#alltype").click();
//						document.getElementById("loop_projectheader").innerHTML = out;
						
				
			    
			});
		});
	</script>

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
    </script>
</body>
</html>
