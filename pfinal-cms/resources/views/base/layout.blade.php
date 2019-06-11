<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{$config->title}}</title>
    <meta name="keywords" content="{{$config->keywords}}">
    <meta name="description" content="{{$config->description}}">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <link rel="stylesheet" href="{{asset('vendor/laravel-admin/font-awesome/css/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/animate.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/swiper.min.css')}}">
    <script src="{{asset('js/app.js')}}"></script>
    <script src="{{asset('js/swiper.animate.min.js')}}"></script>
    <script src="{{asset('js/swiper.min.js')}}"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark flex-column flex-md-row">
    <a class="navbar-brand" href="{{url('/')}}">
        @if($config->logo)
            <img src="{{asset('storage/'.$config->logo)}}" width="30" height="30" alt="">
        @else
            {{ucfirst($config->title)}}
        @endif
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item {!! Request::getPathInfo()=='/'?'active':'' !!}">
                <a class="nav-link" href="{{url('/')}}"><i class="fa fa-home"></i> 首页 <span
                            class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item {!! Request::getPathInfo()=='/about_me'?'active':'' !!}">
                <a class="nav-link" href="{{url('about_me')}}"> <i class="fa fa-user-md"></i> 关于我们</a>
            </li>
        </ul>
    </div>
</nav>

@yield("content")
<footer class="footer">
</footer>
@yield("self-script")
</body>
</html>