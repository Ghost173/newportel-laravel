<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SubCategoryController extends Controller
{
    public function index() {
        $subcategory = DB::table('sub_categories')->orderBy('id','desc')->paginate(10);
        return view('backend.subcategory.index',compact('subcategory'));
    }
}
