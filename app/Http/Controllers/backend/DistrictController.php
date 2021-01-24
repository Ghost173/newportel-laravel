<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DistrictController extends Controller
{
    public function index() {
        $district = DB::table('districts')->orderBy('id','desc')->paginate(10);
        return view('backend.district.index',compact('district'));
    }


    public function AddDistrict() {

        return view('backend.district.create');
    
    }


    public function StoreDistrict(Request $request) {
        $validated = $request->validate([
            'district_en' => 'required|unique:districts|max:255',
            'district_ta' => 'required|unique:districts|max:255',
        ]);

        $data = array();
        $data['district_en'] = $request->district_en;
        $data['district_ta'] = $request->district_ta;

        DB::table('districts')->insert($data);

        $notification = array(
            'message' => 'district created successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('district')->with($notification );

    }


    public function Editdistrict($id) {
        $district = DB::table('districts')->where('id',$id)->first();
        return view('backend.district.edit',compact('district'));
    }



    public function updatedistrict(Request $request, $id) {
        $validated = $request->validate([
            'district_en' => 'required|max:255',
            'district_ta' => 'required|max:255',
        ]);

        $data = array();
        $data['district_en'] = $request->district_en;
        $data['district_ta'] = $request->district_ta;

        DB::table('districts')->where('id',$id)->update($data);

        $notification = array(
            'message' => 'districts updated successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('district')->with($notification );
    }


    public function deletedistrict($id) {
        DB::table('districts')->where('id', $id)->delete();

        $notification = array(
            'message' => 'districts Deleted successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('district')->with($notification );
    }


  

}
