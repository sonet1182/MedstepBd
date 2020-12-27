<!--Header-part-->
<div id="">
    <h2 style="padding: 5px;"><a href="{{ url('/') }}">MedstepBd</a></h2>
    <h4>Admin Panel</h4>
</div>
<!--close-Header-part-->
<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
    <ul class="nav">
        <li class=""><a title="" href="{{url('/admin/settings')}}"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
        <li class="">
            <a class="dropdown-item" href="{{ route('logout') }}"
               onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                <i class="icon icon-share-alt"></i>{{ __('Logout') }}
            </a>

            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
            </form>

        </li>
    </ul>
</div>
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
    <input type="text" placeholder="Search here..."/>
    <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->
