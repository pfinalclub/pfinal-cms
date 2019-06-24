<?php

namespace App\Http\Controllers;

use App\Model\SystemConfig;
use App\Modules\PFBanner\Http\Controllers\PFBannerController;
use pf\arr\PFarr;

class HomeController extends CommonController
{
    public function __construct(SystemConfig $systemConfig)
    {
        parent::__construct($systemConfig);
    }

    public function index()
    {
        $modules = $this->modules;
        //判断是否有配置广告
        if (in_array('PFBanner', PFarr::pf_array_col($this->modules->toArray(), 'name'))) {
            $index_banners = PFBannerController::banner_list();
        }

        return view($this->temple.'.index', compact('modules', 'index_banners'));
    }

    public function about_me()
    {
        return view($this->temple.'.index');
    }

    public function sendEmail(Request $request)
    {
        $this->validate($request,[
            'name'    => 'required',
            'email' => 'required|email',
            'message'=>'required',
            'mobile'=>'required'
        ],[
            'name.required'=>'请填写名字',
            'email.required'=>'请填写邮箱',
            'email.email'=>'邮箱格式不正确',
            'mobile.required'=>'手机号码必须填写'
        ]);
//        $msg = Message::create($request->post());
//        $this->dispatch(new SendReminderEmail($msg));
        return $this->showMessage("留言成功!","/");
//         return redirect('/')->with('msg', '留言成功！');
    }
}
