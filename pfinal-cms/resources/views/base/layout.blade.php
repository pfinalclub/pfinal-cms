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
@include('base.nav')
@yield("content")
<footer class="footer">
</footer>
@yield("self-script")
</body>
</html>