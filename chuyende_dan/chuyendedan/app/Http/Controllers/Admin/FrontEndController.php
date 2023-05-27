<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Staff;

class FrontEndController extends Controller
{
    public function Index(){
        return view('frontend.layouts.index') ;
    }
    public function Login_Register(Request $request){
        $login_input_email = $request->input('staff_email');
        $login_input_password = $request->input('password');
        print_r($login_input_email);
        print_r($login_input_password);
        $staff = DB::table('staffs')->pluck('password')->toArray();
        // print_r($staff);
        return view('frontend.layouts.login',compact('staff','login_input_email','login_input_password'));
    }
}
