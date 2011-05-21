<?php
/**
 * Rajax_Route - Rapid Ajax Routing Class
 * 
 * Handles all incoming requests and give
 * an output back 
 * 
 * @package Rajax
 * @author Hendrik Weiler
 * @since 0.01
 */
class Rajax_Route
{
	
	/**
	 * Contains an error message
	 * @var string
	 */
	static $errorMessage;
	
	/**
	 * Checks for valid classes and functions
	 * 
	 * @return bool
	 */
	static function Route()
	{
		$controller_parts = explode('_',Rajax_Application::$request->controller);
	
		if(!class_exists($controller_parts[0],false)) {
			self::$errorMessage = 'Class: ' 
									. $controller_parts[0] 
									. ' doenst exist.';
			return false;
		}
		
		$controller = new $controller_parts[0]();

		if(count($controller_parts) == 2) {
			
			if(method_exists($controller,$controller_parts[1])) {
				$controller->$controller_parts[1]();
				return true;
				
			} else {
				self::$errorMessage = 'Function '
										. $controller_parts[1] . ' in controller: ' 
										. Rajax_Application::$request->controller 
										. ' doenst exist.';
				return false;
			}
			
		} else {
			if(method_exists($controller,'main')) {
				$controller->main();
				return true;
				
			} else {
				self::$errorMessage = 'Function main in controller: ' 
										. Rajax_Application::$request->controller 
										. ' doenst exist.';
				return false;
			}
			
		}
	}
}
