<!DOCTYPE html>
<html lang="en">

@include('admin.incluodes.head')

<body>

  @include('admin.incluodes.header')
  @include('admin.incluodes.navber')
  <div class="container my-5">
    <div class="mx-2">
      <div class="row justify-content-between mb-2 pb-2">
        <h2 class="fw-bold fs-2 col-auto">All Users</h2>
        <a href="{{route('users.create') }}" class="btn btn-link  link-dark fw-semibold col-auto me-3">➕Add new user</a>
      </div>
     {{-- @if(session('success'))
      <div class="alert alert-success">
        {{session('success')}}
      </div>
      @endif--}}
      <div class="table-responsive">
        <table class="table table-hover display" id="_table">
          <thead>
            <tr>
              <th scope="col">created_at</th>
              <th scope="col">FullName</th>
              <th scope="col">Username</th>
              <th scope="col">Email</th>
              <th scope="col">Active</th>
              <th scope="col">Edit</th>

            </tr>
          </thead>
          <tbody>
            <tr>
              @foreach ($users as $user)
              <th scope="row">{{$user->created_at->format('d M Y')}}</th>
              <td>{{ $user['first_name']}} {{ $user['last_name']}}</td>
              <td>{{ $user->username }}</td>
              <td>{{ $user->email }}</td>
              <td>{{ $user->active ? 'Yes' : 'No' }}</td>

              <td class="text-center">
                <a class="text-decoration-none text-dark" href="{{route('users.edit', $user['id']) }}">
                  <img src="{{asset('assests/images/edit-svgrepo-com.svg') }}" alt="Edit"></a></td>


                  </tr>
              @endforeach

          </tbody>
        </table>
      </div>
    </div>
  </div>
  <script src="assests/js/jquery.min.js"></script>
  <script src="assests/js/bootstrap.bundle.min.js"></script>
  <script src="assests/js/dataTables.min.js"></script>
  <script src="assests/js/tables.js"></script>
</body>

</html>