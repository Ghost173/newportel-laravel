@extends('admin.admin_master')
@section('admin')



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



    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
            <h4 class="card-title">Edit user</h4>
            <form class="forms-sample" method="POST" action="{{route('update.user',$user->id)}}">
              @csrf
              <div class="form-group">
                 
                <label for="exampleInputUsername1">Name</label>
                <input type="text" class="form-control" name="name" value="{{$user->name}}">
                @error('name')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Email</label>
                <input type="email" class="form-control" name="email" value="{{$user->email}}">
                @error('email')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>



              <div class="row">

                <div class="col-md-6">
                    <div class="form-group">
                      <div class="form-check form-check-primary">
                        <label class="form-check-label">
                          <input type="checkbox" class="form-check-input" name="category" value="1" 
                          @if ($user->category == 1)
                              checked
                          @endif>
                           category </label>
                      </div>
                      <div class="form-check form-check-success">
                        <label class="form-check-label">
                          <input type="checkbox" class="form-check-input" name="district" value="1"
                          @if ($user->district == 1)
                              checked
                          @endif
                          > district </label>
                      </div>
                      <div class="form-check form-check-info">
                        <label class="form-check-label">
                          <input type="checkbox" class="form-check-input" name="post" value="1"
                          
                          @if ($user->post == 1)
                              checked
                          @endif
                          > post </label>
                      </div>
                      <div class="form-check form-check-danger">
                        <label class="form-check-label">
                          <input type="checkbox" class="form-check-input" name="settings" value="1"
                          
                          @if ($user->settings == 1)
                              checked
                          @endif
                          > settings </label>
                      </div>
                     
                    </div>
                  </div>



                  <div class="col-md-6">
                    <div class="form-group">
                      <div class="form-check form-check-primary">
                        <label class="form-check-label">
                          <input type="checkbox" class="form-check-input" name="websites" value="1" 
                          @if ($user->websites == 1)
                              checked
                          @endif
                          
                          > websites </label>
                      </div>
                      <div class="form-check form-check-success">
                        <label class="form-check-label">
                          <input type="checkbox" class="form-check-input" name="gallery" value="1"
                          
                          @if ($user->gallery == 1)
                              checked
                          @endif
                          > gallery </label>
                      </div>
                      <div class="form-check form-check-info">
                        <label class="form-check-label">
                          <input type="checkbox" class="form-check-input" name="ads" value="1"
                          @if ($user->ads == 1)
                              checked
                          @endif
                          
                          > ads </label>
                      </div>
                      <div class="form-check form-check-danger">
                        <label class="form-check-label">
                          <input type="checkbox" class="form-check-input" name="role" value="1"
                          @if ($user->role == 1)
                              checked
                          @endif
                          
                          > role </label>
                      </div>
                     
                    </div>
                  </div>

              </div>
              <button type="submit" class="btn btn-primary mr-2">Update</button>
            </form>
          </div>
        </div>
      </div>







@endsection  