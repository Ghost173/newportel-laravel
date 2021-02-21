@php
	$seo = DB::table('seos')->first();
@endphp


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="author" content="{{$seo->meta_auther}}">
		<meta name="keywords" content="{{$seo->meta_keyword}}">
		<meta name="description" content="{{$seo->meta_description}}">
		<meta name="google-verification" content="{{$seo->google_verification}}">
		<meta name="alexa-verification" content="{{$seo->alexa_analytics}}">
		@if($seo->meta_description)
		<title>{{$seo->meta_title}}</title>
		@endif 

        <link href="{{asset('frontend/assets/css/bootstrap.min.css')}}" rel="stylesheet">
        <link href="{{asset('frontend/assets/css/menu.css')}}" rel="stylesheet">
        <link href="{{asset('frontend/assets/css/font-awesome.min.css')}}" rel="stylesheet">
        <link href="{{asset('frontend/assets/css/font-awesome.css')}}" rel="stylesheet">
        <link href="{{asset('frontend/assets/css/responsive.css')}}" rel="stylesheet">
        <link href="{{asset('frontend/assets/css/owl.carousel.min.css')}}" rel="stylesheet">
        <link href="{{asset('frontend/style.css')}}" rel="stylesheet">

		<script type="text/javascript" 
		src="https://platform-api.sharethis.com/js/sharethis.js#property=60316ed587b2b10012be01ba&product=inline-share-buttons" 
		async="async"></script>
    </head>
    <body>
	<!-- header-start -->
	@include('main.body.header')
	<!-- /.header-close -->
	
    <!-- top-add-start -->
<!-- /.top-add-close -->
	
	<!-- date-start -->
    <!-- /.date-close -->  

	<!-- notice-start -->
	 
     

	<!-- 1st-news-section-start -->	
	@yield('content')
	
	<!-- middle-footer-start -->	
	@include('main.body.botsoc')
	
	@include('main.body.footer')
	
	
	
	
	
		<script src="{{asset('frontend/assets/js/jquery.min.js')}}"></script>
		<script src="{{asset('frontend/assets/js/bootstrap.min.js')}}"></script>
		<script src="{{asset('frontend/assets/js/main.js')}}"></script>
		<script src="{{asset('frontend/assets/js/owl.carousel.min.js')}}"></script>
	</body>
</html> 