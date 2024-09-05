<?php

namespace App\Http\Controllers;
use App\Models\Category;
use App\Models\Topic;
use App\Http\Controllers\Controller;
use App\Traits\UploadFileTrait;
use Illuminate\Http\Request;

class publicController extends Controller
{

    public function index()
    {
        return view('public.index');
    }

    public function contact()
    {
        return view('public\contact');
    }

    public function testimonial()
    {
        return view('public\testimonials');
    }

   

    public function topicdetail()
    {
        return view('public.topics-detail');
    }

    public function topiclist()
    {
        return view('public\topics-listing');
    }

    public function error()
    {
        return view('public\404');
    }
}
