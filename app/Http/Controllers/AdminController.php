<?php

namespace App\Http\Controllers;
use App\Models\User;

use Illuminate\Http\Request;
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
}
