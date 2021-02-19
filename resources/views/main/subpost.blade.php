@extends('main.homemaster ')
@section('content')



<section class="single_page">						
    <div class="container-fluid">											
    <div class="row">
        <div class="col-md-12">
            <div class="single_info">
                <span>
                    <a href="#"><i class="fa fa-home" aria-hidden="true"></i> /
                    </a> {{$subcategory_en}}		
                </span>				    
            </div>
        </div>
        <div class="col-md-9 col-sm-8">				
            <div class="row">							
                <div class="col-md-8 col-sm-7">
                    <div class="archive_post_sec">
                       
                       
                    </div>
                </div>															 					
                
            </div>				
            @foreach ($subcatpost as $item)
                
            <div class="archive_post_sec_again">
                <div class="row">
                    <div class="col-md-4 col-sm-5">
                        <div class="archive_img_again">
                            <a href="{{URL::to('view/post/'.$item->id)}}"><img src="{{asset($item->image)}}" alt="Notebook"></a>
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-7">
                        <div class="archive_padding_again">
                            <div class="archive_heading_01">
                                <a href="{{URL::to('view/post/'.$item->id)}}">{{$item->title_en}}</a>
                            </div>
                            <div class="archive_dtails">
                                {!! Str::limit($item->details_en, 200) !!}
                            </div>
                            <div class="dtails_btn"><a href="{{URL::to('view/post/'.$item->id)}}">Read More...</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>	


            @endforeach	
            		
            			
            

        								                          
        	
        </div>
        <div class="col-md-3 col-sm-4">
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