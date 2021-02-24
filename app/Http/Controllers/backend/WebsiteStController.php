<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;

class WebsiteStController extends Controller
{
    
    public function webseting() {
        $webseng = DB::table('website_settings')->first();
        return view('backend.settings.website', compact('webseng'));
    }
}
