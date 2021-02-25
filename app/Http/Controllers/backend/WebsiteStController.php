<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;
use Image;

class WebsiteStController extends Controller
{
    
    public function webseting() {
        $webseng = DB::table('website_settings')->first();
        return view('backend.settings.website', compact('webseng'));
    }


    public function updatewebs(Request $request, $id) {


        $data = array();
        $data['phone'] = $request->phone;
        $data['email'] = $request->email;
        $data['address'] = $request->address;
     



        $oldimage = $request->oldimage;
        
        $image = $request->logo;

        if($image) {
            $img_one = uniqid().'.'.$image->getClientOriginalExtension();
            Image::make($image)->resize(320,130)->save('image/logo/'.$img_one);
            $data['logo'] =  'image/logo/'.$img_one;

            DB::table('website_settings')->where('id', $id)->update($data);
            unlink($oldimage);

            $notification = array(
                'message' => 'Post created successfully',
                'alert-type' => 'success'
            );
            // dd($data);
            return redirect()->route('web.setting')->with($notification );
        }


        else {
            $data['logo'] = $oldimage;
            DB::table('website_settings')->where('id', $id)->update($data);

            $notification = array(
                'message' => 'Post created successfully',
                'alert-type' => 'success'
            );
            // dd($data);
            return redirect()->route('web.setting')->with($notification );
        }
    }
}
