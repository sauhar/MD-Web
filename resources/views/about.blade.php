@extends('layouts.app')


@section('breadcump')
				<!-- Breadcrumb Area -->
				<div id="cr-breadcrumb-area" class="cr-breadcrumb-area bg-image--2 section-padding--md" data-overlay="8">
					<div class="container">
						<div class="cr-breadcrumb">
							<div class="cr-breadcrumb__left">
								<h2>About Us</h2>
								
							</div>
							
						</div>
					</div>
				</div>
				<!--// Breadcrumb Area -->
@endsection

@section('content')



{{-- <h1>Create Post</h1>

{!! Form::open(['action' => 'PostsController@store' , 'method' => 'POST' , 'enctype'=>'multipart/form-data']) !!}
<div class="form-group">
    {{Form::label('title', 'Title')}}  
    {{Form::text('title', '' , ['class'=>'form-control', 'placeholder' =>'Title'])}}  
</div>

<div class="form-group">
        {{Form::label('body', 'Body')}}  
        {{Form::textarea('body', '' , ['class'=>'form-control', 'placeholder' =>'Body Text'])}}  
    </div>
    
    <div class="form-group">
  {{Form::file('cover_image')}}
    </div>

{{Form::submit('Submit',['class' => 'btn btn-primary'])}}

{!! Form::close() !!} --}}

    
		<!-- Page Conent -->
		<section id="service-area" class="service-area section-padding--xlg bg--white">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-8 col-md-10 col-12">
						<div class="section-title text-center">
							<h4>OUR SERVICES</h4>
							<h2>PROVIDE BEST
								<span class="color--theme">SERVICES</span>
							</h2>
							<p>In this continuously increasing international challenge of recruitment environment, Mahad Manpower offers a wide range of services.</p>
						</div>
					</div>
				</div>
				<div class="row">

					<!-- Single Service -->
					<div class="col-lg-4 col-md-6 col-12 wow flipInX">
						<div class="service">
							<div class="service__icon">
								<i class="flaticon-bar-chart"></i>
							</div>
							<div class="service__content">
								<h5>
									<a href="/services/area-of-expert">AREA OF EXPERTISE</a>
								</h5>
								<p>Our Consultants are dedicated to their own sectors and have access to a unique overview.</p> 
								{{-- <p>Our sourcing professionals have extensive backgrounds and proficiency in a varied scope of global industries.</p> --}}
								<a href="services/area-of-expert" class="cr-btn">
									<span>Read More</span>
								</a>
								
									
										
							</div>
						</div>
					</div>
					<!--// Single Service -->

					<!-- Single Service -->
					<div class="col-lg-4 col-md-6 col-12 wow flipInX">
						<div class="service">
							<div class="service__icon">
								<i class="flaticon-growth"></i>
							</div>
							<div class="service__content">
								<h5>
									<a href="/services/core-services">CORE SERVICES</a>
								</h5>
								<p>Our Consultants provides their own best core services on your needs </p>
								<a href="services/core-services" class="cr-btn">
									<span>Read More</span>
								</a>
							</div>
						</div>
					</div>
					<!--// Single Service -->

					<!-- Single Service -->
					<div class="col-lg-4 col-md-6 col-12 wow flipInX">
						<div class="service">
							<div class="service__icon">
								<i class="flaticon-internet"></i>
							</div>
							<div class="service__content">
								<h5>
									<a href="services/other-services">OTHER SERVICES</a>
								</h5>
								<p>Our Consultant provides the other services along with the core and the expertise</p>
								<a href="services/other-services" class="cr-btn">
									<span>Read More</span>
								</a>
							</div>
						</div>
					</div>
					<!--// Single Service -->

					<!-- Single Service -->
					<!-- <div class="col-lg-4 col-md-6 col-12 wow flipInX">
						<div class="service">
							<div class="service__icon">
								<i class="flaticon-creative"></i>
							</div>
							<div class="service__content">
								<h5>
									<a href="single-service.html">CAR INSURANCE</a>
								</h5>
								<p>Perspiciatis unde omnis ist natus error sit voluptatem accusantium loremque tium totam rem per </p>
							</div>
						</div>
					</div> -->
					<!--// Single Service -->

					<!-- Single Service -->
					<!-- <div class="col-lg-4 col-md-6 col-12 wow flipInX">
						<div class="service">
							<div class="service__icon">
								<i class="flaticon-hand-shake"></i>
							</div>
							<div class="service__content">
								<h5>
									<a href="single-service.html">BUSINESS INSURANCE</a>
								</h5>
								<p>Perspiciatis unde omnis ist natus error sit voluptatem accusantium loremque tium totam rem per </p>
							</div>
						</div>
					</div> -->
					<!--// Single Service -->

					<!-- Single Service -->
					<!-- <div class="col-lg-4 col-md-6 col-12 wow flipInX">
						<div class="service">
							<div class="service__icon">
								<i class="flaticon-risk"></i>
							</div>
							<div class="service__content">
								<h5>
									<a href="single-service.html">INVESMENT PLANING</a>
								</h5>
								<p>Perspiciatis unde omnis ist natus error sit voluptatem accusantium loremque tium totam rem per </p>
							</div>
						</div>
					</div> -->
					<!--// Single Service -->

				</div>
			</div>
			<section id="team-area" class="advisor-area bg--white section-padding--xlg">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1 col-12 offset-0">
							<div class="section-title text-center">
								{{-- <h4>OUR TEAM</h4> --}}
								<h2>MEET OUR
									<span class="color--theme"> Executives</span>
								</h2>
								<p>Our Executives have a combined recruitment consultancy experience spanning over ten years in a wide variety of industry sectors.</p>
							</div>
						</div>
					</div>
					<div class="row justify-content-center">

						<!-- Single Advisor -->
						<div class="col-lg-4 col-md-6 col-12">
							<figure class="team">
								<div class="team__header">
									<div class="team__image">
										<img src="images/team/team-member-1.jpg" alt="team member thumb">
									</div>
									<div class="team__social">
										<ul>
											<li class="facebook"><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
											<li class="twitter"><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
											{{-- <li class="google-plus"><a href="https://plus.google.com/"><i class="fa fa-google-plus"></i></a></li> --}}
										</ul>
									</div>
								</div>
								<figcaption class="team__content">
									<h5>
										<a href="team-details.html">Ishor Shrestha</a>
									</h5>
									<p>Chairman</p>
								</figcaption>
							</figure>
						</div>
						<!--// Single Advisor -->

						<!-- Single Advisor -->
						<div class="col-lg-4 col-md-6 col-12">
							<figure class="team">
								<div class="team__header">
									<div class="team__image">
										<img src="images/team/team-member-2.jpg" alt="team member thumb">
									</div>
									<div class="team__social">
										<ul>
											<li class="facebook"><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
											<li class="twitter"><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
											{{-- <li class="google-plus"><a href="https://plus.google.com/"><i class="fa fa-google-plus"></i></a></li> --}}
										</ul>
									</div>
								</div>
								<figcaption class="team__content">
									<h5>
										<a href="team-details.html">Sait Bahadur Rai</a>
										
									</h5>
									<p>Managing Director</p>
									
								</figcaption>
							</figure>
						</div>
						<!--// Single Advisor -->

						<!-- Single Advisor -->
						{{-- <div class="col-lg-4 col-md-6 col-12">
							<figure class="team">
								<div class="team__header">
									<div class="team__image">
										<img src="images/team/team-member-3.jpg" alt="team member thumb">
									</div>
									<div class="team__social">
										<ul>
											<li class="facebook"><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
											<li class="twitter"><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
											<li class="google-plus"><a href="https://plus.google.com/"><i class="fa fa-google-plus"></i></a></li>
										</ul>
									</div>
								</div>
								<figcaption class="team__content">
									<h5>
										<a href="team-details.html">Roberto Carlos</a>
									</h5>
									<p>Assistant Manager</p>
								</figcaption>
							</figure>
						</div> --}}
						<!--// Single Advisor -->

					</div>
				</div>
			</section>
	

{{-- 		
		<div class="section-title text-center" >
		<h2>MEET OUR
			<span class="color--theme"> Global Clients</span>
		</h2>
		</div>
		<div class="slideshow-container">

			<div class="mySlides fade">
			  <div class="numbertext">1 / 3</div>
			  <img src="images/portfolio/portfolio-image-1.jpg" style="width:100%">
			  <div class="text">Caption Text</div>
			</div>
			
			<div class="mySlides fade">
			  <div class="numbertext">2 / 3</div>
			  <img src="images/portfolio/portfolio-image-2.jpg" style="width:100%">
			  <div class="text">Caption Two</div>
			</div>
			
			<div class="mySlides fade">
			  <div class="numbertext">3 / 3</div>
			  <img src="images/portfolio/portfolio-image-3.jpg"style="width:100%">
			  <div class="text">Caption Three</div>
			</div>
			
			</div>
			<br>
			
			<div style="text-align:center">
			  <span class="dot"></span> 
			  <span class="dot"></span> 
			  <span class="dot"></span> 
			</div>
			
			<script>
			var slideIndex = 0;
			showSlides();
			
			function showSlides() {
			  var i;
			  var slides = document.getElementsByClassName("mySlides");
			  var dots = document.getElementsByClassName("dot");
			  for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";  
			  }
			  slideIndex++;
			  if (slideIndex > slides.length) {slideIndex = 1}    
			  for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			  }
			  slides[slideIndex-1].style.display = "block";  
			  dots[slideIndex-1].className += " active";
			  setTimeout(showSlides, 2000); // Change image every 2 seconds
			}
			</script>
			
		</section> --}}










		<!-- Portfolio Area -->
			<div id="portfolio-area" class="portfolio-area bg--grey section-padding--xlg">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1 col-12 offset-0">
							<div class="section-title text-center">
								{{-- <h4>OUR WORKS</h4> --}}
								<h2>Meet OUR
									<span class="color--theme">GLOBAL CLIENT</span>
								</h2>
								{{-- <p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem
									aperiam, eaque
									ipsa quae</p> --}}
							</div>
						</div>
					</div>
					{{-- <div class="row">
						<div class="col-12">
							<div class="portfolio-filters text-center">
								<button class="is-active" data-filter="*">All</button>
								<button data-filter=".filter-recent">Recent</button>
								<button data-filter=".filter-running">Running</button>
								<button data-filter=".filter-completed">Completed</button>
							</div>
						</div>
					</div> --}}
					<div class="row portfolio-wrap portfolio-gallery-active">

						{{-- <div class="col-lg-4 col-md-6 col-12 portfolio-item filter-recent filter-running">
							<div class="portfolio">
								<div class="portfolio-image">
									<img src="images/portfolio/portfolio-image-1.jpg" alt="portofolio image">
								</div>
								<div class="portfolio-content">
									<h5><a href="portfolio-details.html">Necessitatibus blanditiis.</a></h5>
									<h6>Recent</h6>
								</div>
								<a href="images/portfolio/lg/portfolio-image-lg-1.jpg" class="portfolio-zoomicon"><i class="pe-7s-search"></i></a>
							</div>
						</div> --}}

						{{-- <div class="col-lg-4 col-md-6 col-12 portfolio-item filter-running filter-completed">
							<div class="portfolio">
								<div class="portfolio-image">
									<img src="images/portfolio/portfolio-image-2.jpg" alt="portofolio image">
								</div>
								<div class="portfolio-content">
									<h5><a href="portfolio-details.html">Necessitatibus blanditiis.</a></h5>
									<h6>Recent</h6>
								</div>
								<a href="images/portfolio/lg/portfolio-image-lg-2.jpg" class="portfolio-zoomicon"><i class="pe-7s-search"></i></a>
							</div>
						</div> --}}

						<div class="col-md-6 col-sm-6 col-6 portfolio-item filter-completed">
							<div class="portfolio">
								<div class="portfolio-image">
									<img src="images/portfolio/qatar.jpg" alt="portofolio image">
								</div>
								<div class="portfolio-content">
									<h5><a href="/client/qatar">Qatar</a></h5>
									{{-- <h6>Recent</h6> --}}
								</div>
								<a href="images/portfolio/lg/qatar.jpg" class="portfolio-zoomicon"><i class="pe-7s-search"></i></a>
							</div>
						</div>

						<div class="col-md-6 col-sm-6 col-6 portfolio-item filter-recent">
							<div class="portfolio">
								<div class="portfolio-image">
									<img src="images/portfolio/UAE.jpg" alt="portofolio image">
								</div>
								<div class="portfolio-content">
									<h5><a href="/client/UAE">UAE</a></h5>
									{{-- <h6>Recent</h6> --}}
								</div>
								<a href="images/portfolio/lg/UAE.jpg" class="portfolio-zoomicon"><i class="pe-7s-search"></i></a>
							</div>
						</div>

						<div class="col-md-6 col-sm-6 col-6 portfolio-item filter-recent filter-completed">
							<div class="portfolio">
								<div class="portfolio-image">
									<img src="images/portfolio/saudi.jpg" alt="portofolio image">
								</div>
								<div class="portfolio-content">
									<h5><a href="/client/saudi-arabia">Saudi-arabia</a></h5>
									{{-- <h6>Recent</h6> --}}
								</div>
								<a href="images/portfolio/lg/saudi.jpg" class="portfolio-zoomicon"><i class="pe-7s-search"></i></a>
							</div>
						</div>

						<div class="col-md-6 col-sm-6 col-6 portfolio-item filter-running">
							<div class="portfolio">
								<div class="portfolio-image">
									<img src="images/portfolio/malaysia.jpg" alt="portofolio image">
								</div>
								<div class="portfolio-content">
									<h5><a href="/client/malaysia">malaysia</a></h5>
									{{-- <h6>Recent</h6> --}}
								</div>
								<a href="images/portfolio/lg/malaysia.jpg" class="portfolio-zoomicon"><i class="pe-7s-search"></i></a>
							</div>
						</div>

					</div>
				</div>
			</div>
			<!--// Portfolio Area -->





		



@endsection


@section('title')
	About
@endsection