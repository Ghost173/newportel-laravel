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
            <h4 class="card-title">Update SEO links</h4>
            <form class="forms-sample" method="POST" action="{{route('update.seo', $seo->id)}}">

              <div class="form-group">
                  @csrf
                <label for="exampleInputUsername1">meta_auther</label>
                <input type="text" class="form-control" name="meta_auther" value="{{$seo->meta_auther}}" >
                @error('meta_auther')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">meta_title</label>
                <input type="text" class="form-control" name="meta_title" value="{{$seo->meta_title}}" >
                @error('meta_title')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>


              <div class="form-group">
                <label for="exampleInputEmail1">meta-keyword</label>
                <input type="text" class="form-control" name="meta_keyword" value="{{$seo->meta_keyword}}" >
                @error('meta_keyword')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>

              <div class="form-group">
                <label for="exampleTextarea1">meta_description</label>
                <textarea class="form-control" name="meta_description" >{{$seo->meta_description}}</textarea>
                @error('meta_description')
                  <span class="text text-danger">{{$message}}</span>
              @enderror
              </div>


              <div class="form-group">
                <label for="exampleTextarea1">google_analytics</label>
                <textarea class="form-control" name="google_analytics" >{{$seo->google_analytics}}</textarea>
                @error('google_analytics')
                  <span class="text text-danger">{{$message}}</span>
              @enderror
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">google_verification</label>
                <input type="text" class="form-control" name="google_verification" value="{{$seo->google_verification}}" >
                @error('google_verification')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">alexa_analytics</label>
                <input type="text" class="form-control" name="alexa_analytics" value="{{$seo->alexa_analytics}}" >
                @error('alexa_analytics')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>

              <button type="submit" class="btn btn-primary mr-2">Update</button>
            </form>
          </div>
        </div>
      </div>







@endsection  