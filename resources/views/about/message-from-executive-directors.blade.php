@extends('layouts.app')


@section('breadcump')
				<!-- Breadcrumb Area -->
				<div id="cr-breadcrumb-area" class="cr-breadcrumb-area bg-image--2 section-padding--md" data-overlay="8">
					<div class="container">
						<div class="cr-breadcrumb">
							<div class="cr-breadcrumb__left">
								<h2>Message from executive director</h2>
								
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
		<main class="page-content">
			<div class="cr-section pg-blogs-area section-padding--xlg bg--white">
				<div class="container">
				<div class="row">
					<div class="col-lg-8">
					<div class="widgets sidebar-widgets">

						<section class="single-widget widget-categories">

								<h6>{{ $ourpage->title }}</h6>
								{!! $ourpage->body !!}
								<img src="{{ Voyager::image($ourpage->image) }}" alt="">
							


								<section id="team-area">
									<div class="container">
										<div class="row">
											<div class="col-lg-8 offset-lg-2 col-md-10 offset-md-1 col-12 offset-0">
												<div class="section-title text-center">
													{{-- <h4>OUR TEAM</h4> --}}
													<h2>Executives Directors
														{{-- <span class="color--theme"> Executives Directors</span> --}}
													</h2>
													{{-- <p>Our Executives have a combined recruitment consultancy experience spanning over ten years in a wide variety of industry sectors.</p> --}}
												</div>
											</div>
										</div>
										<div class="row justify-content-center">
										@foreach($executives as $executive)
											<!-- Single Advisor -->
											<div class="col-lg-12 col-md-6 col-12">
												<figure class="team">
													<div class="team__header mb-2">
														{{-- <div class="team__image"> --}}
															
																<img style="width:125px; height:150px" class="rounded mx-auto d-block" src="{{ Voyager::image($executive->photo) }}" alt="team member thumb">
															
															
														{{-- </div> --}}
														{{-- <div class="team__social"> --}}
															{{-- <ul>
																<li class="facebook"><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li> --}}
																{{-- <li class="twitter"><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li> --}}
																{{-- <li class="google-plus"><a href="https://plus.google.com/"><i class="fa fa-google-plus"></i></a></li> --}}
															{{-- </ul>
														</div> --}}
													</div>
												  
													<figcaption class="team__content">
														{{-- <h5>
															{{$executive->name}}
														</h5> --}}
														<div	class="portfolio-area --xlg">
														
														{!! $executive->message !!}
													</div>
														{{-- <p>Chairman</p> --}}
													</figcaption>
												</figure>
											
											</div>
									
											@endforeach
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




						</section>
					</div>
					</div>
					<div class="col-lg-4">
						<div class="widgets sidebar-widgets">

							<section class="single-widget widget-categories">
									<h6>Categories</h6>
									<ul>
										{{-- @foreach ($ourpages as $ourpage) --}}
										{{-- @if($ourpage->id==1 || $ourpage->id==2 ||$ourpage->id==3 || $ourpage->id==4 || $ourpage->id==5 || $ourpage->id==6) --}}
											{{-- <li><a href="/pages/{{ $ourpage->slug }}">{{$ourpage->title}}</a></li> --}}
											{{-- @endif --}}
										{{-- @endforeach --}}

										@foreach ($lists as $list)
										{{-- @if($ourpage->id==1 || $ourpage->id==2 ||$ourpage->id==3 || $ourpage->id==4 || $ourpage->id==5 || $ourpage->id==6) --}}
											<li><a href="/pages/{{ $list->url }}">{{$list->title}}</a></li>
											{{-- @endif --}}
										@endforeach

										{{-- <li><a href="blog-with-right-sidebar.html">Our Licence And Certificate</a></li> --}}
										{{-- <li><a href="blog-with-right-sidebar.html">list 5</a></li>
										<li><a href="blog-with-right-sidebar.html">list 6</a></li> --}}
									</ul>
							</section>
						</div>
					</div>
				</div>
				</div>
			</div>

		</main>
@endsection

@section('title')
	About
@endsection