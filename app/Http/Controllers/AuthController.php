<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\RegisterRequest;

class AuthController extends Controller
{
    public function register(RegisterRequest $request)
    {
        $data = $request->validate();
    }
    public function login(Request $request)
    {
        # code...
    }
    public function logout(Request $request)
    {
        # code...
    }
}
