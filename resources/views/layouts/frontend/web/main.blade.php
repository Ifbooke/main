@include('layouts.frontend.web.head')

<body style="background-color: #F5F5F5; width: 100%">
@yield('style')

@include('layouts.frontend.web.nav')

    <div class="container" style="margin-top: 4%; width: 1200px;">
        @yield('content')
    </div>

@include('layouts.frontend.web.footer')
</body>
@yield('script')
</html>