<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Session;
use Illuminate\Support\Facades\DB;

class ExtraController extends Controller
{
    public function tamil() {
        session::get('lang');
        session()->forget('lang');
        session()->put('lang','tamil');

        return redirect()->back();

    }


    public function english() {
        session::get('lang');
        session()->forget('lang');
        session()->put('lang','english');

        return redirect()->back();
    }



    public function singlepost($id) {
        $post = DB::table('posts')
                ->join('categories','posts.category_id','categories.id')
                ->join('sub_categories','posts.subcategory_id','sub_categories.id')
                ->join('users','posts.user_id','users.id')
                ->select('posts.*','categories.category_en','sub_categories.subcategory_en','users.name')
                ->where('posts.id',$id)->first();

            return view('main.single_post', compact('post'));    
    }



    public function categorypost($id, $category_en) {
        $catpost = DB::table('posts')->where('category_id',$id)->orderBy('id','desc')
                    ->paginate(5);

                    return view('main.allpost', compact('catpost','category_en'));            
    }
}
