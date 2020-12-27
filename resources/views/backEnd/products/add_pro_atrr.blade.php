@extends('frontEnd.layouts.master')
@section('title','Add Attribute')
@section('content')

    <div class="container pt-5">
        @if(Session::has('message'))
            <div class="alert alert-success text-center" role="alert">
                <strong>Well done! &nbsp;</strong>{{Session::get('message')}}
            </div>
        @endif
            <div class="row">
                <div class="col-sm-6">
                    <div class="widget-box">

                        <div class="widget-content nopadding">
                            <ul class="recent-posts">
                                <li class="text-center">
                                    <div class="user-thumb"><a href="{{url('/product-detail',$product->id)}}"><img alt="User" src="{{url('public/products/small',$product->image)}}" height="200px" width="250px"></a> </div>
                                    <h2>{{$product->p_name}}</h2>
                                </li>
                                <li>
                                    <form action="{{route('product_att.store')}}" method="post" role="form">
                                        <h3 class="text-primary">Add Review</h3>
                                        <input type="hidden" name="_token" value="{{csrf_token()}}">
                                        <div class="form-group">
                                            <input type="hidden" name="products_id" value="{{$product->id}}">
                                            <label>Name:</label>
                                            <input type="text" class="form-control" name="sku" value="{{old('sku')}}" id="sku" placeholder="Name" required>
                                            <label>Email:</label>
                                            <input type="text" class="form-control" name="size" value="{{old('size')}}" id="size" placeholder="abc@gmail.com" required>
                                            <label>Review:</label>
                                            <textarea class="form-control" name="price" value="{{old('price')}}" id="price" rows="3" required></textarea>
                                            <span style="color: red;">{{$errors->first('price')}}</span>
                                            <label>Rating:</label>
                                            <input type="number" min="1" max="5" class="form-control" name="stock" value="{{old('stock')}}" id="stock" placeholder="Rate out of 5" required>
                                        </div>
                                        <button type="submit" class="btn btn-success">Add Review</button>
                                    </form>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <h1 class="text-center pb-3 text-primary">Review List</h1>

                    <ul class="comment-list ">
                        @foreach ($attributes as $attribute)

                        <li class="comment">
                          <div class="vcard bio">
                            <img src="{{ url('public/med/images/person_1.jpg') }}" alt="Image placeholder">
                          </div>
                          <div class="comment-body">
                            <h2>{{$attribute->sku}}</h2>

                            <p>{{$attribute->price}}</p>
                            <span class="stars" data-rating="{{$attribute->stock}}" data-num-stars="5" ></span>
                          </div>
                        </li>

                        @endforeach
                      </ul>
                </div>
            </div>
    </div>
@endsection
@section('jsblock')
    <script src="{{asset('public/js/jquery.min.js')}}"></script>
    <script src="{{asset('public/js/jquery.ui.custom.js')}}"></script>
    <script src="{{asset('public/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('public/js/bootstrap-colorpicker.js')}}"></script>
    <script src="{{asset('public/js/jquery.toggle.buttons.js')}}"></script>
    <script src="{{asset('public/js/masked.js')}}"></script>
    <script src="{{asset('public/js/jquery.uniform.js')}}"></script>
    <script src="{{asset('public/js/select2.min.js')}}"></script>
    <script src="{{asset('public/js/matrix.js')}}"></script>
    <script src="{{asset('public/js/matrix.form_common.js')}}"></script>
    <script src="{{asset('public/js/wysihtml5-0.3.0.js')}}"></script>
    <script src="{{asset('public/js/jquery.peity.min.js')}}"></script>
    <script src="{{asset('public/js/bootstrap-wysihtml5.js')}}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    <script>
        $(".deleteRecord").click(function () {
            var id=$(this).attr('rel');
            var deleteFunction=$(this).attr('rel1');
            swal({
                title:'Are you sure?',
                text:"You won't be able to revert this!",
                type:'warning',
                showCancelButton:true,
                confirmButtonColor:'#3085d6',
                cancelButtonColor:'#d33',
                confirmButtonText:'Yes, delete it!',
                cancelButtonText:'No, cancel!',
                confirmButtonClass:'btn btn-success',
                cancelButtonClass:'btn btn-danger',
                buttonsStyling:false,
                reverseButtons:true
            },function () {
                window.location.href="/admin/"+deleteFunction+"/"+id;
            });
        });
    </script>
@endsection
