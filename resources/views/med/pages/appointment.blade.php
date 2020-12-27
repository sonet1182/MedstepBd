@extends('med.pages.master')

@section('content')

  <li class="nav-item cta mr-md-2"><a href="" class="nav-link">বাংলায় পড়ুন</a></li>
            </ul>
          </div>
        </div>
      </nav>

		<section class=" " style="background-image: url('{{ asset('public/asset/images/bg_3.jpg') }}');"  >

			<div class="container" style="margin-top: 40px; ">
				<div class=" no-gutters" data-scrollax-parent="true">
					<div class="col-md-6 pt-5">
						<div class="mt-5">
							<h2 class="text-center padding-sm padding-top-null white">
							Find Ambulance Here
                            </h2>
                            <p class="text-center pt-3 text-danger">We offer full medical support ambulance service in Bangladesh</p>
							<div class="doc-search">
								<div class="search-form">
									<form method="get" action=""  class="doctor-search-form">
										<div class=" search-form-left">
											<div class="form-group">
												<select class="division-list form-control location-search custom-select select2-hidden-accessible" data-placeholder="Location" name="division_name" tabindex="-1" aria-hidden="true" id="divisions" onchange="divisionsList();">
													<option disabled selected>Select Division</option>
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
										</div>
										<div class=" search-form-left">
											<div class="form-group">
												<select class="district-list form-control location-search" data-placeholder="Location" name="district_name" tabindex="-1" aria-hidden="true" id="distr" onchange="hospitalList();">
													<option value="" selected="notselected">Select District</option>
												</select>
											</div>
										</div>

										<!--
										<div class=" search-form-left">
											<div class="form-group">
												<select class="district-list form-control location-search" data-placeholder="Location" name="district_name" tabindex="-1" aria-hidden="true" id="hospital1" onchange="hospitalList();">
													<option value="" selected="notselected">Select Hospital</option>
												</select>
											</div>
										</div>
										-->
									</form>
								</div>
							</div>
                        </div>
			        </div>
                </div>

            <div class="info pt-5 row ">
                <div class="hospital_info col-md-4 overflow-auto">
                    <h3 class="text-center text-info">Online Booking</h3>
                    <p id="hospital">
                        We are also available online. Just make sure of a booking. Send us your location with details. Our ambulance service will get you soon.
                    </p>
                </div>

                <div class="Ambulace_info col-md-4 overflow-auto">
                    <h3 class="text-center text-info">Quick Response</h3>
                        <p id="ambulance">
                            We are always active for you at any time, anywhere, any situation. Just call us. We will serve you with a quick responsible ambulance service.
                        </p>
                </div>

                <div class="Phermacy_info col-md-4 overflow-auto">
                    <h3 class="text-center text-info">Fare Rate</h3>
                        <p id="phermacy">
                            Our ambulance service has not a specific fare rate. Actually it depends on the destination. That's why it's not a certain charge.
                        </p>
                </div>
            </div>
        </div>






		</section>




	<script>
	function divisionsList() {
	// get value from division lists
	var diviList = document.getElementById('divisions').value;

	// set barishal division districts
	if(diviList == 'Barishal'){
		var disctList = '<option disabled selected>Select District</option><option value="Barguna">Barguna</option><option value="Barishal">Barishal</option><option value="Bhola">Bhola</option><option value="Jhalokati">Jhalokati</option><option value="Patuakhali">Patuakhali</option><option value="Pirojpur">Pirojpur</option>';
	}
	// set Chattogram division districts
	else if(diviList == 'Chittagong') {
		var disctList = '<option disabled selected>Select District</option><option value="Bandarban">Bandarban</option><option value="Chandpur">Chandpur</option><option value="Chittagong">Chittagong</option><option value="Cumilla">Cumilla</option><option value="Cox\'s Bazar">Cox\'s Bazar</option><option value="Feni">Feni</option><option value="Khagrachhari">Khagrachhari</option><option value="Noakhali">Noakhali</option><option value="Rangamati">Rangamati</option>';
	}
	// set Dhaka division districts
	else if(diviList == 'Dhaka') {
		var disctList = '<option disabled selected>Select District</option><option value="Dhaka">Dhaka</option><option value="Faridpur">Faridpur</option><option value="Gazipur">Gazipur</option><option value="Gopalganj">Gopalganj</option><option value="Kishoreganj">Kishoreganj</option><option value="Madaripur">Madaripur</option><option value="Manikganj">Manikganj</option><option value="Munshiganj">Munshiganj</option><option value="Narayanganj">Narayanganj</option><option value="Narsingdi">Narsingdi</option><option value="Rajbari">Rajbari</option><option value="Shariatpur">Shariatpur</option><option value="Tangail">Tangail</option>';
	}

	// set Chattogram division districts
	else if(diviList == 'Khulna') {
		var disctList = '<option disabled selected>Select District</option><option value="Bagherhat">Bagherhat</option><option value="Chuadanga">Chuadanga</option><option value="Jessore">Jessore</option><option value="Jinaidaha">Jinaidaha</option><option value="Khulna">Khulna</option><option value="Magura">Magura</option><option value="Meherpur">Meherpur</option><option value="Narail">Narail</option><option value="Satkhira">Satkhira</option>';
	}

    else if(diviList == 'Sylhet') {
		var disctList = '<option disabled selected>Select District</option><option value="Sylhet">Sylhet</option>';
	}

    else if(diviList == 'Rajshahi') {
		var disctList = '<option disabled selected>Select District</option><option value="Rajshahi">Rajshahi</option>';
	}

    else if(diviList == 'Rangpur') {
		var disctList = '<option disabled selected>Select District</option><option value="Rangpur">Rangpur</option>';
	}

    else if(diviList == 'Mymensingh') {
		var disctList = '<option disabled selected>Select District</option><option value="Mymensingh">Mymensingh</option>';
	}
	//  set/send districts name to District lists from division
	document.getElementById("distr").innerHTML= disctList;
}

 // for Hospital


 function hospitalList() {
	// get value from division lists
	var hosList = document.getElementById('distr').value;

	// set option for dhaka
	if(hosList == 'Dhaka'){
		location.href = "{{ route('amb_dhaka') }}";
	}

    if(hosList == 'Barishal') {
		location.href = "{{ route('amb_barishal') }}";
	}

    if(hosList == 'Chittagong') {
		location.href = "{{ route('amb_chittagong') }}";
	}

    if(hosList == 'Khulna') {
		location.href = "{{ route('amb_khulna') }}";
	}

    if(hosList == 'Rajshahi') {
		location.href = "{{ route('amb_rajshahi') }}";
	}

    if(hosList == 'Rangpur') {
		location.href = "{{ route('amb_rangpur') }}";
	}

    if(hosList == 'Sylhet') {
		location.href = "{{ route('amb_sylhet') }}";
	}

    if(hosList == 'Mymensingh') {
		location.href = "{{ route('amb_mymensingh') }}";
	}


}




</script>






@stop
