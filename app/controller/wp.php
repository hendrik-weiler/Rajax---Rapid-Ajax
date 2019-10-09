<?php

class wp extends wordpress
{
	public function __construct()
	{
		parent::__construct();
		$this->setupOptions('wp_', 5, '');
	}
}