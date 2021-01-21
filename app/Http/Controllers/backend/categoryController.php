<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class categoryController extends Controller
{
    public function index() {
        $category = DB::table('categories')->orderBy('id','desc')->paginate(10);
        return view('backend.category.index',compact('category'));
    }


    public function AddCategory() {

        return view('backend.category.createcategory');
    
    }

    public function StoreCategory(Request $request) {
        $validated = $request->validate([
            'category_en' => 'required|unique:categories|max:255',
            'category_ta' => 'required|unique:categories|max:255',
        ]);

        $data = array();
        $data['category_en'] = $request->category_en;
        $data['category_ta'] = $request->category_ta;

        DB::table('categories')->insert($data);

        $notification = array(
            'message' => 'category created successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('categories')->with($notification );

    }


    public function EditCategory($id) {
        $category = DB::table('categories')->where('id',$id)->first();
        return view('backend.category.edit',compact('category'));
    }

    public function updateCategory(Request $request, $id) {
        $validated = $request->validate([
            'category_en' => 'required|max:255',
            'category_ta' => 'required|max:255',
        ]);

        $data = array();
        $data['category_en'] = $request->category_en;
        $data['category_ta'] = $request->category_ta;

        DB::table('categories')->where('id',$id)->update($data);

        $notification = array(
            'message' => 'category updated successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('categories')->with($notification );
    }


    public function deleteCategory($id) {
        DB::table('categories')->where('id', $id)->delete();

        $notification = array(
            'message' => 'category Deleted successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('categories')->with($notification );
    }
}


