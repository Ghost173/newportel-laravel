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
            <h4 class="card-title">Chnage password</h4>

            <form class="forms-sample" method="POST" enctype="multipart/form-data" action="{{route('change.password')}}" >
              @csrf
              


                <div class="form-group col-md-12">
                  <label for="exampleInputName1">Current Password</label>
                  <input type="password" class="form-control" id="current_password" name="oldpassword" style="color:white;">

                  @error('oldpassword')
                    <span class="text-danger">{{$message}} </span>
                  @enderror
                </div>

                <div class="form-group col-md-12">
                    <label for="exampleInputName1">New Password</label>
                    <input type="password" class="form-control" id="password" name="password" style="color:white;">
                    @error('password')
                    <span class="text-danger">{{$message}} </span>
                  @enderror
                  </div>


                  <div class="form-group col-md-12">
                    <label for="exampleInputName1">Confirm Password</label>
                    <input type="password" class="form-control" id="password_confirmation" name="password_confirmation" style="color:white;">
                    @error('password_confirmation')
                    <span class="text-danger">{{$message}} </span>
                  @enderror
                  </div>
                
  
                
  

                <br> 
              
              <button type="submit" class="btn btn-primary mr-2">Submit</button>
            </form>
          </div>
        </div>
      </div>







@endsection  