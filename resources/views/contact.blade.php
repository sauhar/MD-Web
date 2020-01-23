@extends('layouts.app')
@section('title')
<title>Contact</title>
@endsection
@section('content')

		<!-- Page Conent -->
		<main class="page-content">

			<!-- Pg Contact -->
			<div class="pg-contact bg--white">

				<!-- Contact Form -->
				<div class="pg-contact-form-area bg--white section-padding--xlg">
					<div class="container">
						<div class="row">
							<div class="col-lg-6 col-12">
								<div class="pg-appintment">
									<div class="pg-appintment__title">
									<h1>contact</h1>

										@if(Session::has('success'))
										<div class="alert alert-success">
											{{ Session::get('success') }}
										</div>
										@endif

										{!! Form::open(['route'=>'contact.store']) !!}

										<div class="form-group {{ $errors->has('name') ? 'has-error' : '' }}">
											{!! Form::label('Name:') !!}
											{!! Form::text('name', old('name'), ['class'=>'form-control', 'placeholder'=>'Name']) !!}
										<span class="text-danger">{{ $errors->first('name') }}</span>
										</div>


										<div class="form-group {{ $errors->has('phone') ? 'has-error' : '' }}">
											{!! Form::label('Phone:') !!}
											{!! Form::text('phone', old('phone'), ['class'=>'form-control', 'placeholder'=>'Phone']) !!}
										<span class="text-danger">{{ $errors->first('phone') }}</span>
										</div>

										<div class="form-group {{ $errors->has('email') ? 'has-error' : '' }}">
											{!! Form::label('Email:') !!}
											{!! Form::text('email', old('email'), ['class'=>'form-control', 'placeholder'=>'Email']) !!}
										<span class="text-danger">{{ $errors->first('email') }}</span>
										</div>

										<div class="form-group {{ $errors->has('address') ? 'has-error' : '' }}">
											{!! Form::label('Address:') !!}
											{!! Form::text('address', old('address'), ['class'=>'form-control', 'placeholder'=>'Address']) !!}
										<span class="text-danger">{{ $errors->first('address') }}</span>
										</div>

										<div class="form-group {{ $errors->has('message') ? 'has-error' : '' }}">
											{!! Form::label('Message:') !!}
											{!! Form::textarea('message', old('message'), ['class'=>'form-control', 'placeholder'=>'Message']) !!}
										<span class="text-danger">{{ $errors->first('message') }}</span>
										</div>


										<div class="g-recaptcha" data-sitekey="6LcHFs4UAAAAACVz26vAbgorvAO-aiE9nGQotzxS"></div>



										<div class="form-group">
										<button class="btn btn-success">Send mail</button>
										</div>
										

										{!! Form::close() !!}

										<p class="form-message"></p>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-12">
								<div class="pg-contact__content">
									<h1>say hello to us</h1>
									<p>MAHAD MANPOWER.PVT.LTD</p>
									<div class="pg-contact__blocks">
										<div class="single-block">
											
										<h6>Address:</h6>
										<p> {{$contactsides->address}} </p>

										<br/>
										<h6>Phone:</h6>
										<p> {{$contactsides->phone}} </p>

										<br/>
										<h6>Fax:</h6>
										<p> {{$contactsides->fax}} </p>

										<br/>
										<h6>Email:</h6>
										<p> {{$contactsides->email}} </p>
											<div>
									
										{{-- <div class="single-block address">
											<h6>address</h6>
											<p>Tinkune, Kathmandu, Nepal</p>
										</div>
										<div class="single-block phone">
											<h6>Phone</h6>
											<p><a href="#">+977 1 4112456,</a></p>
										</div>
											<div class="single-block web">
											<h6>Fax</h6>
											<p><a href="#">+977 1 4112457</a></p>
										</div>
										<div class="single-block web">
											<h6>Web</h6>
											<p><a href="#">info@mahadmanpower.com.np</a></p>
											<p><a href="#">www.mahadmanpower.com.np</a></p>
										</div> --}}
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--// Contact Form -->

				<!-- Google Map -->
				<!-- <div class="google-map-wrapper">
					<div id="google-map" class="google-map"></div>
				</div> -->
				<!--// Google Map -->

			</div>
			<!--// Pg Contact -->

			<!-- Call To Action Area -->
			<!-- <section class="cta-area section-padding--md bg--grey--light bg--abstruct-mask">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-xl-9 col-lg-10">
							<div class="calltoaction text-center">
								<h3>NEED HELP FOR YOUR <span class="color--theme">FINANCIAL CONSULTING ?</span>
								</h3>
								<p>Perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem
									aperiam, eaque ipsa Neque.</p>
								<div class="calltoaction-button mt-4">
									<span class="calltoaction-icon"><i class="flaticon-phone"></i></span>
									<a href="callto://+00812548359874">+008 12548 359 874</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section> -->
			<!--// Call To Action Area -->

		</main>
		<!-- //Page Conent -->
	
@endsection

@section('breadcump')
		<!-- Breadcrumb Area -->
		<div id="cr-breadcrumb-area" class="cr-breadcrumb-area bg-image--2 section-padding--md" data-overlay="8">
			<div class="container">
				<div class="cr-breadcrumb">
					<div class="cr-breadcrumb__left">
						<h2>Contact Us</h2>
						{{-- <p>Nihil culpa beatae officiis temporibus vel vel asperiores in ut.</p> --}}
					</div>
					{{-- <div class="cr-breadcrumb__right">
						<ul class="cr-breadcrumb__pagination">
							<li>
								<a href="index.html">Home</a>
							</li>
							<li>Contact Us</li>
						</ul>
					</div> --}}
				</div>
			</div>
		</div>
		<!--// Breadcrumb Area -->
@endsection

@section('title')
	Contact
@endsection