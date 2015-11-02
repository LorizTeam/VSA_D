<%@ include file="defaultimport.jsp" %>
<%@ page import="com.smict.struts.form.IndexVSAForm"%>
<%@ page import="com.smict.struts.data.DBProject"%>
<%@ page import="com.smict.struts.form.BusinessForm"%>
<%	
	ListIterator<?> indexHeadIter = null;
	ListIterator<?> indexPicIter = null;
	ListIterator<?> typeIter = null;
	List<?> indexList = null;	
	if(request.getAttribute("indexList") != null){
		indexList = (List<?>)request.getAttribute("indexList");
	}
	
 %>

<!DOCTYPE html>
<html>
<head>
<title>Vorrarat Supachocke Architect | Home :: VSA</title>
<link href="css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="css/kitit.css" />
<link rel="stylesheet" href="css/csskit2.css" />
<link rel="stylesheet" href="css/uikit.css" />
<link rel="stylesheet" href="css/components/tooltip.min.css"/>

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
<script src="js/components/grid.min.js" type="text/javascript"></script>
<script src="js/components/tooltip.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="fotorama.css" />
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
				<li><a href="#"><img class="img-responsive"
						src="images/face-icon-o.png"></a></li>
				<li><a href="#" data-uk-tooltip="{pos:'left',animation:'true'}" title="VSA-GROUP"><img class="img-responsive"
						src="images/ig-icon-o.png"></a></li>
				<li><a href="#" data-uk-tooltip="{pos:'left',animation:'true'}" title="VSA-GROUP"><img class="img-responsive"
						src="images/pin-icon-o.png"></a></li>
				<li><a href="#" data-uk-tooltip="{pos:'left',animation:'true'}" title="VSA-GROUP"><img class="img-responsive"
						src="images/line-icon-o.png"></a></li>

<!-- data-uk-tooltip="{pos:'left',animation:'true'}" title="ID: ITS"  -->
			</ul>
		</div>
		<!-- Social icon -->
		<div class="header width-page">

			<div class="navigation ">
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
			<h3>Vorrarat Supachocke Architect VS<span class="red">a</span></h3>
			<br  class="hidden-xs hidden-sm">
			
			<br  class="hidden-xs hidden-sm">
			<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 wel-img">
				<a href="#" class="mask"> <img src="images/wlb.jpg"
					class="img-responsive zoom-img" alt="">
				</a>
			</div>
			<div class="col-xs-12 col-md-6 col-lg-6 wel-text">
				<p><b>Vorrarat Supachoke Architect</b> was founded in 2007 by
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
<br/>
			<!-- project and fillter -->
			<article class=" container-center " id="project">
				<button class="uk-button uk-visible-small container-center"  data-uk-toggle="{target:'.fillpro-m'}">
					<span class="uk-icon-filter"></span> 
					Filter
				</button>
				<ul id="fillpro1" class="fillpro uk-subnav uk-subnav-pill2 container-center fillpro-m uk-hidden uk-visible-small">
					<li class="b-active" data-uk-filter=""><a href="">ALL</a></li>
					<%	DBProject dbpjtype = new DBProject();
						typeIter = dbpjtype.pj_typeList("1").listIterator();
						while(typeIter.hasNext()){
							BusinessForm buform = (BusinessForm) typeIter.next();
					%>
							<li data-uk-filter="<%=buform.getPj_typename() %>"><a href=""><%=buform.getPj_typename() %></a></li>
					<%
						}
					 %>
					<form class="uk-form" >
						<select>
							<option selected>Sort by</option>
							<option data-uk-sort="my-category:desc">YEAR</option>
							<option data-uk-sort="my-category">NONE</option>
						</select>
					</form>
				</ul>
				<ul id="fillpro2" class="fillpro uk-subnav uk-subnav-pill2 container-center uk-hidden-small">
					<li class="b-active" data-uk-filter=""><a href="">ALL</a></li>
					<%	
						typeIter = dbpjtype.pj_typeList("1").listIterator();
						while(typeIter.hasNext()){
							BusinessForm buform = (BusinessForm) typeIter.next();
					%>
							<li data-uk-filter="<%=buform.getPj_typename() %>"><a href=""><%=buform.getPj_typename() %></a></li>
					<%
						}
					 %>
					<form class="uk-form" >
						<select>
							<option selected>Sort by</option>
							<option data-uk-sort="my-category:desc">YEAR</option>
							<option data-uk-sort="my-category">NONE</option>
						</select>
					</form>
				</ul>
	
					
					<ul class="uk-grid container-center" data-uk-grid="{controls: '.fillpro',gutter:0.6}">
					<% 		DBProject dbpj = new DBProject();
							indexHeadIter = dbpj.Get_HeaderProjectForIndex("VSA").listIterator();
							while(indexHeadIter.hasNext()){
								IndexVSAForm vsaform = (IndexVSAForm) indexHeadIter.next();	
					%>
					<li data-uk-filter="<%=vsaform.getPj_typename() %>" data-my-category="<%=vsaform.getPj_year() %>"
						class=" uk-width-2-6">
						<a href="" class="uk-overlay uk-overlay-hover gallery-img" data-uk-modal="{target:'#<%=vsaform.getPj_no() %>'}">
						<img class="uk-overlay-scale" src="<%=vsaform.getPic_path() %>" style="width: 100%;height:100%;">
							<figcaption
								class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
								<%=vsaform.getPj_name() %>
							</figcaption> 
						</a>
					</li>
					<%							
							}
					 %>
					 
					 </ul>
			</article>
			<!-- project and fillter -->
		</div>
	</div>
	<!-- This is the modal -->
	<%
		indexHeadIter = dbpj.Get_HeaderProjectForIndex("VSA").listIterator();
		while(indexHeadIter.hasNext()){
		IndexVSAForm vsaform = (IndexVSAForm) indexHeadIter.next();						
	%>
		<div id="<%=vsaform.getPj_no() %>" class="uk-modal">
			<div class="uk-modal-dialog">
				<div class="fotorama " data-nav="thumbs" data-allowfullscreen="true"
					data-loop="true"  data-ratio="16/9" data-width="100%">
					<%
						indexPicIter = dbpj.Get_PictureProjectForIndex("VSA",vsaform.getPj_name()).listIterator();
						while(indexPicIter.hasNext()){
						IndexVSAForm vsapicform = (IndexVSAForm) indexPicIter.next();
					%>
						<img src="<%=vsapicform.getPic_path() %>" alt="" />
					<%
						}
					 %>
				</div>
			</div>
		</div>
	<%
		}
	 %>
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
			<p class="content-t">The BCI Asia Top 10 Awards provides an
				overview of the regional building and construction industry by
				recognizing the top architectural firms and developers that had the
				greatest impact on the built environment in Southeast Asia.</p>
			<div class=" container-center uk-grid" data-uk-grid="{gutter:1}">
				<div class="uk-width-1-3 work-grid" >
					<div id="nivo-lightbox-demo" class="" >
						<a href="images/award (1).jpg" data-lightbox-gallery="gallery1" class="uk-overlay uk-overlay-hover gallery-img"
							id="nivo-lightbox-demo" > <img src="images/award (1).jpg"
							class="uk-overlay-scale" style="width: 100%;height:100%;" />
							<figcaption
								class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
								asd
							</figcaption> 
						</a>
					</div>
					
				</div>
				
				<div class="clearfix"></div>
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
		<div class="container-center">

			<div class="col-md-12 get_in_touch  text-center">
				<p>
					Tel. +66 2618 4316 Fax. +66 2618 4315 Email: <a
						href="mailto:vsagroup2007@yahoo.co.th">vsagroup2007@yahoo.co.th</a>
				</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--/footer-->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
			container-centerID: 'toTop', // fading element id
			container-centerHoverID: 'toTopHover', // fading element hover id
			scrollSpeed: 1200,
			easingType: 'linear' 
			};
			 */
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
		});
	</script>
	<script>
		$(function() {
			$('a[href*=#]:not([href=#])')
					.click(
							function() {
								if (location.pathname.replace(/^\//, '') == this.pathname
										.replace(/^\//, '')
										&& location.hostname == this.hostname) {
									var target = $(this.hash);
									target = target.length ? target
											: $('[name=' + this.hash.slice(1)
													+ ']');
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

	<a href="#to-top" id="toTop" style="display: block;"> <span
		id="toTopHover" style="opacity: 1;"> </span></a>
	<!---->
	<div></div>
	<!--footer-starts-->
</body>
</html>
