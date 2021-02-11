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
            <h4 class="card-title">Live Tv settings</h4>


            <div class="template-demo">

                @if($livetv->status == 1)
                <a href="{{route('deactive.livetv',$livetv->id)}}">
                    <button type="button" class="btn btn-danger btn-rounded btn-fw">DeActive</button>
                </a>
                @else 
                <a href="{{route('active.livetv',$livetv->id)}}">
                    <button type="button" class="btn btn-primary btn-rounded btn-fw">Active</button>
                </a>
                @endif 

            </div>
            @if($livetv->status == 1)
                <small class="text-success"> Now live Tv is Actived</small>
            @else 
                <small class="text-danger"> Now live Tv is DeActived</small>
            @endif 
            <br><br>
            <form class="forms-sample" method="POST" action="{{route('update.livetv', $livetv->id)}}">
                @csrf
              

              <div class="form-group">
                <label for="exampleTextarea122">Livetv embed code</label>
                <textarea class="form-control" name="embed_code" id="summernote111">{{$livetv->embed_code}}</textarea>
                @error('embed_code')
                  <span class="text text-danger">{{$message}}</span>
              @enderror
              </div>


              <button type="submit" class="btn btn-primary mr-2">Update</button>
            </form>
          </div>
        </div>
      </div>







@endsection  