@extends('admin.admin_master')
@section('admin')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

@php
    $subcategory = DB::table('sub_categories')->where('category_id',$post->category_id)->get(); 
    $subdistrict = DB::table('subdistricts')->where('district_id',$post->district_id)->get();    
@endphp


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
            <h4 class="card-title">edit news</h4>

            <form class="forms-sample" method="POST" enctype="multipart/form-data" action="{{route('store.post')}}" >
              @csrf
              
              <div class="row">

                <div class="form-group col-md-6" >
                  <label for="exampleInputName1">Title in english</label>
                  <input type="text" class="form-control" id="exampleInputName1" name="title_en" value="{{$post->title_en}}" style="color:white;">
                  @error('title_en')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
                </div>

                <div class="form-group col-md-6">
                  <label for="exampleInputName1">Title in tamil</label>
                  <input type="text" class="form-control" id="exampleInputName1" name="title_ta" value="{{$post->title_ta}} style="color:white;">
                </div>

              </div>




              <div class="row">

                <div class="form-group col-md-6">
                  <label for="exampleInputName1">Select Category</label>

                  <select class="form-control" id="exampleSelectGender" name="category_id" style="color:white;">
                    <option disabled selected>Select Category</option>
                    @foreach ($category as $cat)
                      <option value="{{$cat->id}}" 
                           <?php
                            if($cat->id == $post->category_id)
                                echo "selected";
                           ?>
                        >{{$cat->category_en}} | {{$cat->category_ta}}</option>
                    @endforeach
                  </select>
                </div>


                <div class="form-group col-md-6">
                  <label for="exampleInputName1">Select Subcategory</label>
                  <select class="form-control" name="subcategory_id" id="subcategory_id" style="color:white;">
                    <option disabled selected>select subCategory</option>

                    @foreach ($subcategory as $row)
                    <option value="{{$row->id}}" 
                         <?php
                          if($row->id == $post->subcategory_id){
                            echo "selected";
                          }
                             
                         ?>
                      >{{$row->subcategory_en}} | {{$row->subcategory_ta}}</option>
                  @endforeach
                    
                  </select>
                </div>

              </div>
              



              <div class="row">

                <div class="form-group col-md-6">
                  <label for="exampleInputName1">Select District</label>

                  <select class="form-control" id="exampleSelectGender" name="district_id" style="color:white;">
                    <option disabled selected>Select District</option>
                    @foreach ($district as $dis)
                      <option value="{{$dis->id}}"
                        <?php
                            if($dis->id == $post->district_id)
                                echo "selected";
                           ?>
                        >{{$dis->district_en}} | {{$dis->district_ta}}</option>
                    @endforeach
                  </select>
                </div>

                <div class="form-group col-md-6">
                  <label for="exampleInputName1">Select Subdistrict</label>
                  <select class="form-control" id="subdistrict_id" name="subdistrict_id" style="color:white;">
                    <option disabled selected>Select subDistrict</option>

                    @foreach ($subdistrict as $row)
                    <option value="{{$row->id}}" 
                         <?php
                          if($row->id == $post->subdistrict_id){
                            echo "selected";
                          }
                             
                         ?>
                      >{{$row->subdistrict_en}} | {{$row->subdistrict_ta}}</option>
                  @endforeach
                    

                  </select>
                </div>

              </div>


              <div class="row">

                <div class="form-group col-md-6" >
                  <label for="exampleInputName1">news image upload</label>
                  <input type="file" name="image" class="form-control-file" id="exampleFormControlFile1">
                  @error('title_en')
                    <span class="text text-danger">{{$message}}</span>
                    @enderror
                </div>

                <div class="form-group col-md-6">
                  <label for="exampleInputName1">Old image</label>
                  <img src="{{URL::to($post->image)}}" style="width: 70px; height: 50px">
                  <input type="hidden" name="oldimage" value="{{$post->image}}">
                </div>

              </div>

                

                <div class="row">

                  <div class="form-group col-md-6" >
                    <label for="exampleInputName1">Tag in english</label>
                    <input type="text" class="form-control" id="exampleInputName1" name="tags_en" value="{{$post->tags_en}}" style="color:white;">
                  </div>
  
                  <div class="form-group col-md-6">
                    <label for="exampleInputName1">Tag in tamil</label>
                    <input type="text" class="form-control" id="exampleInputName1" name="tags_ta"  value="{{$post->tags_ta}} style="color:white;">
                  </div>
  
                </div>




                <div class="form-group">
                  <label for="exampleTextarea1">Details in english</label>
                  <textarea class="form-control" name="details_en" id="summernote">{{$post->details_en}}</textarea>
                  @error('title_en')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
                </div>


                <div class="form-group">
                  <label for="exampleTextarea1">Details in tamil</label>
                  <textarea class="form-control" name="details_ta" id="summernote1">{{$post->details_ta}}</textarea>
                  @error('title_en')
                    <span class="text text-danger">{{$message}}</span>
                @enderror
                </div>

<hr>
<br>
                <h4 class="text-center"> Extra Options</h4>
                <div class="row"> 
                  <div class="form-check col-md-3">
                    <label class="form-check-label">
                      <input type="checkbox" class="form-check-input" name="headline" value="1"
                      <?php
                        if($post->headline == 1) echo "checked";
                      ?>
                      >Heading</label>
                  </div>
                  <div class="form-check col-md-3">
                    <label class="form-check-label">
                      <input type="checkbox" class="form-check-input" name="bigthumnail" value="1"
                      <?php
                        if($post->bigthumnail == 1) echo "checked";
                      ?>
                      >generel Big thumnail </label>
                  </div>
                  <div class="form-check col-md-3">
                    <label class="form-check-label">
                      <input type="checkbox" class="form-check-input" name="first_section" value="1"
                      
                      <?php
                        if($post->first_section == 1) echo "checked";
                      ?>
                      >First Section </label>
                  </div>

                  <div class="form-check col-md-3">
                    <label class="form-check-label">
                      <input type="checkbox" class="form-check-input" name="first_thumnail" value="1"
                      <?php
                        if($post->first_thumnail == 1) echo "checked";
                      ?>
                      >First Section thumnail</label>
                  </div>
                </div>

                <br> 
              
              <button type="submit" class="btn btn-primary mr-2">Update</button>
            </form>
          </div>
        </div>
      </div>





      <script type="text/javascript">
        $(document).ready(function() {
              $('select[name="category_id"]').on('change', function(){
                  var category_id = $(this).val();
                  if(category_id) {
                      $.ajax({
                          url: "{{  url('/get/subcategory/') }}/"+category_id,
                          type:"GET",
                          dataType:"json",
                          success:function(data) {
                             $("#subcategory_id").empty();
                                   $.each(data,function(key,value){
                                       $("#subcategory_id").append('<option value="'+value.id+'">'+value.subcategory_en+'</option>');
                                   });

                            console.log(data)
                          },
                         
                      });
                  } else {
                      alert('danger');
                  }
              });
          });
     </script>


     {{-- //sub district --}}

     <script type="text/javascript">
      $(document).ready(function() {
            $('select[name="district_id"]').on('change', function(){
                var district_id = $(this).val();
                if(district_id) {
                    $.ajax({
                        url: "{{  url('/get/subdistrict/') }}/"+district_id,
                        type:"GET",
                        dataType:"json",
                        success:function(data) {
                           $("#subdistrict_id").empty();
                                 $.each(data,function(key,value){
                                     $("#subdistrict_id").append('<option value="'+value.id+'">'+value.subdistrict_en+'</option>');
                                 });

                          console.log(data)
                        },
                       
                    });
                } else {
                    alert('danger');
                }
            });
        });
   </script>

@endsection  