<?php

namespace App\Http\Controllers;

use App\Model\Modules;
use App\Model\SystemConfig;

class CommonController extends Controller
{
    protected $temple = 'local.';
    protected $config;
    protected $modules;

    public function __construct(SystemConfig $systemConfig)
    {
        // 获取网页内的module;
        $modules = Modules::select('title', 'name', 'status', 'is_nav')->where('status', 1)->get();
        $this->modules = $modules;

        if ($systemConfig->template_id) {

        } else {
            $this->temple = 'local.';
        }
    }

    public function showMessage($message, $url = '', $time = 2)
    {

        //验证参数
        if ($message) {
            if ($url) {
                $data = [
                    'message' => $message,
                    'url' => url($url),
                    'jumpTime' => $time,
                ];
            } else {
                $data = [
                    'message' => $message,
                    'url' => 'javascript:history.back();',
                    'jumpTime' => $time,
                ];
            }
        } else {
            $data = [
                'message' => '非法访问！',
                'url' => 'javascript:history.back();',
                'jumpTime' => 2,
            ];
        }

        return view('admin.message', ['data' => $data]);
    }
}
