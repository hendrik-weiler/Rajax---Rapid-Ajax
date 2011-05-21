<?php
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
				return $html->getHTML();
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