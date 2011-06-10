<?php

class content extends Rajax_Controller
{

	public function getArticles()
	{
		$query = 'SELECT * FROM `home` WHERE 1 ORDER BY id DESC';
		
		print $this->output($this->db->fetchAll($query),array(
			'title','text'
		));
	}
	
	public function getFunctions()
	{		
		$query = 'SELECT * FROM docs_function WHERE refer LIKE ?';

		print $this->output($this->db->fetchAll($query,$_POST['classname']),array(
			'name','refer','description'
		));
	}
	
	public function getClasses()
	{
		print $this->output($this->db->fetchAll('SELECT * FROM docs_class'),array(
			'name'
		));
	}
	
	
	public function getPictures()
	{
		print_r($this->fparams);
		print $this->output($this->db->fetchAll('SELECT * FROM pictures'),array(
			'title','picture','text'
		));
	}
}
