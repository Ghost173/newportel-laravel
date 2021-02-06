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
            <h4 class="card-title">Update Core links (partners)</h4>
            <form class="forms-sample" method="POST" action="{{route('update.partners', $prayers->id)}}">

              <div class="form-group">
                  @csrf
                <label for="exampleInputUsername1">partner1</label>
                <input type="text" class="form-control" name="item1" value="{{$prayers->item1}}" >
                @error('item1')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">partner2</label>
                <input type="text" class="form-control" name="item2" value="{{$prayers->item2}}" >
                @error('item2')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>


              <div class="form-group">
                <label for="exampleInputEmail1">partner3</label>
                <input type="text" class="form-control" name="item3" value="{{$prayers->item3}}" >
                @error('item3')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>


              <div class="form-group">
                <label for="exampleInputEmail1">partner4</label>
                <input type="text" class="form-control" name="item4" value="{{$prayers->item4}}" >
                @error('item4')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">partner5</label>
                <input type="text" class="form-control" name="item5" value="{{$prayers->item5}}" >
                @error('item5')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">partner6</label>
                <input type="text" class="form-control" name="item6" value="{{$prayers->item6}}" >
                @error('item6')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>

              <button type="submit" class="btn btn-primary mr-2">Update</button>
            </form>
          </div>
        </div>
      </div>







@endsection  