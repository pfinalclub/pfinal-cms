@extends('base.layout')
@section('content')
    <style>
        .swiper-container {
            width: 100%;
            height: 90vh;
        }

        .swiper-slide {
            width: 100%;
            text-align: center;
            border: 1px solid #cccccc;
            height: calc(100%);
        }
    </style>
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide">Slide 1</div>
            <div class="swiper-slide">Slide 2</div>
            <div class="swiper-slide">Slide 3</div>
        </div>
        <!-- 如果需要分页器 -->
        <div class="swiper-pagination"></div>
        <!-- 如果需要滚动条 -->
        <div class="swiper-scrollbar"></div>
    </div>
@endsection
@section('self-script')
    <script>
        var mySwiper = new Swiper('.swiper-container', {
            //autoHeight: true, //高度随内容变化
            direction: 'vertical', // 垂直切换选项
            loop: true, // 循环模式选项

            // 如果需要分页器
            pagination: {
                el: '.swiper-pagination',
            },
            // 如果需要滚动条
            scrollbar: {
                el: '.swiper-scrollbar',
            },
        })
    </script>
@endsection