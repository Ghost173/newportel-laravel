<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class PostController extends Controller
{
    public function index() {
        $category = DB::table('categories')->get();
        $district = DB::table('districts')->get();

        return view('backend.post.create',compact('category','district'));
    }
}
