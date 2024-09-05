<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class usersController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = User::get();
         return view('admin.users', compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.add_user');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        
        $data = $request->validate([
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'username' => 'required|string|max:255|unique:users,username,',
           'email' => 'required|string|email|max:255|unique:users,email,',
            'password' => 'nullable|confirmed|min:8',
       
            // 'email_verified_at' => 'required|string|email|max:255|unique:users',
            // 'password' => 'sometimes|nullable|string|min:8|confirmed',
        ]);
        $data['password'] = Hash::make($request['password']);
        User::create($data);
        return redirect()->route('users.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $user = User::findOrFail($id);
          return view('admin.edit_user', compact('user'));
    }

    /**
     * Update the specified resource in storage.
     */
    // public function update(Request $request, $id)
    // {
    //     $data = $request->validate([
    //         'first_name' => 'required|string|max:255',
    //         'last_name' => 'required|string|max:255',
    //         'username' => 'required|string|max:255|unique:users,username,'. $id,
    //        'email' => 'required|string|email|max:255|unique:users,email,'. $id,
    //         'email_verified_at' => 'required|string|email|max:255|unique:users',
    //         'password' => 'nullable|confirmed|min:8',
    //         'active' => 'nullable|boolean',
    //     ]);
    //     $user = User::findOrFail($id);
    //     // $data['active'] = isset($request->active);
    //     if ($request->filled('password')) {
    //         $user->password = Hash::make($request->input('password'));
    //     }
    //     $user->active = $request->has('active') ? true : false;
    //     $user->save();
    //     // if (isset($data['password'])) {
    //     //     $data['password'] = Hash::make($data['password']);
    //     // } else {unset($data['password']);}
    //     User::where('id', $id)->update($data);
    //     return redirect()->route('users.index');


    // }

    public function update(Request $request, $id)
    {
        $data =    $request->validate([
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'username' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'password' => 'nullable|confirmed|min:8',
        ]);
    
        $user = User::findOrFail($id);
        $user->first_name = $request->input('first_name');
        $user->last_name = $request->input('last_name');
        $user->username = $request->input('username');
        $user->email = $request->input('email');
        
        // if ($request->filled('password')) {
        //     $user->password = bcrypt($request->input('password'));
        // }
     if (isset($data['password'])) {
             $data['password'] = Hash::make($data['password']);
         } else {unset($data['password']);}
        $user->save();
    
        return redirect()->route('users.index')->with('success', 'User updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        User::where('id', $id)->delete();
        return redirect()->route('users.index');
    }
}
