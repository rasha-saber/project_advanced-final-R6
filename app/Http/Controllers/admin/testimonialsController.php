<?php

namespace App\Http\Controllers\Admin;
use App\Models\Testimonial;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Traits\UploadFileTrait;

class testimonialsController extends Controller
{
    use UploadFileTrait;
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $testimonials = Testimonial::get();
        return view('admin.testimonials', compact('testimonials'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.add_testimonial');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'name' => "required|string|max:255",
            'content' => "required|string",
            'image' => "required|file|mimes:jpg,gif,svg,jpeg,png|max:2048",
        ]);
        $data['published'] = isset($request->published);
        $data['image'] = $this->uploadFile($request->image, "assests/images/testimonials/");
        Testimonial::create($data);

        return redirect()->route('testimonials.index');  
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
        $testimonial = Testimonial::findOrFail($id);
        return view('admin.edit_testimonial', compact('testimonial'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $data = $request->validate([
            'name' => "required|string|max:255",
            'content' => "required|string",
            'image' => "required|file|mimes:jpg,gif,svg,jpeg,png|max:2048",
        ]);
        $data['published'] = isset($request->published);
        if ($request->hasFile('image')) {
            $data['image'] = $this->uploadFile($request->file('image'), 'assests/images/testimonials/');
        }
       Testimonial::where('id', $id)->update($data);
        return redirect()->route('testimonials.index');  
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Testimonial::where('id', $id)->delete();
        return redirect()->route('testimonials.index');
    }
}
