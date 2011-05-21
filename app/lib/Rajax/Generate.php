<?php
if(Rajax_Application::$generator) {
	class Rajax_Generate
	{
		
		private $tmpl_jquery_ready = '$(function() {~\t{{content}}~});';
		
		private $tmpl_navigation_comment = '\t//Rajax Gen - Navigation~{{content}}~\t//---------------------------~';
		
		private $tmpl_navigation = '\t$("{{selector}}").rajaxNavi();~';
		
		private $tmpl_watch_comment = '\t//Rajax Gen - Events~{{content}}~\t//---------------------------~';
		
		private $tmpl_watch_start = '\t$().watch({~{{content}}~});~';
		
		private $tmpl_event_comment = '\t\t/**~\t\t* {{funcname}}~\t\t* Description here...~\t\t*/';
		
		private $tmpl_event = '\t\t{{name}} : function(e) {~\t\t\t{{content}}~\t\t}';
		
		private $tmpl_event_get = '\t\t\t$.get("{{url}}",function(data) {~\t\t\t\t{{content}}~\t\t\t});';
		
		private $tmpl_event_get_put = '\t\t\t\t$("{{element}}").html(data);';
		
		static $events = array();
		
		static $navigation = array();
		
		static function addNavigation($selector)
		{
			self::$navigation[] = $selector;
		}
		
		static function addEvent($funcname,$type,array $behaviour = array(
			'contentTo' => '#container',
			'format' => 'json',
			'options' => ''
		))
		{
			self::$events[$type] = $behaviour;
		}
		
		public function generate($classname) 
		{
			$mainJs = file_get_content(Rajax_Application::$applicationPath . '/html/js/main.js');
			
			foreach(self::$navigation as $navi)
			{
				
			}
			
			foreach(get_class_methods($classname) as $method)
			{
				
			}
		}
		
		public function checkCache()
		{
			foreach($this->getCacheList() as $file)
			{
				$filename = split('/',$file);
				$filename = $filename[count($filename)-1];	
				
				$cachefile = Rajax_Application::$cachePath . '/cache_' . $filename;
				
				if(filemtime($file) != filemtime($cachefile))
				{
					$this->makeCache($cachefile);
				}
			}
			
		}
		
		private function makeCache($file)
		{
			$file = fopen($file,'w+');
		}
		
		private function getCacheList()
		{
			$result = array();
			
			foreach(scandir(Rajax_Application::$cachePath) as $file)
			{
				if(!preg_match(array('..','.'),$file))
					$result[] = $file;
			}
			
			return $result;
		}
	}
}
