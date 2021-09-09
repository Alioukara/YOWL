<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function users (Request $request) {
        return User::all();
    }

    public function register(Request $request)
    {
        User::create([
            'login' => $request->input('login'),
            'password' => Hash::make($request->input('password')),
            'nickname' => $request->input('nickname'),
            'birthdate' => $request->input('birthdate'),
            'email' => $request->input('email'),

        ]);

        return response()->json([
            'message' => 'New User created'
            ]);
    }
    public function show($id)
    {
        return User::find($id);
    }
    

    public function login(Request $request) {
        $fields = $request->validate([
            'email' => 'required|string',
            'password' => 'required|string'
        ]);

        // verifier email au cas ou 
        $user = User::where('email', $fields['email'])->first();

        // verifier password au cas ou 
        if(!$user || !Hash::check($fields['password'], $user->password)) {
            return response([
                'message' => 'Bad creds'
            ], 401);
        }

        $token = $user->createToken('myapptoken')->plainTextToken;

        $response = [
            'user' => $user,
            'token' => $token
        ];

        return response($response, 201);
    }

    public function logout(Request $request) {
        $request->user()->currentAccessToken()->delete();

        return [
            'message' => 'Logged out'
        ];
    }
}