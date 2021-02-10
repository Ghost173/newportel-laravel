<?php

namespace App\Http\Controllers\frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Session;


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
}
