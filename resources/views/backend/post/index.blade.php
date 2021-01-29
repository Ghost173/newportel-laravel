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
                {{-- <p class="mb-0 font-weight-normal d-none d-sm-block">YOUR ARE IN CATEGORY PAGE</p> --}}
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
    

    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
          <div class="card-body">
            <h4 class="card-title">All Post Page</h4>

            <div class="template-demo">
                <a href="{{route('create.post')}}">
                    <button type="button" class="btn btn-primary btn-rounded btn-fw" style="float: right;">Add Post</button>
                </a>
            </div>
        
            <div class="table-responsive">
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th> # </th>
                    <th>psot title</th>
                    <th>Category</th>
                    <th>District</th>
                    <th>Image</th>
                    <th>Post date</th>
                    <th>Action </th>
                  </tr>
                </thead>

                
                <tbody>
                  @php ($i = 1)
                    @foreach ($post as $row)
                    <!-- Modal -->
                    <!-- Modal -->
<div class="modal fade" id="exampleModal{{$row->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">{{$row->title_en}}</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
 
                        <tr>
                        <td> {{$i++}} </td>
                        <td> {{Str::limit($row->title_en,(40))}} </td>
                        <td> {{$row->category_en}} </td>
                        <td> {{$row->district_en}} </td>
                        <td><img src="{{$row->image}}" style="width: 50px; height: 50px"></td>
                        <td> {{Carbon\Carbon::parse($row->created_at)->diffForHumans()}} </td>
                        <td> 
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal{{$row->id}}"> View </button>
                            <a href="{{route('edit.post', $row->id)}}" class="btn btn-info">Edit</a>
                            <a href="{{route('delete.category', $row->id)}}" class="btn btn-danger" onclick="return confirm('Are you sure to delete?')">Delete</a>
                            

                        </td>
                      </tr>
                    @endforeach
                </tbody>
              </table>
              {{$post->links('pagination-link')}}
            </div>
          </div>
        </div>
      </div>
    
    
    


@endsection  