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
