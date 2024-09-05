<!DOCTYPE html>
<html lang="en">

@include('admin.incluodes.head')
<body>

@include('admin.incluodes.header')
@include('admin.incluodes.navber')
  
  <div class="container my-5">
    <div class="mx-2">
      <h2 class="fw-bold fs-2 mb-5 pb-2">Edit Testimonial</h2>
      <form action="{{route('testimonials.update',$testimonial['id'])}}" method="POST" class="px-md-5" enctype="multipart/form-data">
      @csrf 
      @method('put')
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Name:</label>
          <div class="col-md-10">
            <input type="text" placeholder="e.g. Jhon Doe" class="form-control py-2" name="name" value="{{old('name',$testimonial['name'])}}"/>
            @error('name')
												<div class="alert alert-warning">{{$message}}</div>
												@enderror
											</div>
										</div>
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Content:</label>
          <div class="col-md-10">
            <textarea name="content" id="" rows="5" class="form-control">{{old('content', $testimonial->content)}}</textarea>
            @error('content')
            <div class="alert alert-warning">{{$message}}</div>
            @enderror
          </div>
        </div>
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Published:</label>
          <div class="col-md-10">
            <input type="checkbox" class="form-check-input" style="padding: 0.7rem;" name="published" {{ old('published', $testimonial->published) ? 'checked' : '' }}/>
          </div>
        </div>
        <hr>
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Image:</label>
          <div class="col-md-10">
            <input type="file" class="form-control" style="padding: 0.7rem; margin-bottom: 10px;" name="image"/>
            <img src="{{asset('assests/images/testimonials/' . $testimonial->images) }}" alt="" style="width: 10rem;">
            @error('image')
              <div class="alert alert-warning">{{$message}}</div>
              @enderror
            </div>
          </div>
        <div class="text-md-end">
          <button class="btn mt-4 btn-secondary text-white fs-5 fw-bold border-0 py-2 px-md-5">
            Edit Testimonial
          </button>
        </div>
      </form>
    </div>
  </div>
  </main>
  <script src="assests/js/jquery.min.js"></script>
  <script src="assests/js/bootstrap.bundle.min.js"></script>
  <script src="assests/js/dataTables.min.js"></script>
  <script src="assests/js/tables.js"></script>
</body>

</html>