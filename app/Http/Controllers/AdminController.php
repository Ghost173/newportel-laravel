<?php

namespace App\Http\Controllers;
use App\Models\User;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function Logout() {
        Auth::logout();
        return redirect()->route('login')->with('success', 'User logout success');
    }


    public function accountsetting() {
        $id = Auth::user()->id;

        $editdata = User::find($id);
        return view('backend.account.profile', compact('editdata'));
    }


    public function profileedit() {
        $id = Auth::user()->id;

        $editdata = User::find($id);
        return view('backend.account.profile_edit', compact('editdata'));
    }


    public function profilestore(Request $request) {
        $data = user::find(Auth::user()->id);
        $id = Auth::user()->id;

        $data->name = $request->name;
        // $data->email = $request->email;
        $data->mobile = $request->mobile;
        $data->address = $request->address;
        $data->position = $request->position;
        $data->gender = $request->gender;
      
        if($request->file('image')){
            $file  = $request->file('image');

            @unlink(public_path('upload/userprofile/'.$$data ->image));
            $filename = date('YmdHi').$file->getClientOriginalName();
            $file->move(public_path('upload/userprofile'),$filename );
            $data['image'] = $filename;
        }

        $data->save();

        $notification = array(
            'message' => 'user profile successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('account.setting')->with($notification );
     
    }


    public function showpassword() {
        return view('backend.account.show_password');
    }


    public function changepassword(Request $request) {
        $validated = $request->validate([
            'oldpassword' => 'required',
            'password' => 'required|confirmed',
        ]);

        $haspassword = Auth::user()->password;

        if(Hash::check($request->oldpassword,$haspassword)) {
            $user = user::find(Auth::id());
            $user->password = Hash::make($request->password);
            $user->save();
            Auth::logout();



            $notification = array(
                'message' => 'password change successfully',
                'alert-type' => 'success'
            );
            return redirect()->route('login')->with($notification );
        } else {
            return redirect()->back();
        }
    }
}
