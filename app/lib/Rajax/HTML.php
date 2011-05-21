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
