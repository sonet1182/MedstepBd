@extends('frontEnd.layouts.master')
@section('title','Detial Page')
@section('slider')
@endsection
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                @include('frontEnd.layouts.category_menu')
            </div>
            <div class="col-sm-9 padding-right">
                @if(Session::has('message'))
                    <div class="alert alert-success text-center" role="alert">
                        {{Session::get('message')}}
                    </div>
                @endif
        <div class="product-details"><!--product-details-->

            <div class="col-sm-5">
                <div class="">
                    <a href="{{url('public/products/large',$detail_product->image)}}">
                        <img src="{{url('public/products/small',$detail_product->image)}}" alt="" id="dynamicImage" height="300px" width="100%"/>
                    </a>

                    <?php $sum="0" ?>
                    @foreach($detail_product->attributes as $attrs)

                    <?php $sum += $attrs->stock; ?>

                    @endforeach

                    <?php
                    if (count($detail_product->attributes)=="0") {
                        $avg = "0";
                    } else {
                        $avg = $sum / count($detail_product->attributes);
                    }
                    ?>
                    <h1 class="text-center pt-5"><a href="{{$detail_product->p_code}}" class="btn btn-danger py-3 px-5 text-center">Visit Website</a></h1>
                    <h3 class="pt-5 text-center">Rating: {{ $avg }} <h3>
                    <div class=""><h1 class="text-primary text-center pt-1"><span class="stars" data-rating="{{ $avg }}" data-num-stars="5" ></h1></span></div>
                    <h1 class="text-center"><a href="{{route('product_att.show',$detail_product->id)}}" class="btn btn-success py-3 px-5 text-center">Drop Review Here</a></h1>


                </div>




            </div>
            <div class="col-sm-7">
                <form action="{{route('addToCart')}}" method="post" role="form">
                    <iframe src="{{$detail_product->p_color}}" frameborder="0" width="100%" height="300"></iframe>
                    <h1 class="text-primary text-center pt-3">{{$detail_product->p_name}}</h1>
                    <p>{{$detail_product->description}}</p>


                </form>

            </div>
        </div><!--/product-details-->

        <div class="category-tab shop-details-tab"><!--category-tab-->
            <div class="col-sm-12">
                <ul class="nav nav-tabs">
                    <li><a href="" data-toggle="tab">Reviews</a></li>
                </ul>

            </div>

            <div class="tab-content">
                <div class="" id="details" >
                    @foreach($detail_product->attributes as $attrs)
                    <div class="row">
                        <div class="col-6"><h2 class="text-primary">{{$attrs->sku}}</h2></div>
                        <div class="col-6"><span class="stars" data-rating="{{$attrs->stock}}" data-num-stars="5" ></span></div>
                    </div>
                    <div class="row">
                        <div class="col-6"><p>{{$attrs->price}}</p></div>
                    </div>

                    @endforeach


                </div>

                <div class="tab-pane fade" id="reviews" >
                    <div class="col-sm-12">
                        <ul>
                            <li><a href=""><i class="fa fa-user"></i>EUGEN</a></li>
                            <li><a href=""><i class="fa fa-clock-o"></i>12:41 PM</a></li>
                            <li><a href=""><i class="fa fa-calendar-o"></i>31 DEC 2014</a></li>
                        </ul>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                        <p><b>Write Your Review</b></p>

                        <form action="#">
										<span>
											<input type="text" placeholder="Your Name"/>
											<input type="email" placeholder="Email Address"/>
										</span>
                            <textarea name="" ></textarea>
                            <b>Rating: </b> <img src="{{asset('frontEnd/images/product-details/rating.png')}}" alt="" />
                            <button type="button" class="btn btn-default pull-right">
                                Submit
                            </button>
                        </form>
                    </div>
                </div>

            </div>
        </div><!--/category-tab-->

        <div class="recommended_items"><!--recommended_items-->
            <h2 class="title text-center bg-light">Hospitals Near of You</h2>

            <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <?php $countChunk=0;?>
                    @foreach($relateProducts->chunk(3) as $chunk)
                        <?php $countChunk++; ?>
                        <div class="item<?php if($countChunk==1){ echo' active';} ?>">
                            @foreach($chunk as $item)
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <a href="{{url('/product-detail',$detail_product->id)}}">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="{{url('public/products/small',$item->image)}}" alt="" style="width: 150px;"/>
                                                <h2>{{$item->p_name}}</h2>
                                            </div>
                                        </div>
                                        </a>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    @endforeach
                </div>
                <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                    <i class="fa fa-angle-left"></i>
                </a>
                <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                    <i class="fa fa-angle-right"></i>
                </a>
            </div>
        </div><!--/recommended_items-->

    </div>
        </div>
    </div>
@endsection
