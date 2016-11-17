<!DOCTYPE html>
<html lang="zh-cmn-Hans" class="ua-windows ua-webkit">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="renderer" content="webkit">
    <meta name="referrer" content="always">
    <title>
        @yield('title')
    </title>
    <meta name="baidu-site-verification" content="cZdR4xxR7RxmM4zE" />
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="Sun, 6 Mar 2005 01:00:00 GMT">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="旅行、文艺、音乐、艺术、生活大爆炸"/>
    <meta name="description" content="生活旅行" />
    <meta name="_token" content="{{ csrf_token() }}"/>
    <link rel="shortcut icon" href="http://static.hdslb.com/images/favicon.ico">
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{ url('/static/community/css/font-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ url('/static/frontend/web/css/nav.css') }}">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    @yield('link')
</head>