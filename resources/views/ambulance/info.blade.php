@extends('med.pages.master')

@section('content')

  <li class="nav-item cta mr-md-2"><a href="{{ url('/main') }}" class="nav-link">বাংলায় পড়ুন</a></li>
            </ul>
          </div>
        </div>
      </nav>



  <div>

    <section class="ftco-section" id="doctor-section">
        <div class="container-fluid px-5">
            <div class="row justify-content-center mb-5 pb-2">
      <div class="col-md-8 text-center heading-section ftco-animate">
        <h2 class="mb-4">Our Reliable Ambulance Service</h2>
        <p>Hire Ambulance In your Area</p>
      </div>
    </div>
            <div class="row">
                @foreach($desc as $desc)
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="staff">
                        <div class="img-wrap d-flex align-items-stretch">
                            <div class="img align-self-stretch" style="background-image: url('{{ asset('public/med/images/amb.jpg') }}' ) ;"></div>
                        </div>
                        <div class="text pt-3 text-center">
                            <h3 class="mb-2">{{ $desc->name }}</h3>
                            <p class=" mb-2"><b>Current Location:</b>  {{ $desc->address }}</</p>
                            <h3 class="text-info mb-2"><a href="tel:{{ $desc->mobile}}">{{ $desc->mobile}}</a></</h3>
                            <div class="faded">
                                <ul class="ftco-social text-center">
                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                    <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                  </ul>
                  <p><a href="tel:{{ $desc->mobile}}" class="btn btn-primary">{{ $desc->country}}</a></p>
              </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>

    </section>


  </div>



@stop
