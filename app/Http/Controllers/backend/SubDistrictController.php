<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SubDistrictController extends Controller
{
    public function index() {
        $subdistrict = DB::table('subdistricts')
            ->join('districts','subdistricts.district_id','districts.id')
            ->select('subdistricts.*','districts.district_en','districts.district_ta')
            ->orderBy('id','desc')->paginate(10);

        return view('backend.subdistrict.index',compact('subdistrict'));
    }


    public function Addsubdistrict() {
        $subdistrict = DB::table('districts')->get();
        return view('backend.subdistrict.create', compact('subdistrict'));
    }


    public function Storesubdistrict(Request $request) {
        $validated = $request->validate([
            'subdistrict_en' => 'required|unique:subdistricts|max:255',
            'subdistrict_ta' => 'required|unique:subdistricts|max:255',
            'district_id' => 'required'
        ]);

        $data = array();
        $data['subdistrict_en'] = $request->subdistrict_en;
        $data['subdistrict_ta'] = $request->subdistrict_ta;
        $data['district_id'] = $request->district_id;

        DB::table('subdistricts')->insert($data);

        $notification = array(
            'message' => 'subdistricts created successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('subdistrict')->with($notification );

    }
}
