<!doctype html>
<html class="no-js" lang="zxx">


<!-- Mirrored from preview.hasthemes.com/fsulting-v2/fsulting/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 26 Nov 2019 05:54:49 GMT -->
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Mahad Manpower</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">


 
<!--  jQuery 1.7+  -->
{{-- <script src="/js/vendor/jquery-3.2.1.min.js"></script> --}}
 
<!-- Include js plugin -->
<link rel="stylesheet" href="/js/owl.carousel.min.css">
<link rel="stylesheet" href="/js/owl.theme.default.min.css">
	

	
	<!-- Favicons -->
	<link rel="shortcut icon" href="images/logo.ico">
	<link rel="apple-touch-icon" href="images/icon.png">

	<!-- Google font (font-family: 'Poppins', sans-serif;) -->
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,500,600,700" rel="stylesheet">
	<!-- Google font (font-family: 'Work Sans', sans-serif;) -->
	<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,600,700" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<link rel="stylesheet" href="/css/plugins.css">
	<link rel="stylesheet" href="/style.css">

	<!-- Cusom css -->
	<link rel="stylesheet" href="/css/custom.css">

	<!-- Modernizer js -->
	<script src="/js/vendor/modernizr-3.5.0.min.js"></script>

<!-- CSRF Token -->
<meta name="csrf-token" content="{{ csrf_token() }}">

<title>{{ config('app.name', 'MAHAD-MANPOWER') }}</title>

<!-- Styles -->
<link href="{{ asset('css/app.css') }}" rel="stylesheet">
<script src="https://www.google.com/recaptcha/api.js" async defer></script>

</head>

<body>
	@include('include.header')
		<!-- //Header -->

		<!-- Top Banner -->
		@yield('breadcump')
		<!-- //Top Banner -->
		@yield('banner')

		<!-- Page Conent -->
		@yield('content')
		<!-- //Page Conent -->

		<!-- Footer Area -->
		@include('include.footer')
		<!-- //Footer Area -->

	</div>
	<!-- //Main wrapper -->

	<!-- JS Files -->

	@yield('script')
	<script src="/js/vendor/jquery-3.2.1.min.js"></script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/plugins.js"></script>
	<script src="/js/active.js"></script>
	<script src="/js/scripts.js"></script>
</body>


<!-- Mirrored from preview.hasthemes.com/fsulting-v2/fsulting/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 26 Nov 2019 05:56:13 GMT -->
</html>