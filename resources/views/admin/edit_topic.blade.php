<!DOCTYPE html>
<html lang="en">

@include('admin.incluodes.head')
<body>

@include('admin.incluodes.header')
@include('admin.incluodes.navber')

  <div class="container my-5">
    <div class="mx-2">
      <h2 class="fw-bold fs-2 mb-5 pb-2">Edit Topic</h2>
      <form action="{{route('topics.update', $topic->id)}}" method="POST" class="px-md-5" enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Topic Title:</label>
          <div class="col-md-10">
            <input type="text" placeholder="e.g. Design Patterns" class="form-control py-2" name="title" value="{{old('title', $topic->title)}}" />
            @error('title')
              <div class="alert alert-warning">{{$message}}</div>
              @enderror
          </div>
        </div>
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Category:</label>
          <div class="col-md-10">
            <select name="category_id" id="category_id" class="form-control py-1">
              <option value="">Select Category</option>
              @foreach($categories as $category)
              <option value="{{$category->id}}" @selected(old('category_id', $topic->category_id) == $category->id)>{{$category->category_name}}</option>
              @endforeach
            </select>
            @error('category_id')
            <div class="alert alert-warning">{{$message}}</div>
            @enderror
          </div>
        </div>



        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Content:</label>
          <div class="col-md-10">
            <textarea name="content" id="content" rows="5" class="form-control">{{old('content', $topic->content)}}</textarea>
            @error('content')
            <div class="alert alert-warning">{{$message}}</div>
            @enderror
          </div>
        </div>
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Trending:</label>
          <div class="col-md-10">
            <input type="checkbox" class="form-check-input" style="padding: 0.7rem;"  name="trending" {{ old('trending', $topic->trending) ? 'checked' : '' }} />
          </div>
        </div>

        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Published:</label>
          <div class="col-md-10">
            <input type="checkbox" class="form-check-input" style="padding: 0.7rem;" name="published" {{ old('published', $topic->published) ? 'checked' : '' }} />
          </div>
        </div>
        <hr>
        {{--<div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Image:</label>
          <div class="col-md-10">
            <input type="file" class="form-control" style="padding: 0.7rem; margin-bottom: 10px;" name="image" />
            <img src="{{asset('assests/images/topics/' . $topic->images) }}" alt="" style="width: 10rem;">

            @error('image')
              <div class="alert alert-warning">{{$message}}</div>
              @enderror
            </div>
          </div>--}}

          
          <div class="form-group mb-3 row">
            <label for="" class="form-label col-md-2 fw-bold text-md-end">Car image:</label>
            <div class="col-md-10">
              <input type="file" class="form-control py-2" name="image" />

              @error('image')
              <div class="alert alert-warning">{{$message}}</div>
              @enderror
            </div>
          </div>
          
        <div class="text-md-end">
          <button class="btn mt-4 btn-secondary text-white fs-5 fw-bold border-0 py-2 px-md-5">
            Edit Topic
          </button>
        </div>
      </form>
      @if(isset($topic->images))
        <img src="{{ asset('assests/images/topics/' . $topic->images) }}" alt="" width="100">
        @endif
    </div>
  </div>
  </main>
  @include('admin.incluodes.js')
 