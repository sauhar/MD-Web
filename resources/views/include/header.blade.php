<!--[if lte IE 9]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
	<![endif]-->

	<!-- Add your site or application content here -->


	

	<!-- Main wrapper -->
	{{-- <div class="wrapper" id="wrapper"> --}}


		

		<!-- Header -->
		<header id="header" class="header sticky--header">

			<!-- Header Top Area -->
			<!-- <div class="header__top bg--blue">
				<div class="container">
					<div class="header__top__inner">
						<ul class="header__top__info">
							<li>
								<a href="#"><i class="fa fa-phone"></i>01354 568 787</a>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-envelope-o"></i> info@fsulting.com</a>
							</li>
						</ul>
						<div class="header__top__button">
							<a class="cr-btn cr-btn--lg" href="appointment.html">
								<span>Make an appointment</span>
							</a>
						</div>
					</div>
				</div>
			</div> -->
			<!--// Header Top Area -->

			<!-- Header Bottom Area -->
			<div class="header__bottom bg--white">
				<div class="container d-none d-lg-block">
					<div class="header__bottom__inner">
						<div class="header__logo">
							<a href="/">
								<img id="headerone" src="{{ Voyager::image($logoimage->image)}}" alt="header logo"  style="width: 200px;">
							</a>
						</div>

						<!-- Main Navigation -->
						<nav id="main-navigation" class="header__menu main-navigation">

							<ul>
								@foreach ($menus as $menu)

										@php
												$child=0;
												foreach($menus as $item){

													if($item->parent_id==$menu->id){
														$child=1;
													break;
													}

												}
										@endphp

									
									@if(!$menu->parent_id)
									<li class="@if($child==1) cr-dropdown @endif">
									<a href="{{ $menu->url }}">{{$menu->title}}</a>

									
								

								
											@if($child==1)
												<ul class="cr-dropdown-menu">

												@foreach ($menus as $submenu)
													@if($submenu->parent_id==$menu->id)
													<li>
														<a href="/pages/{{ $submenu->url }}">{{$submenu->title}}</a>
													</li>
													@endif
												@endforeach
														
												</ul>
											@endif
									</li>
									@endif
		
								@endforeach







								{{-- <nav id="main-navigation" class="header__menu main-navigation">

									<ul>
										@foreach ($menu_items as $menu_item)
		
												@php
														$child=0;
														foreach($menu_items as $item){
		
															if($item->parent_id==$menu_item->id){
																$child=1;
															break;
															}
		
														}
												@endphp
		
											
											@if(!$menu_item->parent_id)
											<li class="@if($child==1) cr-dropdown @endif">
											<a href="{{ $menu_item->url }}">{{$menu_item->title}}</a>
		
											
										
		
										
													@if($child==1)
														<ul class="cr-dropdown-menu">
		
														@foreach ($menuitems as $nextmenu)
															@if($nextmenu->parent_id==$menu_item->id)
															<li>
																<a href="{{ $nextmenu->url }}">{{$nextmenu->title}}</a>
															</li>
															@endif
														@endforeach
																
														</ul>
													@endif
											</li>
											@endif
				
										@endforeach --}}







								{{-- @if (Auth::guest())
									<li><a href="/posts/create">Create Post</a></li>
									<li><a href="/login">Login</a></li> 
									<li><a href="{{ route('register') }}">Register</a></li>
									
			
										@else

										@if(isset($type)=='admin')<li><a href="/create/create">Create Post</a></li>@endif
										<li class="cr-dropdown">
											<a href="#">
												{{ Auth::user()->name }} 
											</a>
											
											<ul class="cr-dropdown-menu" role="menu">
												

												<a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Logout</a>
												<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
													{{ csrf_field() }}
												</form>
											</ul>
										</li>
								@endif --}}



							</ul>

						</nav>
						<!--// Main Navigation -->

					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<div class="panel">
								{{-- @component('components.who')
									
								@endcomponent --}}
							</div>
						</div>
				</div>
				<!-- Mobile Menu -->
				<div class="container d-block d-lg-none">
					<div class="mobile-menu clearfix d-md-block d-lg-none">
						<a class="mobile-logo" href="index.html">
							<img src="/images/logo/logo-theme.png" alt="logo">
						</a>
					</div>
				</div>

				<!-- //Mobile Menu -->

			</div>
			<!--// Header Bottom Area -->

        </header>
        
        