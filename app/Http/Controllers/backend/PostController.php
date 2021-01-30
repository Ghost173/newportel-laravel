<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Image;
use Illuminate\Support\Carbon;



class PostController extends Controller
{
    public function index() {
        $category = DB::table('categories')->get();
        $district = DB::table('districts')->get();

        return view('backend.post.create',compact('category','district'));
    }


    public function GetSubCateory($category_id) {
        // $sub = DB::('sub_categories')->where('category_id' ,$category_id)->get();
        $sub = DB::table('sub_categories')->where('category_id', $category_id)->get();
        return response()->json($sub);

    }


    public function GetSubDistrict($district_id) {
        // $sub = DB::('sub_categories')->where('category_id' ,$category_id)->get();
        $subd = DB::table('subdistricts')->where('district_id', $district_id)->get();
        return response()->json($subd);

    }


    public function StorePost(Request $request) {
        $validated = $request->validate([
            'category_id' => 'required',
            'district_id' => 'required',
            'title_en' => 'required',
            'tags_en' => 'required',
            'details_en' => 'required',
            'details_ta' => 'required',
            'image' => 'required',
        ]);

        $data = array();
        $data['title_en'] = $request->title_en;
        $data['title_ta'] = $request->title_ta;
        $data['user_id'] = auth()->user()->id;
        $data['category_id'] = $request->category_id;
        $data['subcategory_id'] = $request->subcategory_id;
        $data['district_id'] = $request->district_id;
        $data['subdistrict_id'] = $request->subdistrict_id;
        $data['tags_en'] = $request->tags_en;
        $data['tags_ta'] = $request->tags_ta;
        $data['details_en'] = $request->details_en;
        $data['details_ta'] = $request->details_ta;

        $data['headline'] = $request->headline;
        $data['first_section'] = $request->first_section;
        $data['first_thumnail'] = $request->first_thumnail;
        $data['bigthumnail'] = $request->bigthumnail;

        $data['post_date'] = date('d-m-y') ;
        $data['post_month'] = date("F");
        $data['created_at'] = Carbon::now();

        $image = $request->image;
        if($image) {
            $img_one = uniqid().'.'.$image->getClientOriginalExtension();
            Image::make($image)->resize(500,300)->save('image/postimage/'.$img_one);
            $data['image'] =  'image/postimage/'.$img_one;

            DB::table('posts')->insert($data);

            $notification = array(
                'message' => 'Post created successfully',
                'alert-type' => 'success'
            );
            return redirect()->route('all.post')->with($notification );
        }


        else {
            return redirect()->back();
        }
    }


    public function allpost() {
        $post = DB::table('posts')
            ->join('categories','posts.category_id','categories.id')
            ->join('sub_categories','posts.subcategory_id','sub_categories.id')
            ->join('districts','posts.district_id','districts.id')
            ->join('subdistricts','posts.subdistrict_id','subdistricts.id')
            ->select('posts.*','categories.category_en','sub_categories.subcategory_en','districts.district_en','subdistricts.subdistrict_en')
            ->orderBy('id','desc')->paginate(10);

            return view('backend.post.index',compact('post'));
    }


    public function editpost($id) {
        $post = DB::table('posts')->where('id',$id)->first();
        $category = DB::table('categories')->get();
        $district = DB::table('districts')->get();
        
        return view('backend.post.edit',compact('post','category','district'));
    }



    public function updatepost(Request $request, $id) {
        $validated = $request->validate([
            'category_id' => 'required',
            'district_id' => 'required',
            'title_en' => 'required',
            'tags_en' => 'required',
            'details_en' => 'required',
            'details_ta' => 'required',
        ]);

        $data = array();
        $data['title_en'] = $request->title_en;
        $data['title_ta'] = $request->title_ta;
        $data['user_id'] = auth()->user()->id;
        $data['category_id'] = $request->category_id;
        $data['subcategory_id'] = $request->subcategory_id;
        $data['district_id'] = $request->district_id;
        $data['subdistrict_id'] = $request->subdistrict_id;
        $data['tags_en'] = $request->tags_en;
        $data['tags_ta'] = $request->tags_ta;
        $data['details_en'] = $request->details_en;
        $data['details_ta'] = $request->details_ta;

        $data['headline'] = $request->headline;
        $data['first_section'] = $request->first_section;
        $data['first_thumnail'] = $request->first_thumnail;
        $data['bigthumnail'] = $request->bigthumnail;
        $data['updated_at'] = Carbon::now();

        $oldimage = $request->oldimage;
        
        $image = $request->image;

        if($image) {
            $img_one = uniqid().'.'.$image->getClientOriginalExtension();
            Image::make($image)->resize(500,300)->save('image/postimage/'.$img_one);
            $data['image'] =  'image/postimage/'.$img_one;

            DB::table('posts')->where('id', $id)->update($data);
            unlink($oldimage);

            $notification = array(
                'message' => 'Post created successfully',
                'alert-type' => 'success'
            );
            return redirect()->route('all.post')->with($notification );
        }


        else {
            $data['image'] = $oldimage;
            DB::table('posts')->where('id', $id)->update($data);

            $notification = array(
                'message' => 'Post created successfully',
                'alert-type' => 'success'
            );
            return redirect()->route('all.post')->with($notification );
        }
    }


    public function deletepost($id)  {
        // $post = DB::table('posts')->where->('id',$id)->first();
            $post = DB::table('posts')->where('id', $id)->first();
            unlink($post->image);
            DB::table('posts')->where('id', $id)->delete();

            $notification = array(
                'message' => 'Post delete successfully',
                'alert-type' => 'error'
            );

            return redirect()->route('all.post')->with($notification );
    }
}
