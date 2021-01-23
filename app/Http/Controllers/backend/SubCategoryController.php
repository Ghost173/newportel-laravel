<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SubCategoryController extends Controller
{
    public function index() {
        $subcategory = DB::table('sub_categories')
            ->join('categories','sub_categories.category_id','categories.id')
            ->select('sub_categories.*','categories.category_en','categories.category_ta')
            ->orderBy('id','desc')->paginate(10);

        return view('backend.subcategory.index',compact('subcategory'));
    }

    public function AddsubCategory() {
        $category = DB::table('categories')->get();
        return view('backend.subcategory.create', compact('category'));
    }

    public function StoresubCategory(Request $request) {
        $validated = $request->validate([
            'subcategory_en' => 'required|unique:sub_categories|max:255',
            'subcategory_ta' => 'required|unique:sub_categories|max:255',
            'category_id' => 'required'
        ]);

        $data = array();
        $data['subcategory_en'] = $request->subcategory_en;
        $data['subcategory_ta'] = $request->subcategory_ta;
        $data['category_id'] = $request->category_id;

        DB::table('sub_categories')->insert($data);

        $notification = array(
            'message' => 'sub category created successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('subcategories')->with($notification );

    }


    public function EditsubCategory($id) {
        $subcategory = DB::table('sub_categories')->where('id',$id)->first();
        $category = DB::table('categories')->get();

        return view('backend.subcategory.edit',compact('subcategory','category'));
    }
    

    public function updatesubCategory(Request $request, $id) {
        $validated = $request->validate([
            'subcategory_en' => 'required|max:255',
            'subcategory_ta' => 'required|max:255',
            'category_id' => 'required'

        ]);

        $data = array();
        $data['subcategory_en'] = $request->subcategory_en;
        $data['subcategory_ta'] = $request->subcategory_ta;
        $data['category_id'] = $request->category_id;

        DB::table('sub_categories')->where('id',$id)->update($data);

        $notification = array(
            'message' => 'subcategory updated successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('subcategories')->with($notification );
    }


    public function deletesubCategory($id) {
        DB::table('sub_categories')->where('id', $id)->delete();

        $notification = array(
            'message' => 'sub category Deleted successfully',
            'alert-type' => 'error'
        );
        return redirect()->route('subcategories')->with($notification );
    }

    
}
