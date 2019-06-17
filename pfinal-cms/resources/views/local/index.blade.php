@extends('base.layout')
@section('content')
    <style>
        .swiper-container {
            width: 100%;
            height: 93vh;
        }

        .swiper-slide {
            width: 100%;
            text-align: center;
            border: 1px solid #cccccc;
            height: calc(100%);
        }

        .swiper-button-next {
            top: 90vh;
            right: 48%;
            transform: rotate(90deg);
        }
    </style>

    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                @if(in_array('PFBanner',\pf\arr\PFarr::pf_array_col($modules->toArray(),'name')))
                    <div class="banner_top_one">
                        {!! $index_banners->index_top_banner??'' !!}
                    </div>
                @endif

            </div>
            <div class="swiper-slide">Slide 2</div>
            <div class="swiper-slide">Slide 3</div>
        </div>
        <!-- 如果需要分页器 -->
        <div class="swiper-pagination"></div>
        <div class="swiper-button-next"></div><!--右箭头。如果放置在swiper-container外面，需要自定义样式。-->
    </div>
@endsection
@section('self-script')
    <script>
        var mySwiper = new Swiper('.swiper-container', {
            //autoHeight: true, //高度随内容变化
            direction: 'vertical', // 垂直切换选项
            loop: true, // 循环模式选项
            //effect: 'cube',
            grabCursor: true,
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },

            // 如果需要分页器
            pagination: {
                el: '.swiper-pagination',
            },
        })
    </script>
@endsection