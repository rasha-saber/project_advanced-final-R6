<?php

namespace App\Http\Controllers\Admin;
// use App\Models\Topic;
use App\Models\Category;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class categoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = Category::get();
         return view('admin.categories', compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.add_category');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'category_name' => 'required|string|max:255',
           
        ]);
        Category::create($data);
        return redirect()->route('categories.index')->with('success', 'Category created successfully.');
    }

    /**
     * Display the specified resource.
     */
    // public function show(string $id)
    // {
    
  
    // }
    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $category = Category::findOrFail($id);
        return view('admin.edit_category', compact('category'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $category = Category::findOrFail($id);
        $data = $request->validate([
            'category_name' => 'required|string|max:255',
           
        ]);

        Category::where('id', $id)->update($data);
        return redirect()->route('categories.index')->with('success', 'Category updated successfully.');
    
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        Category::where('id', $id)->delete();
        return redirect()->route('categories.index')->with('success', 'Category deleted successfully.');
    

        // $category = Category::findOrFail($id);
        // $category->delete();
        // return redirect()->route('categories.index')->with('success', 'Category deleted successfully.');
    

    }
}
