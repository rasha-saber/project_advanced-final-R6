@extends('layouts.main')
@push('pageTitle')
RASHA
@endpush


@section('bodyindex')
<body id="top">

@endsection
   


            @section('navber')
@include('public.incluodes.navber')
 @endsection


 @section('headerdetails')
  @include('public.incluodes.headerdetails')
@endsection





@section('details')

@include('public.incluodes.detailssection1')
@include('public.incluodes.detailssection2')
@endsection