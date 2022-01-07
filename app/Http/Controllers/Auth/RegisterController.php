<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index(){
        return view('auth.register');
    }

    public function store(Request $request){
        $this->validate($request, [
            'name' => 'required|max:255',
            'email' => 'required|email',
            'phoneNumber' =>'required|max:20',
            'password' => 'required|min:6|confirmed',
        ]);
        //dd($request->email);
        //store user
        User::create([
            'KH_HoTen' => $request->name,
            'KH_Email' => $request->email,
            'KH_DienThoai' => $request->phoneNumber,
            'password' => Hash::make( $request->password),
        ]);
        dd(auth()->attempt($request->only(['KH_Email'=>$request->email, 'password'=>$request->password])));
        auth()->attempt($request->only(['KH_Email'=>$request->email, 'password'=>$request->password]));

        //redirect
        return redirect()->route('home');
    }
}
