<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class categoryController extends Controller
{
    public function index() {
        $category = DB::table('categories')->orderBy('id','desc')->paginate(3);
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

        return redirect()->route('categories');

    }
}


