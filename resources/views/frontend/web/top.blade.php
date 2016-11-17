@extends('layouts.frontend.web.main')
@section('title')
    {{ $data['title'] }}
 @endsection
@section('style')
    <style>
        p img {
            width: 1200px;
        }
        </style>
    @endsection
@section('content')
    <div>
        {!! $data['content'] !!}
    </div>
@endsection