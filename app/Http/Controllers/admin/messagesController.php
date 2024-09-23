<?php

namespace App\Http\Controllers\Admin;
use App\Mail\ContactMail;
use Illuminate\Support\Facades\Mail;
use App\Models\Message;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;



class MessagesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $unreadmessages = Message::where('is_read', 'unread')->get();
        $readmessages = Message::where('is_read', 'read')->get();
        $messages = Message::get();
        return view('admin.messages', compact('unreadmessages', 'readmessages', 'messages'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('messages.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'sender_name' => "required|string|max:255",
            'sender_email' => "required|string|email|max:255",
            'subject' => "required|string|max:255",
            'body' => "required|string",
            // 'is_read' => "required|string",



        ]);
    //     $data  ['is_read'] = false;
    $message =  Message::create($data);
      
        Mail::to('rashasaer199@gmail.com')->send(new ContactMail($data));
    return back()->with('success', 'your message has been sent successfully');
        // return redirect()->route('messages.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $message = Message::findOrFail($id);
        $message->update(['is_read' => true]);
        $message->save();
        return view('admin.message_details', compact('message'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $message = Message::findOrFail($id);
        Message::where('id', $id)->delete();
        return redirect()->route('messages.index');
    }
    public function markAsRead($id)
    {
        $message = Message::findOrFail($id);
        $message->is_read = 'read';
        $message->save();

        return redirect()->back()->with('status', 'Message marked as read');
    }
}
