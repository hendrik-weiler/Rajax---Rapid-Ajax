<?php
/**
 * Rajax_HTML - Rapid Ajax HTML Class
 * 
 * Give html output back 
 * input:
 * zen coding syntax or template
 * 
 * @package Rajax
 * @author Hendrik Weiler
 * @since 0.01
 */
class Rajax_HTML
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
	 * Convert zen-php format into rajax
	 */
	private function convertOptions()
	{
		$options = Rajax_Application::$request->options;
		
		return preg_replace('#\$([\w]+)>?#i','{%$1%}',$options);
	}
	
	/**
	 * Returns the formatted html
	 * 
	 * @return string
	 */
	public function getHTML()
	{
		if(!isset(Rajax_Application::$request->options))
			return false;
		
		$return = '';

		foreach($this->data as $obj)
		{
			$return .= ZenPHP::expand($this->convertOptions(),$obj);
		}
		
		return preg_replace('#([\w]+)=(\'|\"){(.*)}(\'|\")#i','$1=$3',$return);
	}
}
