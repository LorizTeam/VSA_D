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

<title>WVS | Interior Design</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="wvscss/uikit.css" />
<link rel="stylesheet" href="wvscss/styles.css" />
<script src="wvsjs/jquery.js" type="text/javascript"></script>
<script src="wvsjs/uikit.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<link rel="stylesheet" href="fotorama.css" />
<script src="fotorama.js" type="text/javascript"></script>
<script src="wvsjs/components/grid.min.js" type="text/javascript"></script>
<script src="wvsjs/components/lightbox.min.js" type="text/javascript"></script>
<script src="https://maps.googleapis.com/maps/api/js"></script>
<link rel="stylesheet"href="lg/css/lightgallery.css">
<link rel="stylesheet" href="swipe/css/swiper.min.css"/>

</head>
<body id="home">

	<nav class="fixnav-bottom">
		<div class="uk-grid">
			<ul class="uk-subnav uk-subnav-line uk-container-center">
				<li><a href="#home">HOME</a></li>
				<li><a href="#about">ABOUT</a></li>
				<li><a href="#project">PROJECT</a></li>
				<li><a href="#people">PEOPLE</a></li>
				<li><a href="#contact">CONTACT</a></li>
			</ul>
		</div>
	</nav>
	<div class=" uk-grid icon-head">
		<div class=" uk-container-center">
			<img src="wvsimages/wvs.png"/>
		</div>
	</div>

	<div class="uk-container-center uk-width-medium-3-5 uk-width-large-2-5">
		<div class="fotorama " data-width="100%" data-nav="false"
			data-transition="crossfade" data-autoplay="5000" data-loop="true"
			data-autoplay="true" data-transitionduration="700">
			<img src="wvsimages/slide/2.jpg" alt="" /> <img src="wvsimages/slide/3.jpg"
				alt="" /> <img src="wvsimages/slide/4.jpg" alt="" /> <img
				src="wvsimages/slide/5.jpg" alt="" />
		</div>
	</div>


	<div class="divarti header container">
		<section id="about" class="uk-grid block">
			<h1 class=" uk-container-center">About</h1>
		</section>

		<div class="uk-grid">
			<div class="uk-width-medium-1-2 uk-width-small-1-1 uk-text-center">
				<img src="wvsimages/slide/1.jpg" alt="" />
			</div>

			<div class="uk-width-medium-1-2 uk-width-small-1-1 ">
				<br class="uk-visible-small">
				<h2 class="uk-text-center ">WVS</h2>
				<h3 class="uk-text-center ">Interior Design</h3>
				<p>A late Georgian house is always a temptation and this one
					managed to draw Studio Hopwood all the way across town. On three
					floors with high ceilings and nicely proportioned rooms, so no case
					of having to turn a sows ear into a silk purse this time.This house
					has a new angle though</p>
				<p>The budget was generous but the house is large and so much
					care was taken in spending it well to achieve a lived in home.
					Sourcing from markets, trawling eBay, making our own art, updating
					an existing kitchen a little bit of up-cycling but also building
					bespoke pieces and only buying the best. Check out the captions in
					the pictures for clues to our sourcing.</p>
				<p>The budget was generous but the house is large and so much
					care was taken in spending it well to achieve a lived in home.
					Sourcing from markets, trawling eBay, making our own art, updating
					an existing kitchen a little bit of up-cycling but also building
					bespoke pieces and only buying the best. Check out the captions in
					the pictures for clues to our sourcing.</p>
	
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<article class=" container-center " id="project">
		
		<div class="swiper-container swiper-container-2">
	        <div class="swiper-wrapper">
	       <%
		        
		        DBProject dbpj = new DBProject();
	       		List listcontent = dbpj.Get_HeaderProjectForIndex("WVS",2);
	       		
	       		indexHeadIter = listcontent.listIterator();
		        
	       		int indexcontent = listcontent.size();
	       		int divcontent = indexcontent /9;
	       		int modcontent = indexcontent %9;
	       		int loopcontent = divcontent;
	       		if(modcontent > 0){
	       			loopcontent++;
	       		}
	       		int i = 1;
	       		
	       		while(i <= loopcontent){
	       			
	       		%>
	       		<!-- cut 9 pic -->
		        	<div class="swiper-slide">
		   				<div class="row" style="width:100%;">
	       		<%
	       			int koon = i * 9;
	       			boolean standardloop = false;
	       			if(indexcontent - koon >= 0){
	       				standardloop = true;
	       			}
	       			
	       			if(standardloop){
	       				
	       				for(int j = 1 ; j<=9 ; j++){
	       					IndexVSAForm vsaform = (IndexVSAForm) indexHeadIter.next();
	       		%>
	       					<!-- 1project -->
				            	<div class="col-md-4  col-sm-4 col-xs-4" style="padding:2px;" >
				            	<div id="<%=vsaform.getPj_no() %>" class=" uk-overlay uk-overlay-hover gallery-img">
				            		        
									<img class="uk-overlay-scale" src="<%=vsaform.getPic_path() %>"style=" height:100%; -webkit-transform:scale(1.8,1.2);">	
														
									<div class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
										<%=vsaform.getPj_name() %>
									</div>	
									<script type="text/javascript">
										$('#<%=vsaform.getPj_no() %>').on('click', function() {
										    $(this).lightGallery({
										       dynamic: true,
										      dynamicEl: [
										    	  <%
										    	  ListIterator indexDetailIter = dbpj.Get_PictureProjectForIndex("WVS",vsaform.getPj_name()).listIterator();
										       		
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
								</div>
								</div>
							<!-- 1project -->
	       		<%
	       					
	       				}
	       				
	       			}else{
	       				koon = koon - 9;
	       				indexcontent = indexcontent - koon;
	       				for(int j = 1 ; j<=indexcontent ; j++){
	       					IndexVSAForm vsaform = (IndexVSAForm) indexHeadIter.next();
	       		%>
	       					<!-- 1project -->
				            	<div class="col-md-4  col-sm-4 col-xs-4" style="padding:2px;" >
				            	<div id="<%=vsaform.getPj_no() %>" class=" uk-overlay uk-overlay-hover gallery-img">
				            		        
									<img class="uk-overlay-scale" src="<%=vsaform.getPic_path() %>"style=" height:100%; -webkit-transform:scale(1.8,1.2);">	
														
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
								</div>
								</div>
							<!-- 1project -->
	       		<%
	       					
	       				}
	       				
	       				
	       			}
	       			
	       			
	       		%>
	       				</div>
		        	</div>
	       		<%
	       		i++;
	       		}
		        %>
	        </div>
	        <!-- Add Pagination -->
	        <div class="swiper-pagination"></div>
	    </div>
		
	</article>
	
	<script src="lg/js/lightgallery.min.js"></script>
	<script src="lg/js/lg-fullscreen.min.js"></script>
	<script src="lg/js/lg-zoom.min.js"></script>
	
	<div class=" block " id="people" style="padding-top: 50px;">

		<div class="uk-text-center">
			<h1>People</h1>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br>
		</div>
	</div>
	<footer>
		<div class="block container" id="contact">
		<div class="uk-grid ">
			<div class="uk-width-small-1-1 uk-width-medium-1-1 uk-width-large-1-1 uk-text-center">
				<h1>Contact</h1>
				<br> <br> <br>
			</div>
				<form action="notifications.do" method="post" class="uk-width-small-1-1 uk-width-medium-2-4 uk-width-large-1-2">
				<input type="hidden" name="bu_no" value="2" >
				<input id="cus_name" name="cus_name" type="text" placeholder="Name" class="frm-control">
				<br> <br>
				<input type="email" id="cus_email" name="cus_email" placeholder="E-mail" class="frm-control">
				<br> <br>		
				<div class="uk-form-row">
				    <textarea class="frm-control" id="cus_message" name="cus_message" cols="uk-form-large" rows="" placeholder="Message" style="width: 70%;"></textarea>
				</div>
				<br> <br>
				<button class="uk-button" type="submit" name="send" value="send" >Send</button>
				
				<hr width="80%" />
				<div class="center-footpic ">
					<a href="index.jsp"><img src="wvsimages/vsa logo black.png" alt="" width="10%" height="10%"/></a>
				</div>
				</form>
			<div class="uk-width-small-1-1 uk-width-medium-2-4 uk-width-large-1-3" >
				<span class="fa fa-building-o fa-2x dropcaps opacity5"></span>
				<label class="opacity7">
					Soi Pradipat 10, Pradipat Road, Samsen Nai,
					Phaya Thai Bangkok 10400 
				</label>
				<br/><br/>
				<span class="fa fa-phone fa-2x dropcap-oneline opacity5"></span>
				<label class="opacity7">
					+66(0)2 618 4318
				</label>
				<br/><br/>
				<span class="fa fa-envelope-o fa-2x dropcap-oneline opacity5"></span>
				<label class="opacity7">
					wvs2556@gmail.com
				</label>
				<br/><br/>
				
				<a id="btn-location" class="uk-button uk-width-1-1"  data-uk-toggle="{target:'#map'}"><span class="fa fa-map-marker fa-2x"></span> Click Here for Map</a>				
				<div id="map" class="uk-hidden"></div>
			</div>
		</div>

			<div class="footer uk-text-center">
				<p>Design by WVS Interior Design</p>
			</div>
	
		</div>
	</footer>
	<script type="text/javascript" src="swipe/js/swiper.jquery.min.js"></script>
	<script type="text/javascript" src="swipe/js/swiper.min.js"></script>
	<script type="text/javascript">
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

		$(function initialize(){
			var mapCanvas = document.getElementById('map');
			var mapOption = {
				center: new google.maps.LatLng(13.789178, 100.541967),
				zoom: 17,
				mapTypeId: google.maps.MapTypeId.ROADMAP
			}
			var map = new google.maps.Map(mapCanvas, mapOption);
		});
		google.maps.event.addDomListener(window, 'load', initialize);
		
		
</script>
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