<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>MedstepBd</title>
    <link href="{{asset('public/frontEnd/css/bootstrap.min.css')}}" rel="stylesheet">
    <link href="{{asset('public/frontEnd/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{asset('public/frontEnd/css/prettyPhoto.css')}}" rel="stylesheet">
    <link href="{{asset('public/frontEnd/css/price-range.css')}}" rel="stylesheet">
    <link href="{{asset('public/frontEnd/css/animate.css')}}" rel="stylesheet">
    <link href="{{asset('public/frontEnd/css/main.css')}}" rel="stylesheet">
    <link href="{{asset('public/frontEnd/css/responsive.css')}}" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="{{asset('public/frontEnd/js/html5shiv.js')}}"></script>
    <script src="{{asset('public/frontEnd/js/respond.min.js')}}"></script>
    <![endif]-->
    <link rel="stylesheet" href="{{asset('easyzoom/css/easyzoom.css')}}" />

        <!-- from med -->

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

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
</head><!--/head-->

<body>
@include('frontEnd.layouts.header')

@yield('content')
@include('frontEnd.layouts.footer')
<script src="{{asset('public/frontEnd/js/jquery.js')}}"></script>
<script src="{{asset('public/frontEnd/js/bootstrap.min.js')}}"></script>
<script src="{{asset('public/frontEnd/js/jquery.scrollUp.min.js')}}"></script>
<script src="{{asset('public/frontEnd/js/price-range.js')}}"></script>
<script src="{{asset('public/frontEnd/js/jquery.prettyPhoto.js')}}"></script>
<script src="{{asset('public/frontEnd/js/main.js')}}"></script>
<script src="{{asset('easyzoom/dist/easyzoom.js')}}"></script>
<script>
    // Instantiate EasyZoom instances
    var $easyzoom = $('.easyzoom').easyZoom();

    // Setup thumbnails example
    var api1 = $easyzoom.filter('.easyzoom--with-thumbnails').data('easyZoom');

    $('.thumbnails').on('click', 'a', function(e) {
        var $this = $(this);

        e.preventDefault();

        // Use EasyZoom's `swap` method
        api1.swap($this.data('standard'), $this.attr('href'));
    });

    // Setup toggles example
    var api2 = $easyzoom.filter('.easyzoom--with-toggle').data('easyZoom');

    $('.toggle').on('click', function() {
        var $this = $(this);

        if ($this.data("active") === true) {
            $this.text("Switch on").data("active", false);
            api2.teardown();
        } else {
            $this.text("Switch off").data("active", true);
            api2._init();
        }
    });
</script>

<!-- from med -->
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

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script>
            $.fn.stars = function() {
    return $(this).each(function() {
        var rating = $(this).data("rating");
        var fullStar = new Array(Math.floor(rating + 1)).join('<i class="fas fa-star"></i>');
        var halfStar = ((rating%1) !== 0) ? '<i class="fas fa-star-half-alt"></i>': '';
        var noStar = new Array(Math.floor($(this).data("numStars") + 1 - rating)).join('<i class="far fa-star"></i>');
        $(this).html(fullStar + halfStar + noStar);
    });
}

//ES6
$.fn.stars = function() {
    return $(this).each(function() {
        const rating = $(this).data("rating");
        const numStars = $(this).data("numStars");
        const fullStar = '<i class="fas fa-star"></i>'.repeat(Math.floor(rating));
        const halfStar = (rating%1!== 0) ? '<i class="fas fa-star-half-alt"></i>': '';
        const noStar = '<i class="far fa-star"></i>'.repeat(Math.floor(numStars-rating));
        $(this).html(`${fullStar}${halfStar}${noStar}`);
    });
}
        </script>
        <script>
            $(function(){
                $('.stars').stars();
            });
        </script>



</body>
</html>
