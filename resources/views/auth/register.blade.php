@extends('layouts.app')

@section('content')
<div class="container my-5 bg-white rounded-3">
    <div class="row">
        <div class="col-md-5 d-none d-md-block img-wrapper">
            <img src="{{asset('assests/images/rear-view-young-college-student.jpg')}}" alt="">
        </div>
        <div class="col-md-7">
            <form method="POST" action="{{ route('register') }}" class="text-center h-100 px-3 d-flex flex-column justify-content-center">
                @csrf
                <h3 class="fw-semibold mb-5">REGISTRATION FORM</h3>

                <div class="form-group d-flex mb-3">
                    <input id="first_name" type="text" placeholder="First Name" class="form-control me-2 @error('first_name') is-invalid @enderror" name="first_name" value="{{ old('first_name') }}" required autocomplete="first_name">
                    <input id="last_name" type="text" placeholder="Last Name" class="form-control @error('last_name') is-invalid @enderror" name="last_name" value="{{ old('last_name') }}" required autocomplete="last_name">

                    @error('first_name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror

                    @error('last_name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>

                <div class="input-group mb-3">
                    <input id="username" type="text" placeholder="Username" class="form-control @error('username') is-invalid @enderror" name="username" value="{{ old('username') }}" required autocomplete="username">
                    <img src="{{asset('assests/images/user-svgrepo-com.svg')}}" alt="" class="input-group-text">

                    @error('username')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>

                <div class="input-group mb-3">
                    <input id="email" type="email" placeholder="Email Address" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
                    <img src="{{asset('assests/images/email-svgrepo-com.svg')}}" alt="" class="input-group-text">

                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>

                <div class="input-group mb-3">
                    <input id="password" type="password" placeholder="Password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
                    <img src="{{asset('assests/images/password-svgrepo-com.svg')}}" alt="" class="input-group-text">

                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>

                <div class="input-group mb-5">
                    <input id="password-confirm" type="password" placeholder="Confirm Password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                    <img src="{{asset('assests/images/password-svgrepo-com.svg')}}" alt="" class="input-group-text">
                </div>

                <button type="submit" class="btn btn-dark px-5 mb-2">
                    REGISTER
                    <img src="{{asset('assests/images/arrow-sm-right-svgrepo-com.svg')}}" alt="">
                </button>

                <a href="{{ route('login') }}" class="fw-semibold fs-6 text-decoration-none text-dark">Already have account?</a>
            </form>
        </div>
    </div>
</div>
@endsection
