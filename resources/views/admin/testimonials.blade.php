<!DOCTYPE html>
<html lang="en">

@include('admin.incluodes.head')
<body>

@include('admin.incluodes.header')
@include('admin.incluodes.navber')
    <div class="container my-5">
        <div class="mx-2">
            <div class="row justify-content-between mb-2 pb-2">
                <h2 class="fw-bold fs-2 col-auto">All Testimonials</h2>
                <a href="{{route('testimonials.create') }}" class="btn btn-link  link-dark fw-semibold col-auto me-3">➕Add new testimonial</a>
            </div>
            @if(session('success'))
      <div class="alert alert-success">
        {{session('success')}}
      </div>
      @endif
            <div class="table-responsive">
                <table class="table table-hover display" id="_table">
                    <thead>
                        <tr>
                            <th scope="col">Created At</th>
                            <th scope="col">Name</th>
                            <th scope="col">Content</th>
                            <th scope="col">Published</th>
                            <th scope="col">Edit</th>
                            <th scope="col">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($testimonials as $testimonial)
                        <tr>
                            <th scope="row">{{$testimonial->created_at->format('d M Y')}}</th>
                            <td>{{$testimonial['name']}}</td>
                            <td>{{ Str::limit($testimonial['content'], 30,'....')}}</td>
                            <td>@if($testimonial['published']=== 1) YES @else NO @endif</td>

                            <td class="text-center"><a class="text-decoration-none text-dark" href="{{route('testimonials.edit', $testimonial['id']) }}"><img src="{{asset('assests/images/edit-svgrepo-com.svg') }}"></a></td>
                            <td class="text-center">
                <form action="{{route('testimonials.destroy', $testimonial['id'])}}" method="POST">
                  @csrf
                  @method('DELETE')
                  <button type="submit" value="delete" onclick="return confirm('Are you sure you want to delete?')" class="btn btn-link m-0 p-0">
                    <img src="{{asset('assests/images/trash-can-svgrepo-com.svg')}}" alt="Edit">
                  </button>
                </form>
              </td>

              @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>
    
@include('admin.incluodes.js')
