@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



<div class="content-wrapper">
    <div class="row">
      <div class="col-12 grid-margin stretch-card">
        <div class="card corona-gradient-card">
          <div class="card-body py-0 px-0 px-sm-3">
            <div class="row align-items-center">
              <div class="col-4 col-sm-3 col-xl-2">
                <img src="{{asset('backend/assets/images/dashboard/Group126@2x.png')}}" class="gradient-corona-img img-fluid" alt="">
              </div>
              <div class="col-5 col-sm-7 col-xl-8 p-0">
                <h4 class="mb-1 mb-sm-0">Welcome to tamilworld</h4>
                {{-- <p class="mb-0 font-weight-normal d-none d-sm-block">YOUR ARE IN ADD CATEGORY PAGE</p> --}}
              </div>
              <div class="col-3 col-sm-2 col-xl-2 pl-0 text-center">
                <span>
                  <a href="{{url('/')}}" target="_blank" class="btn btn-outline-light btn-rounded get-started-btn">vist site</a>
                </span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>




    <div class="col-12 grid-margin stretch-card">
        <div class="card"> 
          <div class="card-body">
            <h4 class="card-title">User Profile</h4>

            <a href="{{route('profile.edit')}}"  class="btn btn-success" style="float: right;">Edit profile</a>

                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="{{(!empty($editdata->image))?url('upload/userprofile/'.$editdata->image): url('upload/noimg.png')}}" alt="Card image cap">
                    <div class="card-body">
                    <h5 class="card-title">User Name: {{ Auth::user()->name }}</h5>
                    <p class="card-text">User Email: {{ Auth::user()->email }}</p>
                    <p class="card-text">User mobile: {{ Auth::user()->mobile }}</p>
                    <p class="card-text">User address: {{ Auth::user()->address }}</p>
                    <p class="card-text">User gender: {{ Auth::user()->gender }}</p>
                    <p class="card-text">User position: {{ Auth::user()->position }}</p>
                 
                    </div>
                   
                    
                </div>


           
          </div>
        </div>
      
    </div>







@endsection  