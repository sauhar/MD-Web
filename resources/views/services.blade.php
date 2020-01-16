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
									<a href="/services/overseas-recruitment">Overseas Recruitment</a>
								</h5>
								<p>Mahad Manpower is a professional HR management organization in Nepal, </p> 
								{{-- <p>Our sourcing professionals have extensive backgrounds and proficiency in a varied scope of global industries.</p> --}}
								<a href="services/overseas-recruitment" class="cr-btn">
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
									<a href="/services/training-and-orientation">Training and Orientation</a>
								</h5>
								<p>We have managed the training as per the requirement of the particular candidate no matter </p>
								<a href="services/training-and-orientation" class="cr-btn">
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
									<a href="services/travel-management">Travel Management</a>
								</h5>
								<p>Once Contract signing with the employee is done, travel arrangement becomes the final </p>
								<a href="services/travel-management" class="cr-btn">
									<span>Read More</span>
								</a>
							</div>
						</div>
					</div>
				
				</div>
			</div>
			
	

		</section> 










		<!-- Portfolio Area -->
			
			<!--// Portfolio Area -->





		



@endsection


@section('title')
	About
@endsection