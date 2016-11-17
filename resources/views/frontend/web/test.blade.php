@extends('layouts.frontend.web.main')
@section('title', '发布写真')
@section('link')
    <!--引入wangEditor.css-->
    <link rel="stylesheet" type="text/css" href="{{ url('/static/community/wangEditor/dist/css/wangEditor.min.css') }}">

    <!--引入jquery和wangEditor.js-->   <!--注意：javascript必须放在body最后，否则可能会出现问题-->
    <script type="text/javascript"
            src="{{ url('/static/community/wangEditor/dist/js/lib/jquery-1.10.2.min.js') }}"></script>
    <script type="text/javascript" src="{{ url('/static/community/wangEditor/dist/js/wangEditor.min.js') }}"></script>
@endsection

@section('content')
    <div style="margin-top: 10%;">
        <div id="textarea" style="height:400px;max-height:500px;">
            <p>请输入内容...</p>
        </div>
    </div>
    <button type="button" name="check">点击获取内容</button>
@endsection
@section('script')
    <script type="text/javascript">
        var editor = new wangEditor('textarea');
        editor.create();


        $('button[name=check]').on('click', function () {
            var html = editor.$txt.html();
            console.log(html);
        })


    </script>
@endsection