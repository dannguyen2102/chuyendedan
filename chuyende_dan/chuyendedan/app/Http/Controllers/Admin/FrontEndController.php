<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Staff;
use App\Models\UserTable;
use App\Models\User;
use App\Models\Type;
use App\Models\Food;

class FrontEndController extends Controller
{
    public function Index()
    {
        $types = DB::table('type')->get()->toArray();
        $foods = DB::table('food')->get()->toArray();
        return view('frontend.layouts.index', compact('types', 'foods'));
    }
    public function Login_Register(Request $request)
    {
        $usertable_email = DB::table('user_table')->pluck('user_name')->toArray();
        $usertable_password = DB::table('user_table')->pluck('user_password')->toArray();
        $usertable = DB::table('user_table')->get()->toArray();
        $login_input_email = $request->input('staff_email');
        $login_input_password = $request->input('password');
        $usertable = DB::table('user_table')
            ->where('user_name', $login_input_email)
            ->where('user_password', $login_input_password)
            ->first();

        if ($usertable) {
            $request->session()->put('username', $login_input_email);
            $response = redirect()->route('index');
            $response->send();
        } else {
            // return redirect()->back()->with('error', 'Invalid username or password')->withInput();
            // $response = redirect()->route('frontendlogin')->with('message', 'Login Failed');
            // $response->send();
            // $responsefail = redirect()->route('frontendlogin')->with('message', 'Login Failed');
            // $responsefail->send();
            echo 'Type again';
        }
        return view('frontend.layouts.login', compact('login_input_email', 'login_input_password'));
    }
    //register
    //logout
    public function AddToCart(Request $request)
    {
        $types = DB::table('type')->get()->toArray();
        $foods = DB::table('food')->get()->toArray();
        $food_id = $request->category_id;
        $request->validate([
            'food_id' => 'required',
            'image' => '',
            'food_name' => '',
            'food_money' => ''

        ]);
        // Get the previous total price from session
        $total_price = session('total_price', 0);

        // Add the new product price to the total price
        $total_price += $request->food_money;

        // Store the updated total price in session
        session(['total_price' => $total_price]);

        return view('frontend.layouts.index', compact('types', 'foods', 'total_price'));
    }
}
