<?php

class template extends Rajax_Controller
{
	
	public function __construct()
	{
		$this->useDB('mysql');
	}
	
	public function getTemplateData()
	{
		$sql = "SELECT * FROM `wp_woocommerce_order_items`";
		
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