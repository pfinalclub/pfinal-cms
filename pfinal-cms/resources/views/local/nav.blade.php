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
            @if(count($modules))
                @foreach($modules as $item)
                    <li class="nav-item {!! Request::getPathInfo()== $item->name?'active':'' !!}">
                        <a class="nav-link" href="{{url($item->name)}}"> <i
                                    class="fa fa-user-md"></i> {{ $item->title }}
                        </a>
                    </li>
                @endforeach
            @endif
            <li class="nav-item {!! Request::getPathInfo()=='/about_me'?'active':'' !!}">
                <a class="nav-link" href="{{url('about_me')}}"> <i class="fa fa-user-md"></i> 关于我们</a>
            </li>
        </ul>
    </div>
</nav>