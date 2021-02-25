<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;


class RoleController extends Controller
{

    public function __construct() {
        $this->middleware('auth');
    }

    public function adduser() {
        return view('backend.roles.insert');
    }


    public function storeuser(Request $request) {


        $data = array();
        $data['name'] = $request->name;
        $data['email'] = $request->email;
        $data['password'] = Hash::make($request->password);
        $data['category'] = $request->category;
        $data['district'] = $request->district;
        $data['post'] = $request->post;
        $data['settings'] = $request->settings;
        $data['websites'] = $request->websites;
        $data['gallery'] = $request->gallery;
        $data['ads'] = $request->ads;
        $data['role'] = $request->role;
        $data['type'] = 0;

        DB::table('users')->insert($data);
        $notification = array(
            'message' => 'User created successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('add.user')->with($notification );

        // return response()->json($data);
    }


    public function alluser() {
        $user = DB::table('users')->where('type',0)->get();    
        return view('backend.roles.index',compact('user'));
    }


    public function edituser($id) {
        $user = DB::table('users')->where('id',$id)->first();
        return view('backend.roles.editview',compact('user'));
    }


    public function updateuser(Request $request, $id) {
        $data = array();
        $data['name'] = $request->name;
        $data['email'] = $request->email;
        $data['category'] = $request->category;
        $data['district'] = $request->district;
        $data['post'] = $request->post;
        $data['settings'] = $request->settings;
        $data['websites'] = $request->websites;
        $data['gallery'] = $request->gallery;
        $data['ads'] = $request->ads;
        $data['role'] = $request->role;

        DB::table('users')->where('id',$id)->update($data);
        $notification = array(
            'message' => 'User Updated successfully',
            'alert-type' => 'info'
        );
        return redirect()->route('all.user')->with($notification );
    }

}
