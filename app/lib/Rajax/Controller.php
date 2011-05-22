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
	 * Setup the class
	 */
	public function __construct() 
	{
		parent::__construct();
		$this->db = $this->getDb();
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
		if(!is_array($resultList) && !is_object($resultList))
			throw new Exception('Output expects an object/array as resultList');
			
		$resultList = $this->secureTheOutput($resultList,$secureOutput);
		
		switch(strtolower(Rajax_Application::$request->output)) 
		{	
			case 'json':
				header('Content-type: application/json');
				return new Rajax_JSON($resultList);
				break;
			case 'xml':
				header('Content-type: text/xml');
				$xml = new Rajax_XML($resultList);
				return $xml->getXML();
				break;
			case 'html':
				header('Content-type: text/html');
				
				$html = new Rajax_HTML($resultList);
				
				if(preg_match('#template=([\w]+)#i',Rajax_Application::$request->options,$matches)) {
					return $html->getTemplate($matches[1],$resultList);
				} else {
					return $html->getHTML();
				}
				
				break;
		}
	}
	
	/**
	 * Deletes all entries which arent listed in $list
	 * 
	 * @param array $resultList
	 * @param array $list
	 * @return array
	 */
	private function secureTheOutput($resultList,array $list)
	{
		$return = array();
		
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
}