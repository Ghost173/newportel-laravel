@extends('main.homemaster ')
@section('content')
    

@php
    $firstsection = DB::table('posts')->where('first_thumnail', 1)->orderBy('id','desc')->first();

    $fseimg = DB::table('posts')->where('first_section', 1)->orderBy('id','desc')->limit(8)->get();
@endphp

<section class="news-section">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9 col-sm-8">
                <div class="row">
                    <div class="col-md-1 col-sm-1 col-lg-1"></div>
                    <div class="col-md-10 col-sm-10">
                        <div class="lead-news">
 <div class="service-img"><a href="#"><img src="{{asset($firstsection->image)}}" width="800px" alt="Notebook"></a></div>
                            <div class="content">
                            <h4 class="lead-heading-01"><a href="{{URL::to('view/post/'.$firstsection->id)}}">
                                @if(session()->get('lang') == 'tamil')
                                {{$firstsection->title_ta}}
                                @else
                                {{$firstsection->title_en}}
                                @endif 
                                
                                </a> </h4>
                            </div>
                        </div>
                    </div>
                    
                </div>
                    <div class="row">
                        @foreach ($fseimg as $item)
                        <div class="col-md-3 col-sm-3">
                            <div class="top-news">
                                <a href="{{URL::to('view/post/'.$item->id)}}"><img src="{{asset($item->image)}}" alt="Notebook"></a>
                                <h4 class="heading-02"><a href="#">
                                    @if(session()->get('lang') == 'tamil')
                                    {{ Str::limit($item->title_ta, 40)}}
                                    {{-- {{$item->title_ta}} --}}
                                    @else
                                    {{$item->title_en}}
                                    @endif 
                                
                                </a> </h4>
                            </div>
                        </div>
                        @endforeach
                           
                            
                    </div>
                
                <!-- add-start -->	
                <div class="row">
                @php
                    $hori = DB::table('ads')->where('type',2)->skip(1)->first();
                @endphp
                    <div class="col-md-12 col-sm-12">
                        <div class="add">
                            @if ($hori)
                            <a href="{{$hori->link}}" target="_blank"> <img src="{{asset($hori->ads)}}" alt="{{$hori->link}}" /> </a>
                            @else
                           
                            @endif
                        </div>
                    </div>
                </div><!-- /.add-close -->	
                
                <!-- news-start -->
                <div class="row">
                    <div class="col-md-6 col-sm-6">

                        @php
                            $fcatbg = DB::table('categories')->first();
                            $catrenew = DB::table('posts')->where('category_id',$fcatbg->id)->where('bigthumnail',1)->orderBy('id','desc')->first();
                            $catrenewnull = DB::table('posts')->where('category_id',$fcatbg->id)->where('bigthumnail',NULL)->orderBy('id','desc')->limit(3)->get();
                        @endphp
                        <div class="bg-one">
                            <div class="cetagory-title"><a href="#">
                                @if(session()->get('lang') == 'tamil')
                                    {{$fcatbg->category_ta}}
                                    @else
                                    {{$fcatbg->category_en}}
                                    @endif 
                                
                                <span>More <i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
                            <div class="row">
                                
                               

                                <div class="col-md-6 col-sm-6">
                                    <div class="top-news">
                                        <a href="#"><img src="{{asset($catrenew->image)}}" alt="Notebook"></a>
                                        <h4 class="heading-02"><a href="#">
                                            
                                            @if(session()->get('lang') == 'tamil')
                                            {{$catrenew->title_ta}}
                                            @else
                                            {{$catrenew->title_en}}
                                            @endif 
                                        </a> </h4>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    @foreach ($catrenewnull as $item)
                                    <div class="image-title">
                                        <a href="{{URL::to('view/post/'.$item->id)}}"><img src="{{asset($item->image)}}" alt="Notebook"></a>
                                        <h4 class="heading-03"><a href="#">
                                            @if(session()->get('lang') == 'tamil')
                                            {{$item->title_ta}}
                                            @else
                                            {{$item->title_en}}
                                            @endif 
                                        
                                        </a> </h4>
                                    </div>
                                    @endforeach
                                   
                                   
                                </div>
                            </div>
                        </div>
                    </div>

                @php
                    $scatbg = DB::table('categories')->skip(1)->first();
                    $catrenews = DB::table('posts')->where('category_id',$scatbg->id)->where('bigthumnail',1)->orderBy('id','desc')->first();
                    $catrenewnulls = DB::table('posts')->where('category_id',$scatbg->id)->orderBy('id','desc')->limit(3)->get();
                @endphp

                    <div class="col-md-6 col-sm-6">
                        <div class="bg-one">
                            <div class="cetagory-title"><a href="#">
                                
                                @if(session()->get('lang') == 'tamil')
                                {{$scatbg->category_ta}}
                                @else
                                {{$scatbg->category_en}}
                                @endif

                                <span>More <i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
                            <div class="row">
                                <div class="col-md-6 col-sm-6">
                                    <div class="top-news">
                                        <a href="#"><img src="{{asset($catrenew->image)}}" alt="Notebook"></a>
                                        <h4 class="heading-02"><a href="#">
                                            @if(session()->get('lang') == 'tamil')
                                            {{$catrenews->title_ta}}
                                            @else
                                            {{$catrenews->title_en}}
                                            @endif     
                                        
                                        </a> </h4>
                                    </div>
                                </div>


                                <div class="col-md-6 col-sm-6">

                                    @foreach ($catrenewnulls as $item)
                                    <div class="image-title">
                                        <a href="#"><img src="{{asset($item->image)}}" alt="Notebook"></a>
                                        <h4 class="heading-03"><a href="#">
                                            @if(session()->get('lang') == 'tamil')
                                            {{$item->title_ta}}
                                            @else
                                            {{$item->title_en}}
                                            @endif     
                                        
                                        </a> </h4>
                                    </div>
                                    @endforeach
                                   
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>					
            </div>
            <div class="col-md-3 col-sm-3">
                <!-- add-start -->	

                @php
                $ver2 = DB::table('ads')->where('type',1)->skip(1)->first();
                @endphp
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="sidebar-add">
                            @if ($ver2)
                            <a href="{{$ver2->link}}" target="_blank"> <img src="{{asset($ver2->ads)}}" alt="{{$ver2->link}}" /> </a>
                            @else
                           
                            @endif
                        </div>
                    </div>
                </div><!-- /.add-close -->	
                
                <!-- add-start -->	

                @php
                $ver3 = DB::table('ads')->where('type',1)->skip(2)->first();
                @endphp
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="sidebar-add">
                            @if ($ver3)
                            <a href="{{$ver3->link}}" target="_blank"> <img src="{{asset($ver3->ads)}}" alt="{{$ver3->link}}" /> </a>
                            @else
                           
                            @endif
                        </div>
                    </div>
                </div><!-- /.add-close -->	
                

                @php
                    $livetv = DB::table('livetcs')->first();

                @endphp

                @if ($livetv->status == 1)
                <div class="cetagory-title-03">Live TV</div>
                <div class="photo">
                    <div class="embed-responsive embed-responsive-16by9 embed-responsive-item" style="margin-bottom:5px;">
                        {!!$livetv->embed_code!!}
         
                        {{-- <iframe width="729" height="410" src="https://www.youtube.com/embed/S81Kte7X9uk" 
                        frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                        allowfullscreen></iframe> --}}
                    </div>
                </div>    
                @endif
                <!-- youtube-live-start -->	
                
                <!-- /.youtube-live-close -->	
                
                <!-- facebook-page-start -->
                <div class="cetagory-title-03">Facebook </div>
                <div id="fb-root"></div>
<script async defer crossorigin="anonymous" 
src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v9.0&appId=1614358055273573&autoLogAppEvents=1" 
nonce="5uIgaCia"></script>

<div class="fb-page" 
data-href="https://www.facebook.com/enakkaka.nee/" 
data-tabs="" data-width="" data-height="" 
data-small-header="false" data-adapt-container-width="true" 
data-hide-cover="false" data-show-facepile="false"><blockquote 
cite="https://www.facebook.com/enakkaka.nee/" class="fb-xfbml-parse-ignore">
<a href="https://www.facebook.com/enakkaka.nee/">உனக்கா தான் உயிர் வாழ்கின்றேன்</a></blockquote></div>
                {{-- <div class="fb-root">
                    facebook page here
                </div><!-- /.facebook-page-close -->	 --}}
                
                <!-- add-start -->	
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        @php
                             $ver1 = DB::table('ads')->where('type',1)->first();
                        @endphp
                        <div class="sidebar-add">
                             @if ($ver1)
                            <a href="{{$ver1->link}}" target="_blank"> <img src="{{asset($ver1->ads)}}" alt="{{$ver1->link}}" /> </a>
                            @else
                           
                            @endif
                        </div>
                    </div>
                </div><!-- /.add-close -->	
            </div>
        </div>
    </div>
</section><!-- /.1st-news-section-close -->

<!-- 2nd-news-section-start -->	



<section class="news-section">
    <div class="container-fluid">
        <div class="row">


            @php
                $categythr = DB::table('categories')->skip(2)->first();
                $catrenews = DB::table('posts')->where('category_id',$categythr->id)->where('bigthumnail',1)->orderBy('id','desc')->first();
                $catrenewnulls = DB::table('posts')->where('category_id',$categythr->id)->orderBy('id','desc')->limit(3)->get();
            @endphp



            <div class="col-md-6 col-sm-6">
                <div class="bg-one">
                    <div class="cetagory-title-02"><a href="#">
                        
                        @if(session()->get('lang') == 'tamil')
                            {{$categythr->category_ta}}
                                @else
                            {{$categythr->category_en}}
                        @endif  
                        
                    <i class="fa fa-angle-right" aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i>All News  </span></a></div>
                    <div class="row">
                        <!-- big one -->
                        <div class="col-md-6 col-sm-6">
                            <div class="top-news">
                                <a href="#"><img src="{{asset($catrenews->image)}}" alt="Notebook"></a>
                                <h4 class="heading-02"><a href="#">
                                @if(session()->get('lang') == 'tamil')
                                    {{$catrenews->title_ta}}
                                        @else
                                    {{$catrenews->title_en}}
                                @endif      
                                
                                </a> </h4>
                            </div>
                        </div>
                        {{-- small one --}}
                        <div class="col-md-6 col-sm-6">
                           @foreach ($catrenewnulls as $item)
                                <div class="image-title">
                                    <a href="#"><img src="{{asset($item->image)}}" alt="Notebook"></a>
                                    <h4 class="heading-03"><a href="#">
                                        @if(session()->get('lang') == 'tamil')
                                        {{$item->title_ta}}
                                            @else
                                        {{$item->title_en}}
                                    @endif  
                                    
                                    </a> </h4>
                                </div>
                           @endforeach
                           
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-6">

            @php
                $cat4 = DB::table('categories')->skip(3)->first();
                $catrenews = DB::table('posts')->where('category_id',$cat4->id)->where('bigthumnail',1)->orderBy('id','desc')->first();
                $catrenewnulls = DB::table('posts')->where('category_id',$cat4->id)->orderBy('id','desc')->limit(3)->get();
            @endphp


                <div class="bg-one">
                    <div class="cetagory-title-02"><a href="#">
                        
                    @if(session()->get('lang') == 'tamil')
                        {{$cat4->category_ta}}
                            @else
                        {{$cat4->category_en}}
                    @endif      
                    <i class="fa fa-angle-right" aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i>All News  </span></a></div>
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="top-news">
                                <a href="#"><img src="{{asset($catrenews->image)}}" alt="Notebook"></a>
                                <h4 class="heading-02"><a href="#">
                                    
                                    @if(session()->get('lang') == 'tamil')
                                    {{$catrenews->title_ta}}
                                        @else
                                    {{$catrenews->title_en}}
                                @endif  
                                </a> </h4>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-6">
                            @foreach ($catrenewnulls as $item)
                                <div class="image-title">
                                <a href="#"><img src="{{asset($item->image)}}" alt="Notebook"></a>
                                <h4 class="heading-03"><a href="#">
                                    @if(session()->get('lang') == 'tamil')
                                    {{$item->title_ta}}
                                        @else
                                    {{$item->title_en}}
                                @endif      
                                
                                </a> </h4>
                                </div>
                            @endforeach
                           
                            
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ******* -->
        <div class="row">
            <div class="col-md-6 col-sm-6">

            @php
                $cat4 = DB::table('categories')->skip(4)->first();
                $catrenews = DB::table('posts')->where('category_id',$cat4->id)->where('bigthumnail',1)->orderBy('id','desc')->first();
                $catrenewnulls = DB::table('posts')->where('category_id',$cat4->id)->orderBy('id','desc')->limit(3)->get();
            @endphp

                <div class="bg-one">
                    <div class="cetagory-title-02"><a href="#">{{$cat4->category_en}}<i class="fa fa-angle-right" aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i> All News  </span></a></div>
                    <div class="row">

                        <div class="col-md-6 col-sm-6">
                            <div class="top-news">
                                <a href="#"><img src="{{asset($catrenews->image)}}" alt="Notebook"></a>
                                <h4 class="heading-02"><a href="#">Israel sends treaty delegation to Bahrain with Trump aides</a> </h4>
                            </div>
                        </div>

                        <div class="col-md-6 col-sm-6">
                            <div class="image-title">
                                <a href="#"><img src="{{asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                                <h4 class="heading-03"><a href="#">Israel sends treaty delegation to Bahrain with Trump aides</a> </h4>
                            </div>
                            <div class="image-title">
                                <a href="#"><img src="{{asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                                <h4 class="heading-03"><a href="#">Israel sends treaty delegation to Bahrain with Trump aides</a> </h4>
                            </div>
                            <div class="image-title">
                                <a href="#"><img src="{{asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                                <h4 class="heading-03"><a href="#">Israel sends treaty delegation to Bahrain with Trump aides</a> </h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-6">
                <div class="bg-one">
                    <div class="cetagory-title-02"><a href="#">Education <i class="fa fa-angle-right" aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i> All News  </span></a></div>
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="top-news">
                                <a href="#"><img src="{{asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                                <h4 class="heading-02"><a href="#">Students won't get form fill-up fee back</a> </h4>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="image-title">
                                <a href="#"><img src="{{asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                                <h4 class="heading-03"><a href="#">Students won't get form fill-up fee back</a> </h4>
                            </div>
                            <div class="image-title">
                                <a href="#"><img src="{{asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                                <h4 class="heading-03"><a href="#">Students won't get form fill-up fee back</a> </h4>
                            </div>
                            <div class="image-title">
                                <a href="#"><img src="{{asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                                <h4 class="heading-03"><a href="#">Students won't get form fill-up fee back</a> </h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- add-start -->	
    
        <div class="row">
            <div class="col-md-6 col-sm-6">
    @php
        $hori1 = DB::table('ads')->where('type',2)->skip(2)->first();
    @endphp
                <div class="add">
                    @if ($hori1)
                    <a href="{{$hori1->link}}" target="_blank"> <img src="{{asset($hori1->ads)}}" alt="{{$hori1->link}}" /> </a>
                    @else
                   
                    @endif
                </div>
            </div>
            <div class="col-md-6 col-sm-6">
            @php
                $hori2 = DB::table('ads')->where('type',2)->skip(3)->first();
            @endphp
                <div class="add">
                    @if ($hori2)
                    <a href="{{$hori2->link}}" target="_blank"> <img src="{{asset($hori2->ads)}}" alt="{{$hori2->link}}" /> </a>
                    @else
                   
                    @endif
                </div>
            </div>
        </div><!-- /.add-close -->	
        
    </div>
</section><!-- /.2nd-news-section-close -->

<!-- 3rd-news-section-start -->	
<section class="news-section">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9 col-sm-9">
                <div class="cetagory-title-02"><a href="#">Feature  <i class="fa fa-angle-right" aria-hidden="true"></i> all district news tab here <span><i class="fa fa-plus" aria-hidden="true"></i> All News  </span></a></div>
                
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="top-news">
                            <a href="#"><img src="{{asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                            <h4 class="heading-02"><a href="#">Achieving SDG-4 during COVID-19 Pandemic</a> </h4>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="image-title">
                            <a href="#"><img src="{{asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                            <h4 class="heading-03"><a href="#">Achieving SDG-4 during COVID-19 Pandemic</a> </h4>
                        </div>
                        <div class="image-title">
                            <a href="#"><img src="{{asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                            <h4 class="heading-03"><a href="#">Achieving SDG-4 during COVID-19 Pandemic</a> </h4>
                        </div>
                        <div class="image-title">
                            <a href="#"><img src="{{asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                            <h4 class="heading-03"><a href="#">Achieving SDG-4 during COVID-19 Pandemic</a> </h4>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="image-title">
                            <a href="#"><img src="{{asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                            <h4 class="heading-03"><a href="#">Achieving SDG-4 during COVID-19 Pandemic</a> </h4>
                        </div>
                        <div class="image-title">
                            <a href="#"><img src="{{asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                            <h4 class="heading-03"><a href="#">Achieving SDG-4 during COVID-19 Pandemic</a> </h4>
                        </div>
                        <div class="image-title">
                            <a href="#"><img src="{{asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                            <h4 class="heading-03"><a href="#">Achieving SDG-4 during COVID-19 Pandemic</a> </h4>
                        </div>
                    </div>
                </div>
                <!-- ******* -->
                <br />
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="cetagory-title-02"><a href="#">Sci-Tech<i class="fa fa-angle-right" aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i> সব খবর  </span></a></div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="bg-gray">
                            <div class="top-news">
                                <a href="#"><img src="{{asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                                <h4 class="heading-02"><a href="#">Facebook Messenger gets shiny new logo </a> </h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="news-title">
                            <a href="#">Facebook Messenger gets shiny new logo </a>
                        </div>
                        <div class="news-title">
                            <a href="#">Facebook Messenger gets shiny new logo </a>
                        </div>
                        <div class="news-title">
                            <a href="#">Facebook Messenger gets shiny new logo</a>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="news-title">
                            <a href="#">Facebook Messenger gets shiny new logo </a>
                        </div>
                        <div class="news-title">
                            <a href="#">Facebook Messenger gets shiny new logo </a>
                        </div>
                        <div class="news-title">
                            <a href="#">Facebook Messenger gets shiny new logo </a>
                        </div>
                    </div>
                </div>
                

<br><br>
                <div class="row">

                    @php
                        $district = DB::table('districts')->get();
                    @endphp
                        <div class="cetagory-title-02"><a href="#">Search By district<i class="fa fa-angle-right" aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i> সব খবর  </span></a></div>
                   

                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

                    <form action="{{route('searchby.district')}}" method="get">
                        @csrf
                        <div class="row">
                            <div class="col-lg-4">
                                <select class="form-control" id="exampleSelectGender" name="district_id" >
                                    <option disabled selected>Select District</option>
                                    @foreach ($district as $dis)
                                      <option value="{{$dis->id}}">{{$dis->district_en}}</option>
                                    @endforeach
                                </select>
                            </div>    

                            <div class="col-lg-4">
                                <select class="form-control" id="subdistrict_id" name="subdistrict_id" >
                                    <option disabled selected>Select subDistrict</option>
                                  </select>
                            </div>  

                            <div class="col-lg-4">
                                <button class="btn btn-info btn-block">Search</button>
                            </div>  
                        
                        </div> 

                    </form>
                </div>

                <br><br>

                <div class="row">
                    <div class="col-md-12 col-sm-12">
    @php
        $hori3 = DB::table('ads')->where('type',2)->skip(3)->first();
    @endphp
                        <div class="sidebar-add">
                            @if ($hori3)
                            <a href="{{$hori3->link}}" target="_blank"> <img src="{{asset($hori3->ads)}}" alt="{{$hori3->link}}" /> </a>
                            @else
                           
                            @endif
                        </div>
                    </div>
                </div><!-- /.add-close -->	


            </div>

            @php
                $latest = DB::table('posts')->orderBy('id','desc')->limit(5)->get();
                $fav = DB::table('posts')->orderBy('id','desc')->inRandomOrder()->limit(5)->get();
                $hig  = DB::table('posts')->orderBy('id','asc')->inRandomOrder()->limit(5)->get();
            @endphp


            <div class="col-md-3 col-sm-3">
                <div class="tab-header">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs nav-justified" role="tablist">
                        <li role="presentation" class="active"><a href="#tab21" aria-controls="tab21" role="tab" data-toggle="tab" aria-expanded="false">Latest</a></li>
                        <li role="presentation" ><a href="#tab22" aria-controls="tab22" role="tab" data-toggle="tab" aria-expanded="true">Popular</a></li>
                        <li role="presentation" ><a href="#tab23" aria-controls="tab23" role="tab" data-toggle="tab" aria-expanded="true">Popular1</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content ">
                        <div role="tabpanel" class="tab-pane in active" id="tab21">
                            <div class="news-titletab">

                                @foreach ($latest as $item)
                                <div class="news-title-02">
                                    <h4 class="heading-03"><a href="#">{{$item->tags_en}}</a> </h4>
                                </div>
                                @endforeach
                                
                                
                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="tab22">
                            <div class="news-titletab">

                                @foreach ($fav as $item)
                                <div class="news-title-02">
                                    <h4 class="heading-03"><a href="#">{{$item->tags_en}}</a> </h4>
                                </div>
                                @endforeach
                                
                                
                            </div>                                          
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="tab23">	
                            <div class="news-titletab">

                                @foreach ($hig as $item)
                                <div class="news-title-02">
                                    <h4 class="heading-03"><a href="#">{{$item->tags_en}}</a> </h4>
                                </div>
                                @endforeach
                               
                                
                            </div>						                                          
                        </div>
                    </div>
                </div>
                <!-- Namaj Times -->

                @php
                    $notice = DB::table('prayers')->first();
                @endphp
                <div class="cetagory-title-03">

                    @if(session()->get('lang')== 'tamil')
                    இன்றைய  நாள் 
                    @else
                    Today Moto
                    @endif 

                </div>
                <table class="table">
                   <tr>
                       <th>{{$notice->item1}}</th>
                   </tr>
                   <tr>
                    <th>{{$notice->item2}}</th>
                </tr>
                <tr>
                    <th>{{$notice->item3}}</th>
                </tr>
                <tr>
                    <th>{{$notice->item4}}</th>
                </tr>
                </table>
                                        
               
                <!-- Namaj Times -->
                <div class="cetagory-title-03">Old News  </div>
                <form action="" method="post">
                    <div class="old-news-date">
                       <input type="text" name="from" placeholder="From Date" required="">
                       <input type="text" name="" placeholder="To Date">			
                    </div>
                    <div class="old-date-button">
                        <input type="submit" value="search ">
                    </div>
               </form>
               <!-- news -->
               <br><br><br><br><br>
               <div class="cetagory-title-04"> Important Website</div>
               <div class="">
                   @php
                       $websites = DB::table('websites')->get();
                   @endphp

                   @foreach ($websites as $website)
                   <div class="news-title-02">
                    <h4 class="heading-03"><a href="{{$website->website_link}}" target="_blank"><i class="fa fa-check" aria-hidden="true"></i> {{$website->website_name}} </a> </h4>
                </div>
                   @endforeach
                   
                   
               </div>

            </div>
        </div>
    </div>
</section><!-- /.3rd-news-section-close -->









<!-- gallery-section-start -->	
<section class="news-section">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 col-sm-7">
                <div class="gallery_cetagory-title"> Photo Gallery </div>

                <div class="row">

                    @php
                    $photobig = DB::table('photos')->where('type',1)->orderBy('id','desc')->first();
                    $photosmall = DB::table('photos')->where('type',0)->orderBy('id','desc')->limit(5)->get();
                    @endphp
                

                    <div class="col-md-8 col-sm-8">
                        <div class="photo_screen">
                            <div class="myPhotos" style="width:100%">
                                  <img src="{{asset($photobig->photo)}}"  alt="Avatar">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="photo_list_bg">

                            @foreach ($photosmall as $item)

                            <div class="photo_img photo_border active">
                                <img src="{{asset($item->photo)}}" alt="image" onclick="currentDiv(1)">
                                <div class="heading-03">
                                   {{$item->title}}
                                </div>
                            </div>
                            @endforeach
                          
                            

                        </div>
                    </div>
                </div>

                <!--=======================================
                Video Gallery clickable jquary  start
            ========================================-->

                        <script>
                                var slideIndex = 1;
                                showDivs(slideIndex);

                                function plusDivs(n) {
                                  showDivs(slideIndex += n);
                                }

                                function currentDiv(n) {
                                  showDivs(slideIndex = n);
                                }

                                function showDivs(n) {
                                  var i;
                                  var x = document.getElementsByClassName("myPhotos");
                                  var dots = document.getElementsByClassName("demo");
                                  if (n > x.length) {slideIndex = 1}
                                  if (n < 1) {slideIndex = x.length}
                                  for (i = 0; i < x.length; i++) {
                                     x[i].style.display = "none";
                                  }
                                  for (i = 0; i < dots.length; i++) {
                                     dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
                                  }
                                  x[slideIndex-1].style.display = "block";
                                  dots[slideIndex-1].className += " w3-opacity-off";
                                }
                            </script>

            <!--=======================================
                Video Gallery clickable  jquary  close
            =========================================-->

            </div>
            <div class="col-md-4 col-sm-5">
                <div class="gallery_cetagory-title"> Video Gallery </div>



@php
    $bigvideo = DB::table('videos')->where('type',1)->orderBy('id','desc')->first();
  
@endphp


                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="video_screen">
                            <div class="myVideos" style="width:100%">
                            <div class="embed-responsive embed-responsive-16by9 embed-responsive-item">
                                {!! $bigvideo->embed_code !!}
                            </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">

                    <div class="col-md-12">
                    @php
                          $smallvideo = DB::table('videos')->orderBy('id','desc')->limit(5)->get();
                    @endphp
                        <div class="gallery_sec owl-carousel">

                        
                            @foreach ($smallvideo as $item)
                            <div class="embed-responsive embed-responsive-16by9 embed-responsive-item">
                                {!! $item->embed_code !!}
                            </div>
                            @endforeach

                        </div>
                    </div>
                </div>

                            
                {{-- <div class="video_image" style="width:100%" onclick="currentDivs(1)">
                    <img src="{{asset('frontend/assets/img/news.jpg')}}"  alt="Avatar">
                    <div class="heading-03">
                        <div class="content_padding">
                       Kumar Sanu tests positive for coronavirus
                        </div>
                    </div>
                </div> --}}


                <script>
                    var slideIndex = 1;
                    showDivss(slideIndex);

                    function plusDivs(n) {
                      showDivss(slideIndex += n);
                    }

                    function currentDivs(n) {
                      showDivss(slideIndex = n);
                    }

                    function showDivss(n) {
                      var i;
                      var x = document.getElementsByClassName("myVideos");
                      var dots = document.getElementsByClassName("demo");
                      if (n > x.length) {slideIndex = 1}
                      if (n < 1) {slideIndex = x.length}
                      for (i = 0; i < x.length; i++) {
                         x[i].style.display = "none";
                      }
                      for (i = 0; i < dots.length; i++) {
                         dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
                      }
                      x[slideIndex-1].style.display = "block";
                      dots[slideIndex-1].className += " w3-opacity-off";
                    }
                </script>

            </div>
        </div>
    </div>
</section><!-- /.gallery-section-close -->





<!-- top-footer-start -->
<!-- /.top-footer-close -->

<script type="text/javascript">
    $(document).ready(function() {
          $('select[name="district_id"]').on('change', function(){
              var district_id = $(this).val();
              if(district_id) {
                  $.ajax({
                      url: "{{  url('/get/subdistrict/frontend') }}/"+district_id,
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