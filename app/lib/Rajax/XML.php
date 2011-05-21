<?php
/**
 * Rajax_XML - Rapid Ajax XML Class
 * 
 * Give xml output back 
 * 
 * @package Rajax
 * @author Hendrik Weiler
 * @since 0.01
 */
class Rajax_XML
{
	
	/**
	 * Contains the unformated output data
	 * 
	 * @var string
	 */
	private $data;
	
	/**
	 * Setup the class
	 * 
	 * @param mixed $data
	 */
	public function __construct($data)
	{
		$this->data = $data;
	}
	
	/**
	 * Returns data converted into xml
	 * @return string
	 */
	public function getXML()
	{
		$xml = simplexml_load_string("<?xml version='1.0' encoding='utf-8'?><rajaxXML />");
		foreach ($this->data as $entry) {
			$row = $xml->addChild('row');
			foreach($entry as $key => $value) {
				$row->addChild($key, $value);
			}
		}
		
		return $xml->asXML();
	}
}