<?php

class template extends Rajax_Controller
{
	
	public function __construct()
	{
		$this->useDB('seconddb');
	}
	
	public function getTemplateData()
	{
		$sql = "SELECT * FROM `projekte`";
		
		$result = $this->db->fetchAll($sql);
		
		if($result != false)
		{
			if(!$this->output($result))
			{
				Rajax_Application::error404();
			}
		}
	}
	
	public function error()
	{
		Rajax_Application::error404();
	}
}