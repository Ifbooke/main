@extends('layouts.frontend.web.main')
@section('title', '首页')
@section('link')
    <link rel="stylesheet" href="{{ url('/static/frontend/web/css/main-index.css') }}">
@endsection
@section('content')
    @if (is_array($top))
        @foreach($top as $k => $item)
            @if ($k == 'head')
                <div class="row">
                    @foreach($item as $c)
                        <div class="col-sm-6 col-md-3">
                            <a href="{{ $c->url }}/{{ $c->id }}"><img src="{{ $c->pic_url }}" alt="{{ $c->title }}"></a>
                            <span><a href="{{ $c->url }}/{{ $c->id }}">{{ str_limit($c->title, 85, '...') }}</a></span>
                            <span>{{ str_limit($c->desc, 35, '...') }}</span>
                        </div>
                    @endforeach
                </div>
            @elseif ($k == 'central')
                <div class="row" style="margin-top: 1%;">
                    @foreach($item as $c)
                        <div class="col-sm-6 col-md-3">
                            <a href="{{ $c->url }}/{{ $c->id }}"><img src="{{ $c->pic_url }}" alt="{{ $c->title }}"></a>
                            <span><a href="{{ $c->url }}/{{ $c->id }}">{{ str_limit($c->title, 55, '...') }}</a></span>
                            <span>{{ str_limit($c->desc, 35, '...') }}</span>
                        </div>
                    @endforeach
                </div>
            @elseif ($k == 'bottom')
                <div class="row" style="margin-top: 1%">
                    @foreach($item as $c)
                        <div class="col-sm-6 col-md-3">
                            <a href="{{ $c->url }}/{{ $c->id }}"><img src="{{ $c->pic_url }}" alt="{{ $c->title }}"></a>
                            <span><a href="{{ $c->url }}/{{ $c->id }}">{{ str_limit($c->title, 25, '...') }}</a></span>
                            <span>{{ str_limit($c->desc, 35, '...') }}</span>
                        </div>
                    @endforeach
                </div>
            @endif
        @endforeach
    @endif
@endsection

