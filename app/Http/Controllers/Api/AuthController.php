<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
           'name'     => 'required|string|max:255',
           'email'    => 'required|email|unique:users,email',
           'password' => 'required|string|min:8|confirmed',
        ]);

        if ($validator->fails()) {
            return response()->json([
               'success' => false,
               'message' => 'Validation failed',
               'errors'  => $validator->errors()
            ], 422);
        }

        $user = User::create([
           'name'     => $request->name,
           'email'    => $request->email,
           'password' => Hash::make($request->password),
        ]);

        $token = $user->createToken('api-token')->plainTextToken;

        return response()->json([
           'success' => true,
           'user'    => $user,
           'token'   => $token,
        ], 201);
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
           'email'    => 'required|email',
           'password' => 'required|string'
        ]);

        if ($validator->fails()) {
            return response()->json([
               'success' => false,
               'message' => 'Validation failed',
               'errors'  => $validator->errors(),
            ], 422);
        }

        $user = User::where('email', $request->email)->first();

        if (! $user || ! Hash::check($request->password, $user->password)) {
            return response()->json([
               'success' => false,
               'message' => 'Invalid credentials',
               'errors' => [
                   'email' => ['The provided credentials are incorrect.']
               ]
            ], 401);
        }

        $token = $user->createToken('api-token')->plainTextToken;

        return response()->json([
           'success' => true,
           'user'    => $user,
           'token'   => $token,
        ]);
    }

    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();

        return response()->json([
           'success' => true,
           'message' => 'Logged out'
        ]);
    }
}
