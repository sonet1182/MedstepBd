@extends('frontEnd.layouts.master')
@section('title','My Account Page')
@section('slider')
@endsection
@section('content')
    <div class="container">

        <div class="row justify-content-center mb-5 pb-2">
            <div class="col-md-8 text-center heading-section ftco-animate">
              <h2 class="mb-4 pt-3">ACCOUNT</h2>
              <p>No joint venture, partnership, employment, or agency relationship exists between you, the Company or any third party provider as a result of this Agreement or use of the Service.</p>
            </div>
          </div>

        <ul class="navbar-nav nav ml-auto">
            @if(Auth::check())
                        <li class="nav-item"><a href="{{ url('/logout') }}"><i class="fa fa-lock"></i> Logout </a>
                        </li>
                    @else
                         <li class="nav-item"><a href="{{url('/login_page')}}"><i class="fa fa-lock"></i> Login</a></li>
                    @endif
        </ul>

        @if(Session::has('message'))
            <div class="alert alert-success text-center" role="alert">
                {{Session::get('message')}}
            </div>
        @endif
        <div class="row">
            <div class="col-sm-4 col-sm-offset-1">
                <div class="login-form"><!--login form-->
                    <form action="{{url('/update-profile',$user_login->id)}}" method="post" class="form-horizontal">
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                        {{method_field('PUT')}}
                        <legend>Account Profile</legend>
                        <div class="form-group row {{$errors->has('name')?'has-error':''}}">
                            <label class="col">Name</label>
                            <input class="col" type="text" class="form-control" name="name" id="name" value="{{$user_login->name}}" placeholder="Name">
                            <span class="text-danger">{{$errors->first('name')}}</span>
                        </div>

                        <div class="form-group row {{$errors->has('city')?'has-error':''}}">
                            <label class="col">Service Area</label>
                            <select name="city" id="city" class="form-control col">
                                    <option value="" disabled selected>Choose</option>
                                    <option value="Barishal">Barishal</option>
                                    <option value="Chittagong">Chittagong</option>
                                    <option value="Dhaka">Dhaka</option>
                                    <option value="Khulna">Khulna</option>
                                    <option value="Mymensingh">Mymensingh</option>
                                    <option value="Rajshahi">Rajshahi</option>
                                    <option value="Rangpur">Rangpur</option>
                                    <option value="Sylhet">Sylhet</option>

                            </select>

                        </div>

                        <div class="form-group row {{$errors->has('address')?'has-error':''}}">
                            <label class="col">Current Location</label>
                            <input type="text" class="form-control col" value="{{$user_login->address}}" name="address" id="address" placeholder="Address">
                            <span class="text-danger">{{$errors->first('address')}}</span>
                        </div>

                        <div class="form-group row {{$errors->has('state')?'has-error':''}}">
                            <label class="col">NID Number</label>
                            <input type="text" class="form-control col" name="state" value="{{$user_login->state}}" id="state" placeholder="State">
                            <span class="text-danger">{{$errors->first('state')}}</span>
                        </div>


                        <div class="form-group row {{$errors->has('pincode')?'has-error':''}}">
                            <label class="col">DL Number</label>
                            <input type="text" class="form-control col" name="pincode" value="{{$user_login->pincode}}" id="pincode" placeholder="Pincode">
                            <span class="text-danger">{{$errors->first('pincode')}}</span>
                        </div>
                        <div class="form-group row {{$errors->has('mobile')?'has-error':''}}">
                            <label class="col">Phone</label>
                            <input type="text" class="form-control col" name="mobile" value="{{$user_login->mobile}}" id="mobile" placeholder="Mobile">
                            <span class="text-danger">{{$errors->first('mobile')}}</span>
                        </div>

                        <div class="form-group row">
                            <label class="col text-info">Availability</label>
                            <select name="country" id="country" class="form-control col">
                                @foreach($countries as $country)
                                    <option value="{{$country->country_name}}" {{$user_login->country==$country->country_name?' selected':''}}>{{$country->country_name}}</option>
                                @endforeach
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary" style="float: right;">Update Profile</button>
                    </form>
                </div><!--/login form-->
            </div>
            <div class="col-sm-1">
                <h2 class="or">OR</h2>
            </div>
            <div class="col-sm-4">
                <div class="signup-form"><!--sign up form-->
                    <form action="{{url('/update-password',$user_login->id)}}" method="post" class="form-horizontal">
                        <legend>Update New Password</legend>
                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                        {{method_field('PUT')}}
                        <div class="form-group {{$errors->has('password')?'has-error':''}}">
                            <input type="password" class="form-control" name="password" id="password" placeholder="Old Password">
                            @if(Session::has('oldpassword'))
                                <span class="text-danger">{{Session::get('oldpassword')}}</span>
                            @endif
                        </div>
                        <div class="form-group {{$errors->has('newPassword')?'has-error':''}}">
                            <input type="password" class="form-control" name="newPassword" id="newPassword" placeholder="New Password">
                            <span class="text-danger">{{$errors->first('newPassword')}}</span>
                        </div>
                        <div class="form-group {{$errors->has('newPassword_confirmation')?'has-error':''}}">
                            <input type="password" class="form-control" name="newPassword_confirmation" id="newPassword_confirmation" placeholder="Confirm Password">
                            <span class="text-danger">{{$errors->first('newPassword_confirmation')}}</span>
                        </div>
                        <button type="submit" class="btn btn-primary" style="float: right;">Update Password</button>
                    </form>
                </div><!--/sign up form-->
            </div>
        </div>
    </div>
    <div style="margin-bottom: 20px;"></div>
@endsection
