<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Image;

class AdsController extends Controller
{
    public function listads() {
        $ads = DB::table('ads')->orderBy('id','desc')->get();
        return view('backend.ads.listadd',compact('ads'));
    }


    public function addads() {
        return view('backend.ads.addads');
    }

    public function storeads(Request $request) {

        $validated = $request->validate([
            'link' => 'required',
            'ads' => 'required',
            'type' => 'required',
        ]);


        $data = array();
        $data['link'] = $request->link;
      

        if($request->type == 2) {
            
            $image = $request->ads;
           
                $img_one = uniqid().'.'.$image->getClientOriginalExtension();
                Image::make($image)->resize(970,90)->save('image/sponsers/'.$img_one);
                $data['ads'] =  'image/sponsers/'.$img_one;
                $data['type'] = 2;
                DB::table('ads')->insert($data);
    
                $notification = array(
                    'message' => 'horizontal ads successfully',
                    'alert-type' => 'success'
                );
                return redirect()->route('list.ad')->with($notification );
            
        }
        else {
            $image = $request->ads;
       
                $img_one = uniqid().'.'.$image->getClientOriginalExtension();
                Image::make($image)->resize(500,500)->save('image/sponsers/'.$img_one);
                $data['ads'] =  'image/sponsers/'.$img_one;
                $data['type'] = 1;
                DB::table('ads')->insert($data);
    
                $notification = array(
                    'message' => 'vertical ads successfully',
                    'alert-type' => 'success'
                );
                return redirect()->route('list.ad')->with($notification );
            
        }

        // return view('backend.ads.addads');
    }
}
