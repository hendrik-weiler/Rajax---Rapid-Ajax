<?php

class Rajax_Fallback_Parser
{
	
	private $_source;
	
	private $_parsedArray;
	
	public function __construct($jsfile)
	{
		if(file_exists($jsfile)) {
			$this->_source = file($jsfile, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
			$script = $this->_sortScript();
			$script['events'] = $this->_getEvents($script['events']);
			$this->_findRequests($script);
			var_dump($script);
		} else {
			throw new Exception('Filepath to the javascript source doesnt exist');
		}
	}
	
	public function _sortScript()
	{
		$content = array();
		
		$mode = null;
		
		if(count($this->_source) >= 1)
		{
			foreach($this->_source as $row)
			{
				if(preg_match('#//--Fallback:rajaxEvents start#',$row)) {
					$mode = 'events';
					continue;
				}
					
				if(preg_match('#//--Fallback:rajaxEvents end#',$row))
					$mode = null;
				
				if(preg_match('#//--Fallback:rajaxNavi start#',$row)) {
					$mode = 'navi';
					continue;
				}

				if(preg_match('#//--Fallback:rajaxNavi end#',$row))
					$mode = null;
				
				if($mode != null)
					$content[$mode][] = trim($row);
			}
			
			unset($content['events'][0]);
			unset($content['events'][count($content['events'])]);

			$content['navi'] = str_replace(array(' ','\r','\n',PHP_EOL,'\t'),array('','','','',''),implode('',$content['navi']));
			
			return $content;
		}
		else
		{
			throw new Exception('File cannot be empty');
		}
	}
	
	private function _getEvents($content)
	{
		$mode = null;
		
		$events = array();
		
		$depth = 0;
		
		for($count = 0; $count <= count($content); $count++)
		{
			if(preg_match('#//--Event:Start#',trim($content[$count]))) 
			{
				$count += 1;
				$depth+=1;
				$splitjson = explode(':',$content[$count]);
				$mode = $splitjson[0];
				$events[trim($mode)][] = $splitjson[1];
				continue;
			}

			if(preg_match('#(}(,)?//--Event:End)#',trim($content[$count]))) 
			{
				$mode = null;
				$depth-=1;
				continue;
			}
			
			if($mode != null)
				$events[trim($mode)][] = trim($content[$count]);
		}
		
		foreach($events as $key => $event)
			$events[$key] = str_replace(array(' ','\r','\n',PHP_EOL,'\t'),array('','','','',''),implode('',$event));
		
		return $events;
	}
	
	private function _findRequests($content)
	{
		$regex = '#\$\(("|\')([\w#\.]+)("|\')\).([\w]+)\(([\w{}:\'",#.]+)\)\;#';
		$i = preg_match_all($regex,$content['events']['onchange'],$matches,PREG_SET_ORDER);

		var_dump($i,$matches);
	}
}
