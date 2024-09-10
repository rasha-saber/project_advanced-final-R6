@extends('layouts.main')
@push('pageTitle')
RASHA
@endpush

@push('pageHeader')
Testimonials
@endpush
@section('body')
<body class="topics-listing-page" id="top">
@endsection
@push('pageTitle')
testimonial
@endpush
    
    

      

       @section('navber')
@include('public.incluodes.navber')
 @endsection

 @section('header')
@include('public.incluodes.header')
@endsection
{{-- @push('pageHeader')
testimonial
@endpush --}}

 @section('test')
 @include('public.incluodes.testimonials')

      @endsection     
