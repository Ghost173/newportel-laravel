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
                <h4 class="mb-1 mb-sm-0">YWelcome to tamilworld</h4>
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
            <h4 class="card-title">Video Gallry</h4>

            <div class="template-demo">
                <a href="{{route('add.video')}}">
                    <button type="button" class="btn btn-primary btn-rounded btn-fw" style="float: right;">Add video</button>
                </a>
            </div>
        
            <div class="table-responsive">
              <table class="table table-bordered">
                <thead>
                  <tr>
                    <th> # </th>
                    <th>Title</th>
                    <th> type </th>
                    <th> Action </th>
                  </tr>
                </thead>

                
                <tbody>
                  @php ($i = 1)
                    @foreach ($video as $vid)
                        <tr>
                        <td> {{$i++}} </td>
                        <td> {{$vid->title}} </td>

                        <td> 
                            @if($vid->type ==1)
                            <span class="badge badge-success">big video</span>
                            @else
                            <span class="badge badge-info">small video</span>
                            @endif
                        </td>
                        <td> 
                            <a href="{{route('edit.video', $vid->id)}}" class="btn btn-info">Edit</a>
                            <a href="{{route('delete.video', $vid->id)}}" class="btn btn-danger" onclick="return confirm('Are you sure to delete?')">Delete</a>

                        </td>
                      </tr>
                    @endforeach
                </tbody>
              </table>
              {{$video->links('pagination-link')}}
            </div>
          </div>
        </div>
      </div>
    
    
    


@endsection  