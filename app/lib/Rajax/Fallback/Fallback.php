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
 * Rajax_Fallback - Enables fallback if no javascript is enabled
 * 
 * Fallback to a "normal framework"-mode
 * For SEO use
 * 
 * @package Rajax
 * @author Hendrik Weiler
 * @since 0.10
 */
class Rajax_Fallback_Fallback
{
	
	/**
	 * Contains the light php variant of the javascript $.rajaxEvents
	 * @var array
	 */
	private $_events;
	
	/**
	 * Contains the action uri
	 * @var string
	 */
	private $_url;
	
	/**
	 * Contains the path to app folder
	 * @var string
	 */
	private $_path;
	
	/**
	 * Contains the behaviour for event execution
	 * @var string
	 */
	private $_behavior;
	
	/**
	 * Contains the path to the root folder
	 * Example:
	 * http://domain.de/myrajaxpage
	 * the content in this variable should be "myrajaxpage/"
	 * @var string
	 */
	private $_rootFolder;
	
	/**
	 * Setup the class
	 * @param string $path
	 * @param array $events
	 */
	public function __construct($path,$events,$rootFolder='')
	{
		$this->_events = $events;

		$this->_path = $path;
		
		$this->_rootFolder = $rootFolder;
		
		$this->_convertUrl();
		
		$this->_decideBehavior();

	}
	
	/**
	 * Determines the behavior
	 * @return void
	 */
	private function _decideBehavior()
	{
		$event = str_replace('/','_',$this->_url);

		if(empty($this->_url))
			$this->_behavior = 'onload';
		else if(isset($this->_events[$event]))
			$this->_behavior = $event;
		else if(isset($this->_events['onchange']))
			$this->_behavior = 'onchange';
		else
			$this->_behavior = 'onerror';
	}
	
	/**
	 * Convert server uri to usable uri
	 * @return void
	 */
	private function _convertUrl()
	{
		$uri = explode('nojs/',$_SERVER['REQUEST_URI']);
		
		if(isset($uri[1]))
			$this->_url = $uri[1];
	}
	
	/**
	 * Convert hash for rajax_application use
	 * @return void
	 */
	private function _convertHash($hash)
	{
		$split = explode('/',$hash);
		$_GET['controller'] = $split[0];
		$_GET['output'] = $split[1];
		$_GET['options'] = $split[2];
		$_GET['options'] = str_replace('e.parameter',$this->_url,$_GET['options']);
	}
	
	/**
	 * Output a rajax request
	 * @return string
	 */
	private function _outputData()
	{		
		$path = $this->_path;
		
		ob_start();
		
		$rajax = new Rajax_Application();
		$rajax->start();
		
		$output = ob_get_contents();
		
		ob_end_clean();
		
		return $output;
	}
	
	/**
	 * Validate the href of a link
	 * @return string
	 */
	private function _validateLinks()
	{
		$folderpath = '';
		foreach(explode('/',$this->_rootFolder . $this->_url) as $folder)
		{
			$folderpath .= '../';
		}
		
		return $folderpath;
	}
	
	/**
	 * Renders a request
	 * @param string $name
	 * @return string
	 */
	public function render($name)
	{

		$event = $this->_events[$this->_behavior][$name];

		$output = array();

		if(is_array($event))
		{
			foreach($event as $hash)
			{
				$this->_convertHash($hash);
				$output[] = $this->_outputData();
			}
		}
		else
		{
			$this->_convertHash($event);
			$output[] = $this->_outputData();
		}

		$output = implode('',$output);
		$output = str_replace('href="','href="' . $this->_rootFolder . $this->_validateLinks() . 'nojs/',$output);
		$output = str_replace('#!/','',$output);
		return $output;
	}
}
