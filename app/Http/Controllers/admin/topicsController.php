<?php

namespace App\Http\Controllers\Admin;

use App\Models\Topic;
use App\Http\Controllers\Controller;
use App\Traits\UploadFileTrait;
use App\Models\Category;
use Illuminate\Http\Request;

class topicsController extends Controller
{
    use UploadFileTrait;
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $topics = Topic::with('category')->get();
        return view('admin.topics', compact('topics'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::select('id', 'category_name')->get();
        return view('admin.add_topic', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'image' => 'nullable|file|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'trending' => 'nullable|boolean',
            // 'is_published' => 'nullable|boolean',
            // 'published_at' => 'nullable|date',
            'category_id' => 'required|exists:categories,id',
        ]);
        $data['published'] = isset($request->published);
        $data['trending'] = isset($request->trending);
        // if ($request->is_published && !$request->published_at) {
        //     $data['published_at'] = now();
        // }

        $data['image'] = $this->uploadFile($request->image, 'assests/images/topics/');
        Topic::create($data);
        return redirect()->route('topics.index');
        // ->with('success', 'Topic created successfully.')
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $topic = Topic::findOrFail($id);
        return view('admin.topic-details', compact('topic'));

        // $topic = Topic::findOrFail($id);
        // $category = $topic->Category;
        // return view('admin.topic-details', compact('topic', 'category'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $topic = Topic::findOrFail($id);
        $categories = Category::select('id', 'category_name')->get();
        return view('admin.edit_topic', compact('topic', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $data = $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'image' => 'nullable|file|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'trending' => 'nullable|boolean',
            // 'is_published' => 'nullable|boolean',
            // 'published_at' => 'nullable|date',
            'category_id' => 'required|exists:categories,id',
        ]);
        $data['published'] = isset($request->published);
        $data['trending'] = isset($request->trending);
        // if ($request->is_published && !$request->published_at) {
        //     $data['published_at'] = now();
        // }


        if ($request->hasFile('image')) {
            $data['image'] = $this->uploadFile($request->file('image'), 'assests/images/topics/');
        }
        Topic::where('id', $id)->update($data);

        return redirect()->route('topics.index');
        // ->with('success', 'Topic updated successfully.')
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Topic::where('id', $id)->delete();
        return redirect()->route('topics.index');
    }


    // public function showDeleted()
    // {

    //     $topics = Topic::onlyTrashed()->get();
    //     return view('trashedtopics', compact('topics'));


    // }

    // public function restore(string $id)
    // {

    //     Topic::where('id', $id)->restore();


    //     return redirect()->route('topics.showDeleted');
    // }

    // public function forceDelete(Request $request, string $id)
    // {

    //     Topic::where('id', $id)->forceDelete();
    //     return redirect()->route('topics.index');
    // }

}
