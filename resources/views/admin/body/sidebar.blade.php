
@php
    $editdata = DB::table('users')->where('id',Auth::user()->id)->first();
@endphp


<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <div class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
      <a class="sidebar-brand brand-logo" href="index.html"><img src="{{asset('backend/assets/images/logo.svg')}}" alt="logo" /></a>
      <a class="sidebar-brand brand-logo-mini" href="index.html"><img src="{{asset('backend/assets/images/logo-mini.svg')}}" alt="logo" /></a>
    </div>
    <ul class="nav">
      <li class="nav-item profile">
        <div class="profile-desc">
          <div class="profile-pic">
            <div class="count-indicator">
              <img class="img-xs rounded-circle " src="{{(!empty($editdata->image))?url('upload/userprofile/'.$editdata->image): url('upload/noimg.png')}}" alt="">
              <span class="count bg-success"></span>
            </div>
            <div class="profile-name">
              <h5 class="mb-0 font-weight-normal">{{ Auth::user()->name }}</h5>
              <span>{{ Auth::user()->email }}</span>
            </div>
          </div>
          <a href="#" id="profile-dropdown" data-toggle="dropdown"><i class="mdi mdi-dots-vertical"></i></a>
          <div class="dropdown-menu dropdown-menu-right sidebar-dropdown preview-list" aria-labelledby="profile-dropdown">
            <a href="{{route('account.setting')}}" class="dropdown-item preview-item">
              <div class="preview-thumbnail">
                <div class="preview-icon bg-dark rounded-circle">
                  <i class="mdi mdi-settings text-primary"></i>
                </div>
              </div>
              <div class="preview-item-content">
                <p class="preview-subject ellipsis mb-1 text-small">Account settings</p>
              </div>
            </a>
            <div class="dropdown-divider"></div>
            <a href="{{route('show.password')}}" class="dropdown-item preview-item">
              <div class="preview-thumbnail">
                <div class="preview-icon bg-dark rounded-circle">
                  <i class="mdi mdi-onepassword  text-info"></i>
                </div>
              </div>
              <div class="preview-item-content">
                <p class="preview-subject ellipsis mb-1 text-small">Change Password</p>
              </div>
            </a>
            <div class="dropdown-divider"></div>
            <a href="#" class="dropdown-item preview-item">
              <div class="preview-thumbnail">
                <div class="preview-icon bg-dark rounded-circle">
                  <i class="mdi mdi-calendar-today text-success"></i>
                </div>
              </div>
              <div class="preview-item-content">
                <p class="preview-subject ellipsis mb-1 text-small">To-do list</p>
              </div>
            </a>
          </div>
        </div>
      </li>
      <li class="nav-item nav-category">
        <span class="nav-link">Navigation</span>
      </li>
      <li class="nav-item menu-items">
        <a class="nav-link" href="{{route('dashboard')}}">
          <span class="menu-icon">
            <i class="mdi mdi-speedometer"></i>
          </span>
          <span class="menu-title">Dashboard</span>
        </a>
      </li>

      @if (Auth::user()->category == 1)
      <li class="nav-item menu-items">
        <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
          <span class="menu-icon">
            <i class="mdi mdi-laptop"></i>
          </span>
          <span class="menu-title">Categories</span>
          <i class="menu-arrow"></i>
        </a>
        <div class="collapse" id="ui-basic">
          <ul class="nav flex-column sub-menu">
            <li class="nav-item"> <a class="nav-link" href="{{route('categories')}}">category</a></li>
            <li class="nav-item"> <a class="nav-link" href="{{route('subcategories')}}">sub-category</a></li>
          </ul>
        </div>
      </li>
      @endif
      


@if (Auth::user()->district == 1)
<li class="nav-item menu-items">
  <a class="nav-link" data-toggle="collapse" href="#district" aria-expanded="false" aria-controls="district">
    <span class="menu-icon">
      <i class="mdi mdi-security"></i>
    </span>
    <span class="menu-title">District</span>
    <i class="menu-arrow"></i>
  </a>
  <div class="collapse" id="district">
    <ul class="nav flex-column sub-menu">
      <li class="nav-item"> <a class="nav-link" href="{{route('district')}}"> District </a></li>
      <li class="nav-item"> <a class="nav-link" href="{{route('subdistrict')}}">Sub district </a></li>
    </ul>
  </div>
</li>
@endif
     

@if (Auth::user()->post == 1)
<li class="nav-item menu-items">
  <a class="nav-link" data-toggle="collapse" href="#post" aria-expanded="false" aria-controls="post">
    <span class="menu-icon">
      <i class="mdi mdi-security"></i>
    </span>
    <span class="menu-title">Post</span>
    <i class="menu-arrow"></i>
  </a>
  <div class="collapse" id="post">
    <ul class="nav flex-column sub-menu">
      <li class="nav-item"> <a class="nav-link" href="{{route('create.post')}}">Add post </a></li>
      <li class="nav-item"> <a class="nav-link" href="{{route('all.post')}}">All post </a></li>
    </ul>
  </div>
</li>
@endif
      

@if (Auth::user()->settings == 1)
<li class="nav-item menu-items">
  <a class="nav-link" data-toggle="collapse" href="#settings" aria-expanded="false" aria-controls="settings">
    <span class="menu-icon">
      <i class="mdi mdi-security"></i>
    </span>
    <span class="menu-title">Settings</span>
    <i class="menu-arrow"></i>
  </a>
  <div class="collapse" id="settings">
    <ul class="nav flex-column sub-menu">
      <li class="nav-item"> <a class="nav-link" href="{{route('social.setting')}}">Social settings </a></li>
      <li class="nav-item"> <a class="nav-link" href="{{route('seo.setting')}}">SEO settings </a></li>
      <li class="nav-item"> <a class="nav-link" href="{{route('item.setting')}}">Items settings </a></li>
      <li class="nav-item"> <a class="nav-link" href="{{route('livetv.setting')}}">LiveTv settings </a></li>
      <li class="nav-item"> <a class="nav-link" href="{{route('notice.setting')}}">notic settings </a></li>
      <li class="nav-item"> <a class="nav-link" href="{{route('web.setting')}}">Website settings </a></li>
    </ul>
  </div>
</li>
@endif

      

@if (Auth::user()->websites == 1)
<li class="nav-item menu-items">
  <a class="nav-link" data-toggle="collapse" href="#Websites" aria-expanded="false" aria-controls="Websites">
    <span class="menu-icon">
      <i class="mdi mdi-security"></i>
    </span>
    <span class="menu-title">Websites</span>
    <i class="menu-arrow"></i>
  </a>
  <div class="collapse" id="Websites">
    <ul class="nav flex-column sub-menu">
      <li class="nav-item"> <a class="nav-link" href="{{route('all.website')}}">Allwebsites</a></li>
      <li class="nav-item"> <a class="nav-link" href="{{route('all.website')}}">Addwebsite</a></li>
     
    </ul>
  </div>
</li>
@endif

     

@if (Auth::user()->gallery == 1)
<li class="nav-item menu-items">
  <a class="nav-link" data-toggle="collapse" href="#photo" aria-expanded="false" aria-controls="photo">
    <span class="menu-icon">
      <i class="mdi mdi-security"></i>
    </span>
    <span class="menu-title">Gallery</span>
    <i class="menu-arrow"></i>
  </a>
  <div class="collapse" id="photo">
    <ul class="nav flex-column sub-menu">
      <li class="nav-item"> <a class="nav-link" href="{{route('photo')}}">Photo Gallery</a></li>
      <li class="nav-item"> <a class="nav-link" href="{{route('video')}}">Video Gallery</a></li>
     
    </ul>
  </div>
</li>

@endif


@if (Auth::user()->ads == 1)
<li class="nav-item menu-items">
  <a class="nav-link" data-toggle="collapse" href="#ads" aria-expanded="false" aria-controls="ads">
    <span class="menu-icon">
      <i class="mdi mdi-security"></i>
    </span>
    <span class="menu-title">ADS</span>
    <i class="menu-arrow"></i>
  </a>
  <div class="collapse" id="ads">
    <ul class="nav flex-column sub-menu">
      <li class="nav-item"> <a class="nav-link" href="{{route('list.ad')}}">Add list</a></li>

     
    </ul>
  </div>
</li>
@endif
    

     
@if (Auth::user()->role == 1)
<li class="nav-item menu-items">
  <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
    <span class="menu-icon">
      <i class="mdi mdi-security"></i>
    </span>
    <span class="menu-title">User Pages</span>
    <i class="menu-arrow"></i>
  </a>
  <div class="collapse" id="auth">
    <ul class="nav flex-column sub-menu">
      <li class="nav-item"> <a class="nav-link" href="{{route('add.user')}}"> Add user </a></li>
      <li class="nav-item"> <a class="nav-link" href="{{route('all.user')}}"> All User </a></li>
    </ul>
  </div>
</li>
@endif
    
    
      <li class="nav-item menu-items">
        <a class="nav-link" href="http://www.bootstrapdash.com/demo/corona-free/jquery/documentation/documentation.html">
          <span class="menu-icon">
            <i class="mdi mdi-file-document-box"></i>
          </span>
          <span class="menu-title">Documentation</span>
        </a>
      </li>
    </ul>
  </nav>