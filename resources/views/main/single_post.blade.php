@extends('main.homemaster ')
@section('content')
    




<section class="single-page">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <ol class="breadcrumb">   
                   <li><a href="#"><i class="fa fa-home"></i></a></li>					   
                    <li><a href="#">{{$post->category_en}}</a></li>
                    <li><a href="#">{{$post->subcategory_en}}</a></li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 col-sm-12"> 											
                <header class="headline-header margin-bottom-10">
                    <h1 class="headline">{{$post->title_en}}</h1>
                </header>
     
     
             <div class="article-info margin-bottom-20">
              <div class="row">
                    <div class="col-md-6 col-sm-6"> 
                     <ul class="list-inline">
                     
                     
                     <li>{{$post->name}} </li>     <li><i class="fa fa-clock-o"></i> {{$post->post_date}} </li>
                     </ul>
                    
                    </div>
                    <div class="col-md-6 col-sm-6 pull-right"> 						
                        <div class="sharethis-inline-share-buttons"></div>
                    </div>						
                </div>				 
             </div>				
        </div>
      </div>
      <!-- ******** -->
      <div class="row">
        <div class="col-md-8 col-sm-8">
            <div class="single-news">
                <img src="{{asset($post->image)}}" alt="" />
                <h4 class="caption"> {{$post->title_en}} </h4>
               
                    {!! $post->details_en !!}

            </div>
            <!-- ********* -->
            <div class="sharethis-inline-share-buttons"></div>
            <br>
            <br>

            @php
                $more = DB::table('posts')->where('category_id',$post->category_id)->orderBy('id','desc')->limit(6)->get();
          
            @endphp
            <div class="row">
                
                <div class="col-md-12"><h2 class="heading">Related News</h2></div>

                @foreach ($more as $item)
                <div class="col-md-4 col-sm-4">
                    <div class="top-news sng-border-btm">
                        <a href="{{URL::to('view/post/'.$item->id)}}"><img src="{{asset($item->image)}}" alt="Notebook"></a>
                        <h4 class="heading-02"><a href="#">{{Str::limit($item->title_en, 40)}}</a> </h4>
                    </div>
                </div>
                @endforeach
                
              
            </div>


            <div class="row">
                {{-- <div class="col-md-4 col-sm-4">
                    <div class="top-news">
                        <a href="#"><img src="assets/img/news.jpg" alt="Notebook"></a>
                        <h4 class="heading-02"><a href="#">e-CAB shows how to help people during crisis</a> </h4>
                    </div>
                </div> --}}
              
            </div>
        </div>
        <div class="col-md-4 col-sm-4">
            <!-- add-start -->	
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="sidebar-add"><img src="{{asset('frontend/assets/img/midbaner1.jpg')}}" alt="" /></div>
                    </div>
                </div><!-- /.add-close -->
            <div class="tab-header">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs nav-justified" role="tablist">
                    <li role="presentation" class="active"><a href="#tab21" aria-controls="tab21" role="tab" data-toggle="tab" aria-expanded="false">Latest</a></li>
                    <li role="presentation" ><a href="#tab22" aria-controls="tab22" role="tab" data-toggle="tab" aria-expanded="true">Popular</a></li>
                    <li role="presentation" ><a href="#tab23" aria-controls="tab23" role="tab" data-toggle="tab" aria-expanded="true">Popular1</a></li>
                </ul>
    

            @php
                $latest = DB::table('posts')->orderBy('id','desc')->limit(5)->get();
                $fav = DB::table('posts')->orderBy('id','desc')->inRandomOrder()->limit(5)->get();
                $hig  = DB::table('posts')->orderBy('id','asc')->inRandomOrder()->limit(5)->get();
            @endphp
                <!-- Tab panes -->
                <div class="tab-content ">
                    <div role="tabpanel" class="tab-pane in active" id="tab21">

                        <div class="news-titletab">
                            @foreach ($latest as $item)
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="{{URL::to('view/post/'.$item->id)}}">{{$item->title_en}}</a> </h4>
                            </div>
                            @endforeach
                          
                            
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="tab22">
                        <div class="news-titletab">

                            @foreach ($fav as $item)
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="{{URL::to('view/post/'.$item->id)}}"> {{$item->title_en}}</a> </h4>
                            </div>
                            @endforeach
                            
                            
                        </div>                                          
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="tab23">	
                        <div class="news-titletab">

                            @foreach ($hig as $item)
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="{{URL::to('view/post/'.$item->id)}}">{{$item->title_en}}</a> </h4>
                            </div>
                            @endforeach
                            
                           
                        </div>						                                          
                    </div>
                </div>
            </div>
            <!-- add-start -->	
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="sidebar-add"><img src="{{asset('frontend/assets/img/midbaner1.jpg')}}" alt="" /></div>
                    </div>
                </div><!-- /.add-close -->
        </div>
      </div>
    </div>
</section>







@endsection