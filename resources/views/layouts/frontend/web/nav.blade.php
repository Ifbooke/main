<!--导航-->
<nav class="navbar navbar-fixed-top" role="navigation">
    <div class="dropdown profile-element">
        <div class="navbar-header pull-left" data-toggle="dropdown">
            <span><i class="icon-reorder icon-large"></i></span>
        </div>
        <ul class="dropdown-menu animated fadeInRight m-t-xs">
            @if (is_array(Session::get('menu')))
                @foreach(Session::get('menu') as $item)
                    <li>
                        <a class="J_menuItem" href="{{ $item->url }}">
                            <i class="icon-camera-retro icon-large"></i>　{{ $item->name }}
                        </a>
                    </li>
                @endforeach
            @endif
            <li class="divider"></li>
            <li><a href="login.html">安全退出</a></li>
        </ul>
    </div>

    <div class="container" style="width: 350px; margin: auto">
        <div class="form-group">
            <span name="searchSpan"><i class="icon-search icon-large" name="searchI"></i></span>
            <input type="text" class="form-control" placeholder="Search Youtube" id="fromInput">
        </div>
    </div>
    <div class="navbar-right">
        <ul class="nav navbar-nav">
            <li><a data-toggle="modal" data-target="#register">　</a></li>
            {{--<li><a data-toggle="modal" data-target="#signin">登录</a></li>--}}
            <li><img src="{{ url('/static/frontend/web/image/ee9ee08440056ef1ca0f43826114340e_b.jpg') }}"></li>
        </ul>
    </div>
</nav>
<script>
    $("#fromInput").focus(function () {
        $(this).addClass("invalid");
        $(this).css('color', '#333333');
        $(this).css("background-color", '#fff')
        $('span[name=searchSpan]').css("background-color", '#fff');
        $('i[name=searchI]').css("color", '#CCCCCC');
    });
    $("#fromInput").blur(function () {
        $(this).removeClass("invalid");
        $(this).css('color', '#FCA6A6');
        $(this).css("background-color", '#EA252C')
        $('span[name=searchSpan]').css("background-color", '#EA252C');
        $('i[name=searchI]').css("color", '#FCA6A6');
    });
</script>