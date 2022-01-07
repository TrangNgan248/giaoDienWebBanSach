<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index(){
        return view('auth.login');
    }
    public function store(Request $request){
        //dd('ok');
        $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required'],
        ]);
        //dd($request->email);
        
        dd(Auth::attempt($request->only('KH_email', 'password')));
        if (Auth::attempt(['KH_Email' => $request->email, 'password' => $request->password])) {
            $request->session()->regenerate();

            return redirect()->route('blog');
        }

        return back()->withErrors([
            'email' => 'Sai tên đăng nhập hoặc mật khẩu',
        ]);
    }
}
