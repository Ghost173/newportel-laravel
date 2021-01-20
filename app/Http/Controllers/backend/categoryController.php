<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class categoryController extends Controller
{
    public function index() {
        $category = DB::table('categories')->orderBy('id','desc')->paginate(3);
        return view('backend.category.index',compact('category'));
    }
}
