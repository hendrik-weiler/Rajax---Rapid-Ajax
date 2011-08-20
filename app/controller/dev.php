<?php

class dev extends wordpress
{
	public function __construct()
	{
		parent::__construct();
		$this->setupOptions('dev_', 5, '');
	}
}