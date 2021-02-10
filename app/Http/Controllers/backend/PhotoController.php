<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;
use Image;
use Illuminate\Support\Carbon;

class PhotoController extends Controller
{
    public function photogallery() {
        $photo = DB::table('photos')->orderBy('id','desc')->paginate(10);
        return view('backend.gallery.photo', compact('photo'));
    }


    public function addphoto() {
        return view('backend.gallery.addphoto');
    }

    public function storephoto(Request $request) {
        $validated = $request->validate([
            'title' => 'required',
            'type' => 'required',
            'photo' => 'required',
        ]);


        $data = array();
        $data['title'] = $request->title;
        $data['type'] = $request->type;
        $data['created_at'] = Carbon::now();

        $image = $request->photo;
        if($image) {
            $img_one = uniqid().'.'.$image->getClientOriginalExtension();
            Image::make($image)->resize(500,300)->save('image/photogalley/'.$img_one);
            $data['photo'] =  'image/photogalley/'.$img_one;

            DB::table('photos')->insert($data);

            $notification = array(
                'message' => 'photo created successfully',
                'alert-type' => 'success'
            );
            return redirect()->route('photo')->with($notification );
        }


        else {
            return redirect()->back();
        }
    }

    public function editphoto($id) {
        $photo = DB::table('photos')->where('id',$id)->first();
        return view('backend.gallery.edit',compact('photo'));
    }
    

    public function updatephoto(Request $request, $id) {
        $data = array();
        $data['title'] = $request->title;
        $data['type'] = $request->type;

        $oldimage = $request->oldimage;
        
        $image = $request->photo;

        if($image) {
            $img_one = uniqid().'.'.$image->getClientOriginalExtension();
            Image::make($image)->resize(500,300)->save('image/photogalley/'.$img_one);
            $data['photo'] =  'image/photogalley/'.$img_one;

            DB::table('photos')->where('id', $id)->update($data);
            unlink($oldimage);

            $notification = array(
                'message' => 'photos created successfully',
                'alert-type' => 'success'
            );
            return redirect()->route('photo')->with($notification );
        }


        else {
            $data['photo'] = $oldimage;
            DB::table('photos')->where('id', $id)->update($data);

            $notification = array(
                'message' => 'photo created successfully',
                'alert-type' => 'success'
            );
            return redirect()->route('photo')->with($notification );
        }
    }



    public function deletephoto($id)  {
        // $post = DB::table('posts')->where->('id',$id)->first();
            $photo = DB::table('photos')->where('id', $id)->first();
            unlink($photo->photo);
            DB::table('photos')->where('id', $id)->delete();

            $notification = array(
                'message' => 'photo delete successfully',
                'alert-type' => 'error'
            );

            return redirect()->route('photo')->with($notification );
    }
    


    //video

    public function videogalley() {
        $video = DB::table('videos')->orderBy('id','desc')->paginate(10);
        return view('backend.gallery.video', compact('video'));
    }


    public function addvideo() {
        return view('backend.gallery.addvideo');
    }


    public function storevideo(Request $request) {
        $data = array();
        $data['title'] = $request->title;
        $data['embed_code'] = $request->embed_code;
        $data['type'] = $request->type;

        DB::table('videos')->insert($data);

        $notification = array(
            'message' => 'videos save successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('video')->with($notification );
    }


    public function editvideo(Request $request, $id) {
        $videos = DB::table('videos')->where('id',$id)->first();
        return view('backend.gallery.editvideo',compact('videos'));
    }


    public function updateviedo(Request $request, $id) {
        $data = array();
        $data['title'] = $request->title;
        $data['embed_code'] = $request->embed_code;
        $data['type'] = $request->type;

        DB::table('videos')->where('id',$id)->update($data);

        $notification = array(
            'message' => 'videos update successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('video')->with($notification );
    }



    public function deletedelete($id) {
        DB::table('videos')->where('id', $id)->delete();

        $notification = array(
            'message' => 'videos Deleted successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('video')->with($notification );
    }
}

