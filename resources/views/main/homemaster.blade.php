<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Tamilworld Online News Site</title>

        <link href="{{asset('frontend/assets/css/bootstrap.min.css')}}" rel="stylesheet">
        <link href="{{asset('frontend/assets/css/menu.css')}}" rel="stylesheet">
        <link href="{{asset('frontend/assets/css/font-awesome.min.css')}}" rel="stylesheet">
        <link href="{{asset('frontend/assets/css/font-awesome.css')}}" rel="stylesheet">
        <link href="{{asset('frontend/assets/css/responsive.css')}}" rel="stylesheet">
        <link href="{{asset('frontend/assets/css/owl.carousel.min.css')}}" rel="stylesheet">
        <link href="{{asset('frontend/style.css')}}" rel="stylesheet">

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
	 
    <section>
    	<div class="container-fluid">
			<div class="row scroll">
				<div class="col-md-2 col-sm-3 scroll_01 ">
					Breaking News :
				</div>
				<div class="col-md-10 col-sm-9 scroll_02">
					<marquee>wellcome to our website...</marquee>
				</div>
			</div>
    	</div>
    </section>     

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