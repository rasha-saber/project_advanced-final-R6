@extends('layouts.main')
{{-- @push('pageTitle')
home
@endpush --}}

@push('pageHeader')
Contact Form
@endpush

@section('body')
<body class="topics-listing-page" id="top">
@endsection
@push('pageTitle')
contact
@endpush
    
       @section('navber')
@include('public.incluodes.navber')
 @endsection




@include('public.incluodes.header')

@include('public.incluodes.contact')

>
      

