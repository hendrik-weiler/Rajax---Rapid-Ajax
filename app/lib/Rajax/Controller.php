<?php
/*
 * Rajax - Rapid Ajax
 * Copyright (C) 2011  Hendrik Weiler
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */
/**
 * Rajax_Controller - Rapid Ajax Controller Class
 * 
 * Controlls ajax output
 * 
 * @package Rajax
 * @author Hendrik Weiler
 * @since 0.01
 */
class Rajax_Controller extends Rajax_Application 
{
	
	/**
	 * Contains the databse class
	 * 
	 * @var Zend_Db_Adapter_Pdo_Mysql
	 */
	public $db;
	
	/**
	 * Contains an array of frontend content pointers
	 * 
	 * @var array
	 */
	public $fparams = array();
	
	
	/**
	 * Contains all options from url
	 * 
	 * @var array
	 */
	public $options = array();
	
	/**
	 * Setup the class
	 */
	public function __construct() 
	{
		parent::__construct();
		$this->db = $this->getDb();
		$this->fparams = $this->_getFrontendParams();
		$this->options = $this->_getOptions();
	}
	
	/**
	 * Returns all option from url in an array
	 * 
	 * @return array
	 */
	private function _getOptions()
	{
		$return = array();
		
		if(Rajax_Application::$request->options)
		{
			$options = explode(':',Rajax_Application::$request->options);
			
			$return['_type'] = $options[0];	
			
			$options = explode(';',$options[1]);
			
			foreach($options as $option)
			{
				preg_match_all('#([\w]+)=([\w]+)#i',$option,$matches);
				
				if(!empty($matches[0]))
					$return[$matches[1][0]] = $matches[2][0];
			}
		}
		
		return $return;	
	}
	
	
	private function _isSingleRow($data)
	{
		$data = implode('',array_keys($data));

		preg_match_all('#(\d+)#i',$data,$result);

		return (empty($result[0])) ? true : false;
	}
	
	/**
	 * Deletes all entries which arent listed in $list
	 * 
	 * @param array $resultList
	 * @param array $list
	 * @return array
	 */
	private function _secureTheOutput($resultList,array $list)
	{
		$return = array();
		
		if(empty($list))
			return false;
		
		foreach($resultList as $count => $obj)
		{
			foreach($obj as $key => $value)
			{
				if(in_array($key,$list)) {
					$return[$count][$key] = $value;
				}
			}
		}
		return $return;
	}
	
	/**
	 * Get the content pointers from frontend to an array
	 * @return array
	 */
	private function _getFrontendParams()
	{
		$uri = explode('|', urldecode($_SERVER['REQUEST_URI']));

		if(count($uri) == 2)
		{
			return explode('/',$uri[1]);
		}
	}
	
	/**
	 * Detects charset from query data
	 * 
	 * @return string
	 */
	private function _convertUTF8($data)
	{
		foreach($data as $datakey => $entry)
		{
			foreach($entry as $entryKey => $value)
			{
				if(mb_detect_encoding($value, 'ISO-8859-1', true))
					$data[$datakey][$entryKey] = utf8_encode($value);		
			}
		}
		
		return $data;
	}
	
/**
	 * Output the gathered data from db
	 * given format outputs = xml,json,html
	 * 
	 * $secureOutput = array('username','registereddate')
	 * With secure output you control which column is able to output within this request
	 * 
	 * @param array/object $resultList
	 * @param string $format
	 * @param array $secureOutput
	 * @return html/xml/json
	 */
	public function output($resultList,$secureOutput = array())
	{
		if(!$resultList || empty(Rajax_Application::$request->options) && Rajax_Application::$request->output == 'html')
			return false;
		
		if(!is_array($resultList) && !is_object($resultList))
			throw new Exception('Output expects an object/array as resultList');
		
		//$resultList = $this->_secureTheOutput($resultList,$secureOutput);
		
		if($this->_isSingleRow($resultList)) 
		{
			$data = $resultList;
			unset($resultList);
			$resultList[0] = $data;
		}

		$resultList = $this->_convertUTF8($resultList);

		switch(strtolower(Rajax_Application::$request->output)) 
		{	
			case 'json':
				header('Content-type: application/json');
				print new Rajax_JSON($resultList);
				break;
			case 'xml':
				header('Content-type: text/xml');
				$xml = new Rajax_XML($resultList);
				print $xml->getXML();
				break;
			case 'html':
				header('Content-type: text/html');

				$html = new Rajax_HTML($resultList);
				
				if($this->options['_type'] == 'template' && isset($this->options['file'])) {

					if(is_array($resultList) && !empty($resultList))
					{
						foreach($resultList as $result)
						{
							$html->getTemplate($this->options['file'],$result);
						}
					}
				} else if($this->options['_type'] == 'template' && isset($this->options['odd']) && isset($this->options['even'])) {
					$count = 1;
					if(is_array($resultList) && !empty($resultList))
					{
						foreach($resultList as $result)
						{
							if($count == 1)
							{
								$html->getTemplate($this->options['odd'],$result);
								$count = 2;
							}
							else
							{
								$html->getTemplate($this->options['even'],$result);
								$count = 1;
							}	
						}
					}
						
				} else {
					print $html->getHTML();
				}
				
				break;
		}
		return true;
	}
}