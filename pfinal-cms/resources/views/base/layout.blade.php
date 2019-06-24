<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{$config?$config->title:'PFinal'}}</title>
    <meta name="keywords" content="{{$config?$config->keywords:''}}">
    <meta name="description" content="{{$config?$config->description:''}}">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="icon" href="favicon.png" type="image/png">
    <link href="{{asset('pc-static/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="{{asset('vendor/laravel-admin/font-awesome/css/font-awesome.min.css')}}">
    <script src="{{asset('js/app.js')}}"></script>
    {{--  <link rel="stylesheet" href="{{asset('css/animate.min.css')}}">
      <link rel="stylesheet" href="{{asset('css/swiper.min.css')}}">
      <script src="{{asset('js/app.js')}}"></script>
      <script src="{{asset('js/swiper.animate.min.js')}}"></script>
      <script src="{{asset('js/swiper.min.js')}}"></script>--}}
</head>
<body>
@if($config&&$config->template_id==0)
    @include('local.nav')
@else
    @include($config?$config->template_name.'.nav':'demo.nav');
@endif
@yield("content")
<!--Footer-->
<footer class="footer_wrapper" id="contact">
    <div class="container">
        <section class="page_section contact" id="contact">
            <div class="contact_section">
                <h2>联系我们</h2>
                <h6>满足你的需求，就是我们的使命！</h6>

            </div>
            <div class="row">
                <div class="col-lg-4 wow fadeInLeft">
                    <div class="contact_info">
                        <div class="detail">
                            <h4>公司名称</h4>
                            <p>衿若网络科技工作室</p>
                        </div>
                        <div class="detail">
                            <h4>联系电话</h4>
                            <p>+86 17721213677</p>
                        </div>
                        <div class="detail">
                            <h4>联系邮箱</h4>
                            <p>lampxiezi@163.com</p>
                        </div>
                    </div>


                    <ul class="social_links">
                        <li class="twitter animated bounceIn wow delay-02s"><a href="javascript:void(0)"><i
                                        class="fa fa-twitter"></i></a></li>
                        <li class="facebook animated bounceIn wow delay-03s"><a href="javascript:void(0)"><i
                                        class="fa fa-facebook"></i></a></li>
                        <li class="pinterest animated bounceIn wow delay-04s"><a href="javascript:void(0)"><i
                                        class="fa fa-pinterest"></i></a></li>
                        <li class="gplus animated bounceIn wow delay-05s"><a href="javascript:void(0)"><i
                                        class="fa fa-google-plus"></i></a></li>
                    </ul>
                </div>
                <div class="col-lg-8 wow fadeInLeft delay-06s">
                    <div class="form">

                        <!--NOTE: Update your email Id in "contact_me.php" file in order to receive emails from your contact form-->
                        <form name="sentMessage" id="contactForm" action="email" method="post">
                            <h3 style="color: #fff;">联系我们</h3>
                            <div class="control-group">
                                <div class="controls">
                                    <input type="text" class="form-control input-text"
                                           placeholder="请输入您的名字" name="name" id="name" required
                                           data-validation-required-message="请输入您的名字" value="{{old('name')}}"/>
                                    <p class="help-block"></p>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="controls">
                                    <input type="email" name="email" class="form-control input-text"
                                           placeholder="请输入您的邮箱地址"
                                           id="email" required value="{{old('email')}}"
                                           data-validation-required-message="请输入邮箱"/>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="controls">
                                    <input type="number" maxlength="11" name="mobile" class="form-control input-text"
                                           placeholder="请输入您的手机号码"
                                           id="mobile" required value="{{old('mobile')}}"
                                           data-validation-required-message="请输入手机号码"/>
                                </div>
                            </div>

                            <div class="control-group">
                                <div class="controls">
		<textarea rows="10" cols="100" class="form-control input-text"
                  placeholder="请留言" id="message" name="message" required
                  data-validation-required-message="请留言" minlength="5"
                  data-validation-minlength-message="请大于5个字符"
                  maxlength="999" style="resize:none"></textarea>
                                </div>
                            </div>
                            <div id="success"></div> <!-- For success/fail messages -->
                            <button type="submit" class="btn btn-primary input-btn pull-right">提交</button>
                            <br/>
                            {{csrf_field()}}
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="container">
        <div class="footer_bottom"> &copy; 衿若网络科技 备案号：陇ICP备19000188号-1
            公司地址：甘肃省平凉市庄浪县卧龙镇街道181号
        </div>
    </div>
    </div>
</footer>

<script type="text/javascript" src="{{asset('pc-static/js/jquery-1.11.0.min.js')}}"></script>
<script type="text/javascript" src="{{asset('pc-static/js/bootstrap.min.js')}}"></script>
<script type="text/javascript" src="{{asset('pc-static/js/jquery-scrolltofixed.js')}}"></script>
<script type="text/javascript" src="{{asset('pc-static/js/jquery.nav.js')}}"></script>
<script type="text/javascript" src="{{asset('pc-static/js/jquery.easing.1.3.js')}}"></script>
<script type="text/javascript" src="{{asset('pc-static/js/jquery.isotope.js')}}"></script>
<script src="{{asset('pc-static/js/fancybox/jquery.fancybox.pack.js')}}" type="text/javascript"></script>
<script type="text/javascript" src="{{asset('pc-static/js/wow.js')}}"></script>
<script type="text/javascript" src="{{asset('pc-static/js/custom.js')}}"></script>

<script src="{{asset('system/js/plugins/layer/layer.min.js')}}"></script>
<script src="{{asset('pc-static/js/jquery.lazyload.min.js')}}"></script>
@yield('my-script')
<script>
    $(document).ready(function () {
        {{--        @if(count($errors)>0)--}}
        {{--        setTimeout(function () {--}}
        {{--            @foreach ($errors->all() as $error)--}}
        {{--            layer.msg('{{$error}}', {icon: 5});--}}
        {{--            @endforeach--}}
        {{--        },300)--}}
        {{--        @endif--}}
    });

    {{--@if(session('msg'))--}}
    {{--setTimeout(function () {--}}
    {{--layer.msg('{{session('msg')}}', {icon: 1});--}}
    {{--},500)--}}
    {{--@endif--}}


    $("img.lazy").lazyload({
        placeholder: "{{asset('pc-static/img/loading-round.gif')}}",
    });

    $().ready(function () {
        var icon = "<i class='fa fa-times-circle'></i> ";
        $('#roleForm').validate({
            focusInvalid: true,
            rules: {
                name: {
                    required: true,
                },
                email: {
                    required: true,
                    email: true
                },
                body: {
                    required: true
                }
            },
            submitHandler: function (form) {
                var index = layer.load(1);
                $(form).ajaxSubmit({
                    dataType: "json",
                    success: function (res) {
                        if (res && res.code == 0) {
                            layer.close(index);
                            layer.msg(res.data);
                            setTimeout(function () {
                                window.parent.location.reload(); //刷新父页面
                                // parent.layer.close(index);//关闭自身页面
                            }, 500)
                        } else {
                            layer.msg(res.msg);
                        }
                    }
                })
            }
        });
    })
    (function () {
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        } else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>
</body>
</html>