<?php
/**
 * Rajax_JSON - Rapid Ajax JSON Class
 * 
 * Give json output back 
 * 
 * @package Rajax
 * @author Hendrik Weiler
 * @since 0.01
 */
class Rajax_JSON
{
	
	/**
	 * Contains the unformated output data
	 * 
	 * @var string
	 */
	public $data;
	
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
	 * Returns by creating instance the json
	 * @return string
	 */
	public function __toString()
	{
		return json_encode($this->data);
	}
}
