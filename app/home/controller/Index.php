<?php
	/**
	 * ----------------------------------------
	 * | Created By pfinal-cms                 |
	 * | User: pfinal <lampxiezi@163.com>     |
	 * | Date: 2019/10/16                      |
	 * | Time: 下午1:04                        |
	 * ----------------------------------------
	 * |    _____  ______ _             _     |
	 * |   |  __ \|  ____(_)           | |    |
	 * |   | |__) | |__   _ _ __   __ _| |    |
	 * |   |  ___/|  __| | | '_ \ / _` | |    |
	 * |   | |    | |    | | | | | (_| | |    |
	 * |   |_|    |_|    |_|_| |_|\__,_|_|    |
	 * ----------------------------------------
	 */
	
	namespace app\home\controller;
	
	
	use app\model\ModelBase;
	
	class Index
	{
		public function index()
		{
			$keywords = $this->get_config();
			
			return view('view/home/index', ['title' => 'PFinal', 'keywords' => $keywords]);
		}
		
		protected function get_config()
		{
			$keywords = ModelBase::get()->toArray();
			
			return $keywords ?? [];
		}
		
		public function login()
		{
			return view('view/home/login');
		}
	}