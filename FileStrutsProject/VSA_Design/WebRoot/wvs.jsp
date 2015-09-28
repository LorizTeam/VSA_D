<!DOCTYPE html>
<html>
<head>

<title>WVS | Interior Design</title>

<link rel="stylesheet" href="wvscss/uikit.css" />
<link rel="stylesheet" href="wvscss/styles.css" />
<script src="wvsjs/jquery.js" type="text/javascript"></script>
<script src="wvsjs/uikit.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="fotorama.css" />
<script src="fotorama.js" type="text/javascript"></script>
<script src="wvsjs/components/grid.min.js" type="text/javascript"></script>
<script src="wvsjs/components/lightbox.min.js" type="text/javascript"></script>
</head>
<body id="home">

	<nav class="fixnav-bottom">
		<div class=" uk-grid">
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
		<img src="wvsimages/wvs.png" class="uk-width-1-10 uk-container-center"
			alt="" />
	</div>

	<div class="uk-container-center uk-width-3-5">
		<div class="fotorama " data-width="100%" data-nav="false"
			data-transition="crossfade" data-autoplay="3000" data-loop="true"
			data-autoplay="true">
			<img src="wvsimages/slide/2.jpg" alt="" /> <img src="wvsimages/slide/3.jpg"
				alt="" /> <img src="wvsimages/slide/4.jpg" alt="" /> <img
				src="wvsimages/slide/5.jpg" alt="" />
		</div>
	</div>


	<div class="divarti header container" style="margin-top: 100px;">
		<section id="about" class="uk-grid">
			<div class="block  uk-container-center">
				<h1>About</h1>
			</div>
		</section>

		<div class="uk-grid">
			<div class="uk-width-1-2 uk-text-center">
				<img src="wvsimages/slide/1.jpg" alt="" />
			</div>

			<div class="uk-width-1-2 uk-text-center">
				<h2>WVS</h2>
				<h3>Interior Design</h3>
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
				<br> <br>
				<p>
					<a href="#">- MORE INFORMATION -</a> <br> <a href="#project">-
						VIEW PROJECT -</a>
				</p>
			</div>

		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<article class=" artic container " id="project">
		<ul id="fillpro" class="uk-subnav uk-subnav-pill ">
			<li class="uk-active" data-uk-filter=""><a href="">ALL</a></li>
			<li data-uk-filter="corporate"><a href="">Corporate</a></li>
			<li data-uk-filter="residential"><a href="">Residential</a></li>
			<li data-uk-filter="commercial"><a href="">Commercial</a></li>
			<form class="uk-form" action="">

				<select>
					<option selected>Sort by</option>
					<option data-uk-sort="my-category:desc">YEAR</option>
					<option data-uk-sort="my-category">NONE</option>
				</select>
			</form>
		</ul>
		<section class="uk-grid "
			data-uk-grid="{controls: '#fillpro',gutter:0.1}">
			<figure data-uk-filter="corporate" data-my-category="1992"
				class="uk-width-small-1-2 uk-width-medium-1-3 uk-overlay uk-overlay-hover">
				<a href="" data-uk-modal="{target:'#my-id'}"> <img
					class="uk-overlay-scale" src="wvsimages/slide/2.jpg" alt="">
					<figcaption
						class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
						corporate</figcaption>
				</a>
			</figure>
			<figure data-uk-filter="residential" data-my-category="1995"
				class="uk-width-small-1-2 uk-width-medium-1-3 uk-overlay uk-overlay-hover">
				<a href="" data-uk-modal="{target:'#my-id'}"><img
					class="uk-overlay-scale" src="wvsimages/slide/3.jpg" alt="">
					<figcaption
						class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
						residential</figcaption> </a>
			</figure>
			<figure data-uk-filter="commercial" data-my-category="1999"
				class="uk-width-small-1-2 uk-width-medium-1-3 uk-overlay uk-overlay-hover">
				<a href="" data-uk-modal="{target:'#my-id'}"><img
					class="uk-overlay-scale" src="wvsimages/slide/4.jpg" alt="">
					<figcaption
						class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
						commercial</figcaption> </a>
			</figure>
			<figure data-uk-filter="residential" data-my-category="2015"
				class="uk-width-small-1-2 uk-width-medium-1-3 uk-overlay uk-overlay-hover">
				<a href="" data-uk-modal="{target:'#my-id'}"><img
					class="uk-overlay-scale" src="wvsimages/slide/5.jpg" alt="">
					<figcaption
						class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
						residential</figcaption> </a>
			</figure>

			<figure data-uk-filter="residential" data-my-category="2015"
				class="uk-width-small-1-2 uk-width-medium-1-3 uk-overlay uk-overlay-hover">
				<a href="" data-uk-modal="{target:'#my-id'}"><img
					class="uk-overlay-scale" src="wvsimages/slide/5.jpg" alt="">
					<figcaption
						class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
						residential</figcaption> </a>
			</figure>

			<figure data-uk-filter="commercial" data-my-category="1999"
				class="uk-width-small-1-2 uk-width-medium-1-3 uk-overlay uk-overlay-hover">
				<a href="" data-uk-modal="{target:'#my-id'}"><img
					class="uk-overlay-scale" src="wvsimages/slide/4.jpg" alt="">
					<figcaption
						class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
						commercial</figcaption> </a>
			</figure>
			<figure data-uk-filter="residential" data-my-category="1995"
				class="uk-width-small-1-2 uk-width-medium-1-3 uk-overlay uk-overlay-hover">
				<a href="" data-uk-modal="{target:'#my-id'}"><img
					class="uk-overlay-scale" src="wvsimages/slide/3.jpg" alt="">
					<figcaption
						class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
						residential</figcaption> </a>
			</figure>
			<figure data-uk-filter="corporate" data-my-category="1992"
				class="uk-width-small-1-2 uk-width-medium-1-3 uk-overlay uk-overlay-hover">
				<a href="" data-uk-modal="{target:'#my-id'}"><img
					class="uk-overlay-scale" src="wvsimages/slide/2.jpg" alt="">
					<figcaption
						class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
						corporate</figcaption> </a>
			</figure>
			<figure data-uk-filter="corporate" data-my-category="1992"
				class="uk-width-small-1-2 uk-width-medium-1-3 uk-overlay uk-overlay-hover">
				<a href="" data-uk-modal="{target:'#my-id'}"><img
					class="uk-overlay-scale" src="wvsimages/slide/2.jpg" alt="">
					<figcaption
						class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
						corporate</figcaption> </a>
			</figure>
			<figure data-uk-filter="residential" data-my-category="1995"
				class="uk-width-small-1-2 uk-width-medium-1-3 uk-overlay uk-overlay-hover">
				<a href="" data-uk-modal="{target:'#my-id'}"><img
					class="uk-overlay-scale" src="wvsimages/slide/3.jpg" alt="">
					<figcaption
						class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
						residential</figcaption> </a>
			</figure>
			<figure data-uk-filter="commercial" data-my-category="1999"
				class="uk-width-small-1-2 uk-width-medium-1-3 uk-overlay uk-overlay-hover">
				<a href="" data-uk-modal="{target:'#my-id'}"><img
					class="uk-overlay-scale" src="wvsimages/slide/4.jpg" alt="">
					<figcaption
						class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
						commercial</figcaption> </a>
			</figure>
			<figure data-uk-filter="residential" data-my-category="2015"
				class="uk-width-small-1-2 uk-width-medium-1-3 uk-overlay uk-overlay-hover">
				<a href="" data-uk-modal="{target:'#my-id'}"><img
					class="uk-overlay-scale" src="wvsimages/slide/5.jpg" alt="">
					<figcaption
						class="uk-overlay-panel uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background">
						residential</figcaption> </a>
			</figure>
		</section>
	</article>

	<div class=" block " id="people" style="padding-top: 50px;">

		<div class="uk-text-center">
			<h1>PEOPLE</h1>

			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br>
		</div>
	</div>
	<div class="block" id="contact">

		<div class="uk-text-center">
			<h1>CONTACT</h1>
			<br> <br> <br>
			<h3>Soi Pradipat 10, Pradipat Road, Samsen Nai, Phaya Thai
				Bangkok 10400</h3>
			<br>
			<h2>
				+66(0)2 618 4318 <br> <br> wvs2556@gmail.com
			</h2>
		</div>
		<br> <br> <br>
		<div class=" uk-grid ">
			<div class="uk-width-1-10 uk-container-center">
				<a href="index.jsp"><img src="wvsimages/vsa logo black.png" alt="" /></a>
			</div>
		</div>
		<br>
		<div class="footer uk-text-center">
			<p>Design by WVS Interior Design</p>
		</div>

	</div>

	<!-- This is the modal -->
	<div id="my-id" class="uk-modal">
		<div class="uk-modal-dialog">
			<a class="uk-modal-close uk-close"></a>
			<div class="fotorama " data-nav="thumbs" data-allowfullscreen="true"
				data-loop="true">
				<img src="wvsimages/slide/2.jpg" alt="" /> <img
					src="wvsimages/slide/3.jpg" alt="" /> <img src="wvsimages/slide/4.jpg"
					alt="" /> <img src="wvsimages/slide/5.jpg" alt="" />
			</div>

		</div>
	</div>
	<script type="text/javascript">
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
</body>
</html>