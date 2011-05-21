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