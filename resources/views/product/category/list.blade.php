@extends('layouts.master')

@section('title')
<title>Product | E-Shopper</title>
@endsection

@section('css')
<link rel="stylesheet" href="{{asset('home/home.css')}}">
@endsection

@section('js')
<link rel="stylesheet" href="{{asset('home/home.js')}}">
@endsection

@section('content')

<body>

	<section>
		<div class="container">
			<div class="row">
				<!--sidebar-->
				@include('components.sidebar')
				<!--sidebar-->

				<div class="col-sm-9 padding-right">

					<div class="features_items">
						<!--features_items-->
						<h2 class="title text-center">Features Items</h2>
						@foreach($saches as $sach)
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img id="bookfeature" src="{{config('app.base_url') . $sach->S_ViTri}}" alt="" />
										<h2>{{number_format($sach->S_GiaBan)}} VND</h2>
										<p>{{$sach->S_Ten}}</p>
										<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										<li><a href=""><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
										<li><a href=""><i class="fa fa-plus-square"></i>Add to compare</a></li>
									</ul>
								</div>
							</div>
						</div>
						@endforeach

						{{$saches->links()}}



					</div>
					<!--features_items-->
				</div>
			</div>
		</div>
	</section>


</body>
@endsection