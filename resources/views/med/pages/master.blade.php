<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Medstepbd</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
		<link rel="stylesheet" href="{{ asset('public/med/css/open-iconic-bootstrap.min.css') }}">
		<link rel="stylesheet" href="{{ asset('public/med/css/animate.css') }}">

		<link rel="stylesheet" href="{{ asset('public/med/css/owl.carousel.min.css') }}">
		<link rel="stylesheet" href="{{ asset('public/med/css/owl.theme.default.min.css') }}">
		<link rel="stylesheet" href="{{ asset('public/med/css/magnific-popup.css') }}">
		<link rel="stylesheet" href="{{ asset('public/med/css/aos.css') }}">
		<link rel="stylesheet" href="{{ asset('public/med/css/ionicons.min.css') }}">

		<link rel="stylesheet" href="{{ asset('public/med/css/flaticon.css') }}">
		<link rel="stylesheet" href="{{ asset('public/med/css/icomoon.css') }}">
        <link rel="stylesheet" href="{{ asset('public/med/css/style.css') }}">
        <link rel="stylesheet" href="{{ asset('public/med/css/new.css') }}">

        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">


	</head>
	<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
		<div class="py-1 bg-black top">
			<div class="container">
				<div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
					<div class="col-lg-12 d-block">
						<div class="row d-flex">
							<div class="col-md pr-4 d-flex topper align-items-center">
								<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
								<span class="text">+ 880 1732379393</span>
							</div>
							<div class="col-md pr-4 d-flex topper align-items-center">
								<div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
								<span class="text">diuproject@email.com</span>
							</div>
							<div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right justify-content-end">
                                <marquee>We Are Medstepbd A Health Information Provider and Emergency Ambulance Service Provider Platform</marquee>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
			<div class="container">
				<a class="navbar-brand" href="{{ url('/') }}"><img src="{{ asset('public/med/images/mainlogo.png') }}" alt="logo" height="50" width="200"></a>
				<button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
				</button>
				<div class="collapse navbar-collapse" id="ftco-nav">
					<ul class="navbar-nav nav ml-auto">
						<li class="nav-item"><a href="{{ url('/') }}" class="nav-link"><span>Home</span></a></li>
						<li class="nav-item"><a href="{{ url('/#about-section') }}" class="nav-link"><span>About</span></a></li>
						<li class="nav-item"><a href="{{ url('/#service_section') }}" class="nav-link"><span>Services</span></a></li>
						<li class="nav-item"><a href="{{ url('/amb_provider') }}" class="nav-link"><span>Service Provider</span></a></li>
						<li class="nav-item"><a href="{{ url('/#blog-section') }}" class="nav-link"><span>Blog</span></a></li>
						<li class="nav-item"><a href="{{ url('/#contact-section') }}" class="nav-link"><span>Contact</span></a></li>

						<!--------- Different contents Here----------->

						@yield('content')

						<!----------Footer------------->
						<footer class="ftco-footer ftco-section img" style="background-image: url(public/med/images/footer-bg.jpg);">
							<div class="overlay"></div>
							<div class="container-fluid px-md-5">
								<div class="row mb-5">
									<div class="col-md">
										<div class="ftco-footer-widget mb-4">
											<h2 class="ftco-heading-2">MedstepBd</h2>
											<p>We Are Medstepbd A Health Information Provider and Emergency Ambulance Service Provider Platform</p>
											<ul class="ftco-footer-social list-unstyled mt-5">
												<li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
												<li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
												<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
											</ul>
										</div>
									</div>

									<div class="col-md">
										<div class="ftco-footer-widget mb-4 ml-md-4">
											<h2 class="ftco-heading-2">Links</h2>
											<ul class="list-unstyled">
												<li><a href="{{ url('/') }}"><span class="icon-long-arrow-right mr-2"></span>Home</a></li>
												<li><a href="{{ url('/#about-section') }}"><span class="icon-long-arrow-right mr-2"></span>About</a></li>
												<li><a href="{{ url('/#service_section') }}"><span class="icon-long-arrow-right mr-2"></span>Services</a></li>
												<li><a href="{{ url('/amb_provider') }}"><span class="icon-long-arrow-right mr-2"></span>Service Provider</a></li>
												<li><a href="{{ url('/#blog-section') }}"><span class="icon-long-arrow-right mr-2"></span>Blog</a></li>
												<li><a href="{{ url('/#contact-section') }}"><span class="icon-long-arrow-right mr-2"></span>Contact</a></li>
											</ul>
										</div>
									</div>
									<div class="col-md">
										<div class="ftco-footer-widget mb-4">
											<h2 class="ftco-heading-2">Services</h2>
											<ul class="list-unstyled">
												<li><a href="{{ route('appointment') }}"><span class="icon-long-arrow-right mr-2"></span>Emergency Ambulance Services</a></li>
												<li><a href="{{ url('/main') }}"><span class="icon-long-arrow-right mr-2"></span>Find Hospital</a></li>
												<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Home Checkup Service</a></li>
												<li><a href="#"><span class="icon-long-arrow-right mr-2"></span>24 Hours Medicine</a></li>
											</ul>
										</div>
									</div>
									<div class="col-md">
										<div class="ftco-footer-widget mb-4">
											<h2 class="ftco-heading-2">Have a Questions?</h2>
											<div class="block-23 mb-3">
												<ul>
													<li><span class="icon icon-map-marker"></span><span class="text">Dattapara, Ashulia, Savar, Dhaka</span></li>
													<li><a href="#"><span class="icon icon-phone"></span><span class="text">+880 1732379393</span></a></li>
													<li><a href="#"><span class="icon icon-envelope pr-4"></span><span class="text">diuproject@gmail.com</span></a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>

							</div>
						</footer>


						<!-- loader -->
						<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
						<script src="{{ asset('public/med/js/jquery.min.js') }}"></script>
						<script src="{{ asset('public/med/js/jquery-migrate-3.0.1.min.js') }}"></script>
						<script src="{{ asset('public/med/js/popper.min.js') }}"></script>
						<script src="{{ asset('public/med/js/bootstrap.min.js') }}"></script>
						<script src="{{ asset('public/med/js/jquery.easing.1.3.js') }}"></script>
						<script src="{{ asset('public/med/js/jquery.waypoints.min.js') }}"></script>
						<script src="{{ asset('public/med/js/jquery.stellar.min.js') }}"></script>
						<script src="{{ asset('public/med/js/owl.carousel.min.js') }}"></script>
						<script src="{{ asset('public/med/js/jquery.magnific-popup.min.js') }}"></script>
						<script src="{{ asset('public/med/js/aos.js') }}"></script>
						<script src="{{ asset('public/med/js/jquery.animateNumber.min.js') }}"></script>
						<script src="{{ asset('public/med/js/scrollax.min.js') }}"></script>
						<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
						<script src="{{ asset('public/med/js/google-map.js') }}"></script>

						<script src="{{ asset('public/med/js/main.js') }}"></script>
						<script>
							// direct browser to top right away
						if (window.location.hash)
						scroll(0,0);
						// takes care of some browsers issue
						setTimeout(function(){scroll(0,0);},1);
						$(function(){
						//your current click function
						$('.scroll').on('click',function(e){
						e.preventDefault();
						$('html,body').animate({
						scrollTop:$($(this).attr('href')).offset().top + 'px'
						},1000,'swing');
						});
						// if we have anchor on the url (calling from other page)
						if(window.location.hash){
						// smooth scroll to the anchor id
						$('html,body').animate({
						scrollTop:$(window.location.hash).offset().top + 'px'
						},1000,'swing');
						}
						});

						</script>

					</body>
				</html>
