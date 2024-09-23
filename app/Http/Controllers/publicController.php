<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Testimonial;
use App\Models\Topic;
use App\Http\Controllers\Controller;
use App\Traits\UploadFileTrait;
use Illuminate\Http\Request;
use App\Mail\ContactMail;

use Illuminate\Support\Facades\Mail;

class publicController extends Controller
{

    public function index()
    {
        // $latesttopics = Topic::latest()->take(2)->get();
         $latesttopics = Topic::orderBy('views', 'desc')->take(2)->get();
        $categories = Category::with(['topics' => function ($query) {
            $query->take(3);
        }])->take(5)->get();
        // dd($categories);

        $testimonials = Testimonial::where('published', 1)
            ->orderBy('created_at', 'desc')
            ->latest()
            ->take(3)
            ->get();
        // dd($testimonials);
        $topic = Topic::with('category');
        return view('public.index', compact('categories', 'testimonials', 'topic', 'latesttopics'));
    }




    public function contact(Request $request)
    {

        return view('public.contact');
    }




    public function testimonial()
    {
        $testimonials = Testimonial::where('published', '1')
            ->orderBy('created_at', 'desc')
            ->get();

        return view('public.testimonials', compact('testimonials'));
    }



    public function topicdetail(string $id)
    {
        $topic = Topic::with('category')->findOrFail($id);
        $topic = Topic::findOrFail($id);

        $topic->increment('views');

        $topic = Topic::find($id);
        if (!$topic) {
            abort(404, 'topic not found');
        }
        return view('public.topics-detail', compact('topic'));
    }




    public function increaseViews($id)
    {

        $topic = Topic::findOrFail($id);
        $topic->views += 1;
        $topic->save();
        return redirect()->route('topicdetail', $id);
    }


    // public function saveTopic($id)
    // {
    //     $topic = Topic::findOrFail($id);
    //     $topic->views += 1;
    //     $topic->save();
    //     return redirect()->route('topicdetail', $id);
    // }


    public function topiclist()
    {

        $topic = Topic::latest()->paginate(3);
        // $topic = Topic::latest()->take(3)->get();
        // $topic = Topic::simplePaginate(10);
        // $topic = Topic::orderBy('views', 'desc')->paginate(10);
 


        $trendingtopics = Topic::where('published', '1')
        ->where('trending', '1')
        // ->orderBy('views', 'desc')
        ->latest()
        ->take(2)
        ->get();

        return view('public.topics-listing', compact('topic', 'trendingtopics'));
    }

    public function error()
    {
        return view('public.error');
    }
}
