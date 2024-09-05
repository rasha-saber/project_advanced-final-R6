<!DOCTYPE html>
<html lang="en">

@include('admin.incluodes.head')

<body>

  @include('admin.incluodes.header')
  @include('admin.incluodes.navber')
<div class="container my-5">
  <div class="mx-2">
    <div class="row justify-content-between mb-2 pb-2">
      <h2 class="fw-bold fs-2 col-auto">Unread Messages</h2>
    </div>
    <div class="table-responsive">
      <table class="table table-hover table-borderless display" id="_table">
        <thead>
          <tr>
            <th scope="col">Created At</th>
            <th scope="col">Message</th>
            <th scope="col">Sender</th>
            <th scope="col">Delete</th>
          </tr>
        </thead>
        <tbody>
          @foreach($unreadmessages as $message)
          <tr>
            <th scope="row">{{ $message->created_at->format('d M Y')}}</th>
            <td><a href="{{route('messages.show', $message['id']) }}" class="text-decoration-none text-dark">{{ Str::limit($message['subject'], 30,'....') }}</a></td>
            <td>{{ $message->sender_name }}</td>
            <td class="text-center">
              <form action="{{route('messages.destroy', $message['id'])}}" method="POST">
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
  <hr>
  <div class="mx-2">
    <div class="row justify-content-between mb-2 pb-2">
      <h2 class="fw-bold fs-2 col-auto">Read Messages</h2>
    </div>
    <div class="table-responsive">
      <table class="table table-hover table-borderless display" id="_table2">
        <thead>
          <tr>
            <th scope="col">Created At</th>
            <th scope="col">Message</th>
            <th scope="col">Sender</th>
            <th scope="col">Delete</th>
          </tr>
        </thead>
        <tbody>
        @foreach($readmessages as $message)
          <tr>
            <th scope="row">{{ $message->created_at->format('d M Y')}}</th>
            <td><a href="{{route('messages.show', $message['id']) }}" class="text-decoration-none text-dark">{{ Str::limit($message['subject'], 30,'....') }}</a></td>
            <td>{{ $message->sender_name }}</td>
            <td class="text-center">
              <form action="{{route('messages.destroy', $message['id'])}}" method="POST">
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
<script src="assests/js/jquery.min.js"></script>
<script src="assests/js/bootstrap.bundle.min.js"></script>
<script src="assests/js/dataTables.min.js"></script>
<script src="assests/js/tables.js"></script>
</body>

</html>