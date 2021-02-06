<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;


class WebsiteController extends Controller
{
    public function websitesetting()  {
        $website = DB::table('websites')->orderBy('id','desc')->paginate(10);
        return view('backend.website.index', compact('website'));
    }


    public function addwebsite() {
        return view('backend.website.create');
    }


    public function storewebsite(Request $request) {
        $data = array();
        $data['website_name'] = $request->website_name;
        $data['website_link'] = $request->website_link;

        DB::table('websites')->insert($data);

        $notification = array(
            'message' => 'webiste save successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('all.website')->with($notification );
    }


    public function editwebsite ($id) {
        $websites = DB::table('websites')->where('id',$id)->first();
        return view('backend.website.edit',compact('websites'));
    }



    public function updatewebsite(Request $request, $id) {

        $data = array();
        $data['website_name'] = $request->website_name;
        $data['website_link'] = $request->website_link;

        DB::table('websites')->where('id',$id)->update($data);

        $notification = array(
            'message' => 'websites updated successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('all.website')->with($notification );
    }




    public function deletewebsite($id) {
        DB::table('websites')->where('id', $id)->delete();

        $notification = array(
            'message' => 'website Deleted successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('all.website')->with($notification );
    }

}

