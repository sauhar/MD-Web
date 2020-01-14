@extends('layouts.app')


@section('breadcump')
				<!-- Breadcrumb Area -->
				<div id="cr-breadcrumb-area" class="cr-breadcrumb-area bg-image--2 section-padding--md" data-overlay="8">
					<div class="container">
						<div class="cr-breadcrumb">
							<div class="cr-breadcrumb__left">
								<h2>Licence and certificate</h2>
								
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
			{{-- <div class="cr-section pg-blogs-area section-padding--xlg bg--white"> --}}
                <div id="portfolio-area" class="portfolio-area bg--grey section-padding--xlg">
				<div class="container">
				<div class="row">
					<div class="col-lg-8">
					<div class="widgets sidebar-widgets">

						<section class="single-widget widget-categories">

								<h6>{{ $ourpage->title }}</h6>
								{{-- {!! $ourpage->body !!}
								<img src="{{ Voyager::image($ourpage->image) }}" alt=""> --}}
							

                        </section>
                        

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
    
                            <div class="col-md-3 col-sm-3 col-6 portfolio-item filter-completed">
                                <div class="portfolio">
                                    <div class="portfolio-image">
                                        <img src="/images/license-certificate/License.jpg" alt="licence image">
                                    </div>
                                    <div class="portfolio-content">
                                        <h5><a href="/client/qatar">License</a></h5>
                                        {{-- <h6>Recent</h6> --}}
                                    </div>
                                    <a href="/images/license-certificate/lg/PAN.jpg" class="portfolio-zoomicon"><i class="pe-7s-search"></i></a>
                                </div>
                            </div>
    
                            <div class="col-md-3 col-sm-3 col-6 portfolio-item filter-recent">
                                <div class="portfolio">
                                    <div class="portfolio-image">
                                        <img src="/images/license-certificate/OCR.jpg" alt="OCR image">
                                    </div>
                                    <div class="portfolio-content">
                                        <h5><a href="/client/UAE">OCR</a></h5>
                                        {{-- <h6>Recent</h6> --}}
                                    </div>
                                    <a href="/images/license-certificate/lg/OCR.jpg" class="portfolio-zoomicon"><i class="pe-7s-search"></i></a>
                                </div>
                            </div>
    
                            <div class="col-md-3 col-sm-3 col-6 portfolio-item filter-recent filter-completed">
                                <div class="portfolio">
                                    <div class="portfolio-image">
                                        <img src="/images/license-certificate/PAN.jpg" alt="PAN image">
                                    </div>
                                    <div class="portfolio-content">
                                        <h5><a href="/client/saudi-arabia">PAN</a></h5>
                                        {{-- <h6>Recent</h6> --}}
                                    </div>
                                    <a href="/images/license-certificate/lg/PAN.jpg" class="portfolio-zoomicon"><i class="pe-7s-search"></i></a>
                                </div>
                            </div>
    
                            {{-- <div class="col-md-6 col-sm-6 col-6 portfolio-item filter-running">
                                <div class="portfolio">
                                    <div class="portfolio-image">
                                        <img src="images/portfolio/malaysia.jpg" alt="portofolio image">
                                    </div>
                                    <div class="portfolio-content">
                                        <h5><a href="/client/malaysia">malaysia</a></h5>
                                        {{-- <h6>Recent</h6> --}}
                                    {{-- </div>
                                    <a href="images/portfolio/lg/malaysia.jpg" class="portfolio-zoomicon"><i class="pe-7s-search"></i></a>
                                </div>
                            </div>  --}}
    
                        </div>



					</div>
					</div>
					<div class="col-lg-4">
						<div class="widgets sidebar-widgets">

							<section class="single-widget widget-categories">
									<h6>Categories</h6>
									<ul>
                                        @foreach ($ourpages as $ourpage)
                                        
											<li><a href="/about/{{ $ourpage->slug }}">{{$ourpage->title}}</a></li>
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