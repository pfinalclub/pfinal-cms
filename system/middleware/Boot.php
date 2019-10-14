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
			$this->installed and $this->app();
			//执行安装程序时
			$this->defineConst();
			//调试时允许跨域访问
			if (\Config::get('app.debug')) {
				header('Access-Control-Allow-Origin:*');
				header('Access-Control-Allow-Headers:*');
			}
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
	}