<?php

namespace App\Http\Controllers;

use App\Models\User;
use GuzzleHttp\Promise\Create;
use Illuminate\Contracts\Support\ValidatedData;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    public function index(){
        return view('register.index',[
        'title' => 'Register',
        'active' => 'register'
        ]);
    }

    public function store(Request $request)
    {
       $validatedData = $request->validate([
        'name'=>'required|max:255',
        'username' =>['required','min:3','max:255','unique:users'],
        'email' => 'required|email:dns|unique:users',
        'password' => 'required|min:5|max:255'
       ]);


    // * encrypt password menggunakan cara 1
    //    $validatedData['password'] = bcrypt($validatedData['password']);

    // * encrypt password menggunakan cara 2
    $validatedData['password'] = Hash::make($validatedData['password']);

    // ! jangan lupa untuk enkrip password 

      User::create($validatedData);

    //   * message bisa menggunakan session atau yang lebih ringkas menggunakan with di redirect
    
    //   $request->session()->flash('success','Registration Successfull! please Login');

       return redirect('/login')->with('success','Registration Successfull! please Login');
    }
}
