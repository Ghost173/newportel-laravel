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
            <h4 class="card-title">Website Settings</h4>
            <form class="forms-sample" method="POST" action="{{route('update.seo', $webseng->id)}}">

              <div class="form-group">
                  @csrf
                <label for="exampleInputUsername1">	phone</label>
                <input type="text" class="form-control" name="phone" value="{{$webseng->phone}}" >
                @error('phone')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>

              <div class="form-group">
                @csrf
              <label for="exampleInputUsername1">email</label>
              <input type="text" class="form-control" name="email" value="{{$webseng->email}}" >
              @error('email')
                  <span class="text text-danger">{{$message}}</span>
              @enderror
            </div>


            <div class="form-group">
                @csrf
              <label for="exampleInputUsername1">address</label>
              <textarea class="form-control" name="details_en" id="summernote">{{$webseng->address}}</textarea>
              @error('address')
                  <span class="text text-danger">{{$message}}</span>
              @enderror
            </div>


            <div class="row">

                <div class="form-group col-md-6" >
                  <label for="exampleInputName1">Logo</label>
                  <input type="file" name="image" class="form-control-file" id="exampleFormControlFile1">
                  @error('title_en')
                    <span class="text text-danger">{{$message}}</span>
                    @enderror
                </div>
                {{-- {{URL::to($website->logo)}} --}}
                <div class="form-group col-md-6">
                  <label for="exampleInputName1">Old image</label>
                  <img src="" style="width: 70px; height: 50px">
                  <input type="hidden" name="oldimage" value="{{$webseng->logo}}">
                </div>

              </div>

              

              <button type="submit" class="btn btn-primary mr-2">Update</button>
            </form>
          </div>
        </div>
      </div>







@endsection  