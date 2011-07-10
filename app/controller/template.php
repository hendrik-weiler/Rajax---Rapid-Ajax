<?php

class template extends Rajax_Controller
{
	public function getTemplateData()
	{
		$sql = "SELECT * FROM `db`";
		
		$result = $this->db->fetchAll($sql);
		
		if($result != false)
		{
			if(!$this->output($result))
			{
				Rajax_Application::error404();
			}
		}
	}
}