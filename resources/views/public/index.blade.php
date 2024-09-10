
@extends('layouts.main')
@section('bodyindex')
<body id="top">

@endsection
 
@section('nav')
        @include('public.incluodes.nav')
        @endsection

@section('contentindex')
        @include('public.incluodes.hero')
        @include('public.incluodes.featured')
        @include('public.incluodes.explore')
        @include('public.incluodes.timeline')
        @include('public.incluodes.faq')
        
       @include('public.incluodes.testimonials')


        @include('public.incluodes.Getintouch')
@endsection