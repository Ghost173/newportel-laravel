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
            <h4 class="card-title">Update subdistrict</h4>
            {{-- {{route('update.subcategory', $subdistrict->id)}} --}}
            <form class="forms-sample" method="POST" action="{{route('update.subdistrict', $subdistrict->id)}}">

              <div class="form-group">
                  @csrf
                <label for="exampleInputUsername1">Sub category in english</label>
                <input type="text" class="form-control" name="subdistrict_en" value="{{$subdistrict->subdistrict_en}}" >
                @error('subdistrict_en')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Sub category in tamil</label>
                <input type="text" class="form-control" name="subdistrict_ta" value="{{$subdistrict->subdistrict_ta}}" >
                @error('subdistrict_ta')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>


              <div class="form-group">
                <label for="exampleFormControlSelect2">Select district</label>

                <select class="form-control" id="exampleFormControlSelect2" name="district_id">
                    <option disabled selected> select district</option>  

                    @foreach ($district as $dis)
                    <option value="{{$dis->id}}"
                        <?php 
                            if($dis->id == $subdistrict->district_id)
                            echo "selected";
                        ?>
                     >{{$dis->district_en}} | {{$dis->district_ta}}</option>
                    @endforeach

                </select>
                @error('district_id')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
              </div>

              <button type="submit" class="btn btn-primary mr-2">Update</button>
            </form>
          </div>
        </div>
      </div>







@endsection  