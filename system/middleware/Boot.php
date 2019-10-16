<?php
	/**
	 * ----------------------------------------
	 * | Created By pfinal-cms                 |
	 * | User: pfinal <lampxiezi@163.com>     |
	 * | Date: 2019/10/14                      |
	 * | Time: 上午11:17                        |
	 * ----------------------------------------
	 * |    _____  ______ _             _     |
	 * |   |  __ \|  ____(_)           | |    |
	 * |   | |__) | |__   _ _ __   __ _| |    |
	 * |   |  ___/|  __| | | '_ \ / _` | |    |
	 * |   | |    | |    | | | | | (_| | |    |
	 * |   |_|    |_|    |_|_| |_|\__,_|_|    |
	 * ----------------------------------------
	 */
	
	namespace system\middleware;
	
	use pf\request\Request;
	
	class Boot
	{
		protected $installed;
		
		public function __construct()
		{
			$this->installed = is_file('data/lock.php');
		}
		
		public function run($next)
		{
			//没有安装时跳转到安装界面
//			if ( ! $this->installed and ! preg_match('@setup/app@i', Request::get('s'))) {
//				die(redirect('setup.app.copyright'));
//			}
			# $this->installed
			$this->app();
			//执行安装程序时
			$this->defineConst();
			//调试时允许跨域访问
//			if (Config::get('app.debug')) {
//				header('Access-Control-Allow-Origin:*');
//				header('Access-Control-Allow-Headers:*');
//			}
			$next();
		}
		
		protected function defineConst()
		{
			defined('PF_VERSION') or define(
				'PF_VERSION',
				'v0-Bate'
			# $this->installed ? Cloud::version() : 999
			);
			defined('SITEID') or define('SITEID', Request::get('siteid', 0));
			
			return $this;
		}
		
		protected function app()
		{
			# Config::findOrCreate(1)->initConfig();
			$this->router();
			
		}
		
		protected function parseDomain()
		{
			$domain = trim($_SERVER['HTTP_HOST'].dirname($_SERVER['SCRIPT_NAME']), '/\\');
			$moduleDomain = DB::table('module_domain')->where('domain', $domain)->first();
			if ($moduleDomain) {
				//没有站点编号时设置域名所在站点编号
				if (!Request::get('siteid')) {
					Request::set('get.siteid', $moduleDomain['siteid']);
				}
				//没有模块参数时设置模块参数
				if (!Request::get('m') && !Request::get('s') && !Request::get('action')) {
					Request::set('get.m', $moduleDomain['module']);
				}
			}
			
			return $this;
		}
		
		protected function router()
		{
			$url = preg_replace('@/index.php/@', '', $_SERVER['REQUEST_URI']);
			$url = trim($url, '/');
			if (preg_match('@^([a-z]+)(\d+)@', $url, $match)) {
				//设置站点与模块变量
				if (count($match) == 3) {
					Request::set('get.siteid', $match[2]);
					Request::set('get.m', $match[1]);
				}
				$siteid = Request::get('siteid');
				if ($siteid && !Request::get('s')) {
					$routes = DB::table('router')->where('siteid', $siteid)->where('status', 1)->get();
					foreach ($routes as $r) {
						Route::any($r['router'], 'app\site\controller\Entry@moduleRoute');
					}
				}
			}
			
			return $this;
		}
	}