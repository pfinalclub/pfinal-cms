<link rel="stylesheet" href="{{asset('pc-static/js/fancybox/jquery.fancybox.css')}}" type="text/css" media="screen"/>
<link href="{{asset('pc-static/css/style.css')}}" rel="stylesheet" type="text/css">
<link href="{{asset('pc-static/css/font-awesome.css')}}" rel="stylesheet" type="text/css">
<link href="{{asset('pc-static/css/animate.css')}}" rel="stylesheet" type="text/css">
<header id="header_wrapper">
    <div class="container">
        <div class="header_box">
            <div class="logo"><a
                        href="{{url('/')}}">{!! ($config&&$config->logo)?'<img src="'.asset('storage/'.$config->logo).'" alt="logo" style="width:50px;height:50px;">':'PFinal' !!}</a>
            </div>
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse"
                            data-target="#main-nav"><span class="sr-only">Toggle navigation</span> <span
                                class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                    </button>
                </div>
                <div id="main-nav" class="collapse navbar-collapse navStyle">
                    <ul class="nav navbar-nav" id="mainNav">
                        <li class="active"><a href="#hero_section" class="scroll-link">主页</a></li>
                        <li><a href="#aboutUs" class="scroll-link">关于我们</a></li>
                        <li><a href="#service" class="scroll-link">服务</a></li>
                        <li><a href="#Portfolio" class="scroll-link">合作案例</a></li>
                        <!-- <li><a href="#clients" class="scroll-link">Clients</a></li> -->
                        <!-- <li><a href="#team" class="scroll-link">我们的团队</a></li> -->
                        <li><a href="#contact" class="scroll-link">联系我们</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
</header>