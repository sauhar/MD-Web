@extends('layouts.app')


@section('breadcump')
				<!-- Breadcrumb Area -->
				<div id="cr-breadcrumb-area" class="cr-breadcrumb-area bg-image--2 section-padding--md" data-overlay="8">
					<div class="container">
						<div class="cr-breadcrumb">
							<div class="cr-breadcrumb__left">
								<h2>Message from bussiness development director</h2>
								
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
							

						</section>
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