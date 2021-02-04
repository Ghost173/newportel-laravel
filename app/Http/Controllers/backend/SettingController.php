<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SettingController extends Controller
{
    public function SocialSettingpost () {
        $social = DB::table('socials')->first();

        return view('backend.settings.social', compact('social'));
    }


    public function updatesocial(Request $request, $id) {
        $data = array();
        $data['facebook'] = $request->facebook;
        $data['twitter'] = $request->twitter;
        $data['youtube'] = $request->youtube;
        $data['linkedin'] = $request->linkedin;
        $data['instagram'] = $request->instagram;

        DB::table('socials')->where('id',$id)->update($data);

        $notification = array(
            'message' => 'socials updated successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('social.setting')->with($notification );
    }
}

