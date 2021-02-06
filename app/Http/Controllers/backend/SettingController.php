<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;

class SettingController extends Controller
{
    public function SocialSettingpost () {
        if (Auth::user()) {

            $social = DB::table('socials')->first();

            return view('backend.settings.social', compact('social'));
        }else {
            return redirect()->route('login');
        }

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


    public function seosetting() {
        $seo = DB::table('seos')->first();
        return view('backend.settings.seo', compact('seo'));
    }


    public function updateseo(Request $request, $id) {
        $data = array();
        $data['meta_auther'] = $request->meta_auther;
        $data['meta_title'] = $request->meta_title;
        $data['meta_keyword'] = $request->meta_keyword;
        $data['meta_description'] = $request->meta_description;
        $data['google_analytics'] = $request->google_analytics;
        $data['google_verification'] = $request->google_verification;
        $data['alexa_analytics'] = $request->alexa_analytics;

        DB::table('seos')->where('id',$id)->update($data);

        $notification = array(
            'message' => 'seo updated successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('seo.setting')->with($notification );
    }



    public function itemsetting() {
        $prayers = DB::table('prayers')->first();
        return view('backend.settings.item', compact('prayers'));
    }


    public function updateitem(Request $request, $id) {
        $data = array();
        $data['item1'] = $request->item1;
        $data['item2'] = $request->item2;
        $data['item3'] = $request->item3;
        $data['item4'] = $request->item4;
        $data['item5'] = $request->item5;
        $data['item6'] = $request->item6;
        DB::table('prayers')->where('id',$id)->update($data);

        $notification = array(
            'message' => 'partner updated successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('item.setting')->with($notification );
    }


    public function livetvetting() {
        $livetv = DB::table('livetcs')->first();
        return view('backend.settings.livetv', compact('livetv'));
    }


    public function updatelivetv(Request $request, $id) {
        $data = array();
        $data['embed_code'] = $request->embed_code;

        DB::table('livetcs')->where('id',$id)->update($data);

        $notification = array(
            'message' => 'livettv updated successfully',
            'alert-type' => 'success'
        );
        return redirect()->route('livetv.setting')->with($notification );
    }
}

