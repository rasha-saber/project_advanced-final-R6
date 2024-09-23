<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Auth\Events\Registered;
use App\Models\User;
use App\Http\Controllers\Controller;
// use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;

class usersController extends Controller
{
    /**
     * Display a listing of the resource.
     */

    public function index()
    {
        // $user = Auth::user();
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
            'username' => 'required|string|max:255|unique:users',
            'email' => 'required|email|max:255|unique:users,email',
            'password' => 'required|string|min:8|confirmed',
            // 'active' => 'boolean',
        ]);
        $user =  User::create([
            'first_name' => $data['first_name'],
            'last_name' => $data['last_name'],
            'username' => $data['username'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'active' => $request->has('active') ? 1 : 0,
            'email_verified_at' => Carbon::now(),
        ]);

        event(new Registered($user));

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
    public function update(Request $request, $id)
    {

        $data = $request->validate([
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'username' => 'required|string|max:255|unique:users,username,' . $id,
            'email' => 'required|email|max:255|unique:users,email,' . $id,
            'password' => 'nullable|confirmed|min:8',
            // 'active' => 'boolean'
        ]);
    
        $user = User::findOrFail($id);
        $user->update([
            'first_name' => $data['first_name'],
            'last_name' => $data['last_name'],
            'username' => $data['username'],
            'email' => $data['email'],
            'active' => $request->has('active') ? 1 : 0,
            'password' => $data['password'] ? bcrypt($data['password']) : $user->password,
            'email_verified_at' => $user->email_verified_at ?: Carbon::now(),
        ]);
    
        return redirect()->route('users.index');

        // if ($request->filled('password')) {
        //     $user->password = bcrypt($request->input('password'));
        // }
        // $user->active = $request->has('active') ? true : false;
        // $user-> active = $request->has('active') ? 1 : 0 ;
        // if (isset($data['password'])) {
        //     $data['password'] = Hash::make($data['password']);
        // } else {
        //     unset($data['password']);
        // }
        // $user->save();

        // return redirect()->route('users.index')->with('success', 'User updated successfully.');
    }




    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        User::where('id', $id)->delete();
        return redirect()->route('users.index');
    }


    // public function dashboard()
    // {

    //     if (Auth::check()) {
    //         $users = Auth::user();
    //         return view('admin.users', compact('users'));
    //     } else {

    //         return redirect()->route('login');
    //     }
    // }
}
