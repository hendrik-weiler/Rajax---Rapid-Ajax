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
 * Rajax_Controller - Rapid Ajax Controller Class
 * 
 * Controlls ajax output
 * 
 * @package Rajax
 * @author Hendrik Weiler
 * @since 0.05
 */
class wordpress extends Rajax_Controller
{
	
	/**
	 * Table prefix which will be add by naming the tables
	 * in installer
	 * 
	 * @var string
	 */
	private $_tableSuffix = 'dev_';
	
	/**
	 * Max posts each site
	 * 
	 * @var int
	 */
	private $_maxPostsEachCategory = 3;
	
	/**
	 * Contains the path to the custom error page
	 * 
	 * @var string
	 */
	private $_customErrorPage = '';
	
	/**
	 * Error message : if no posts are in this category
	 * 
	 * @var string
	 */
	private $_noCat = 'This category contains no entries.';
	
	/**
	 * Error message : if no categories exist
	 * 
	 * @var string
	 */
	private $_noCatAll = 'This site contains no categories.';
	
	/**
	 * Error message : if no pages exist
	 * 
	 * @var string
	 */
	private $_noSite = 'This site contains no pages.';
	
	/**
	 * Error message: if the site doenst exist
	 * 
	 * @var string
	 */
	private $_noSiteFound = 'The site you requested doenst exist.';
	
	/**
	 * Checks if the category has posts
	 * 
	 * @return bool
	 */
	private function _hasPosts($catName)
	{
		$query = "SELECT object_id FROM " . $this->_tableSuffix . "term_relationships WHERE term_taxonomy_id=
				  (SELECT term_id FROM " . $this->_tableSuffix . "terms WHERE name like '" . $catName . "')";
				  
		$result = $this->db->fetchAll($query);

		if(empty($result))
			return false;
		
		$sql = $this->_getPagesSQL($result, 'none');

		$posts = $this->db->fetchAll($sql);
		
		if(empty($posts))
			return false;
		else
			return true;
	}
	
	/**
	 * Excludes a entry of an category
	 * 
	 * @return array
	 */
	private function _excludeEntries($data,$key,$value)
	{		
		foreach($data as $i => $entry)
		{
			if($entry[$key] == $value)
				unset($data[$i]);
		}
		
		return $data;
	}
	
	/**
	 * 
	 * @return void
	 */
	private function _showCustomError($msg)
	{
		$html = new Rajax_HTML(array(
			'error' => '404',
			'message' => $msg
		));
		
		if($this->_customErrorPage != '')
			print $msg;
		else
			$html->getTemplate($this->_customErrorPage, $html);
	}
	
	/**
	 * Generates a sql string for getting pages in a category
	 * 
	 * @return string
	 */
	private function _getPagesSQL($result,$multiplier)
	{
		if(empty($result))
			return $result;
			
		$getPostQuery = "SELECT * FROM " . $this->_tableSuffix . "posts WHERE ID IN ("; 
		foreach($result as $post)
		{
			$getPostQuery .= $post['object_id'] . ',';
		}
		
		$start = ($multiplier * $this->_maxPostsEachCategory) - $this->_maxPostsEachCategory;
		$each = $this->_maxPostsEachCategory;
		
		if($multiplier != 'none')
			$getPostQuery .= ") AND post_status LIKE 'publish' ORDER BY post_date DESC LIMIT " 
					  .  $start . "," . $each;
		else
			$getPostQuery .= ") AND post_status LIKE 'publish' ORDER BY post_date DESC ";
					
		return str_replace(',)',')',$getPostQuery);
	}
	
	
	/**
	 * Get all categories from wordpress db
	 * 
	 * @return void
	 */
	public function getCategories()
	{
		$query = "SELECT * FROM `" . $this->_tableSuffix . "terms`";
		
		$result = $this->db->fetchAll($query);
		$result = $this->_excludeEntries($result,'name','Blogroll');

		$isOddEven = preg_match('#odd|even#i',Rajax_Application::$request->options);

		foreach($result as $key => $row)
		{
			if(!$this->_hasPosts($result[$key]['name']))
			{
				$query = "SELECT *  FROM `" . $this->_tableSuffix . "links` WHERE `link_name` LIKE '" . $result[$key]['name'] . "'";
				$sql = $this->db->fetchRow($query);
				if(is_array($sql)) 
				{
					if(strtolower($sql['link_name']) == strtolower($result[$key]['name']))
					{
						$result[$key]['slug'] = $sql['link_url'];
					}
				}
				else
				{
					unset($result[$key]);
				}
			}
		}

		if(!$this->output($result))
		{
			print $this->_noSite;
		}
		
	}

	/**
	 * Get all pages/subpages from wordpress db
	 * 
	 * @return void
	 */
	public function getPages()
	{
		$query = "SELECT * FROM `" . $this->_tableSuffix . "posts` 
				  WHERE `post_type` LIKE 'page' AND post_status LIKE 'publish'";
				  
		$result = $this->db->fetchAll($query);
		
		$isOddEven = preg_match('#odd|even#i',Rajax_Application::$request->options);
		
		if(count($result) != 0) 
		{
			if(preg_match('#xml|json#',Rajax_Application::$request->output))
			{
				if(!$this->output($result))
				{
					$this->_showCustomError($this->_noSite);
				}
				return;
			}
			
			//////////////////////// WP Event - Get : Subpages //////////////////////////////////////
			
			if($this->options['_type'] == 'wp' && $this->options['get'] == 'subpages')
			{
				$subPagesHtml = '';
				
				$subPagesSubList = array();
				
				foreach($result as $page)
				{
					// Check if page == extern link (from getCategories function)
					$query = "SELECT *  FROM `" . $this->_tableSuffix . "links` WHERE `link_name` LIKE '" . $page['post_title'] . "'";
					$sql = $this->db->fetchRow($query);
					if(is_array($sql)) 
					{
						if(strtolower($sql['link_name']) == strtolower($page['post_title']))
						{
							$page['slug'] = $sql['link_url'];
						}
					}
					////
					if(!preg_match('#^_[\w]+#i',$page['post_title']))
					{
						$subPageQuery = "SELECT * FROM " . $this->_tableSuffix . "posts WHERE post_parent =" . $page ['ID'] . " AND post_type LIKE 'page' AND post_title NOT LIKE '" . $page['post_title'] . "' AND post_status LIKE 'publish'";
	
						$href = (isset($page['slug'])) ? $page['slug'] : 'page/' . $page['post_title']; 
	
						$subpageQueryResult = $this->db->fetchAll($subPageQuery);
						if(!in_array($page['post_title'],$subPagesSubList))
						{
							$subPagesHtml .= '<li>';
							
							$subPagesHtml .= '<a href="' . $href . '">'  . $page['post_title'] . '</a>';
		
							if(count($subpageQueryResult != 0))
							{
								$subPagesHtml .= '<ul>';
								
								foreach($subpageQueryResult as $subPage)
								{
									if(!preg_match('#^_[\w]+#i',$page['post_title']))
									{
										$subPagesHtml .= '<li><a href="' . $href . '">'  . $subPage['post_title'] . '</a></li>';
										$subPagesSubList[] = $subPage['post_title'];
									}
								}
								
								$subPagesHtml .= '</ul>';
							}
							
							$subPagesHtml .= '</li>';
						}
					}
				}
				
				print str_replace('<ul></ul>','',$subPagesHtml);
				return;
			}
			
			////////////////////////////////////////////////////////////////////////////////////////
			
			if(Rajax_Application::$request->output == 'html' && $isOddEven)
			{
				if(!$this->output($result))
				{
					$this->_showCustomError($this->_noSite);
				}
				return;
			}
			
			foreach($result as $post)
			{
				if(!$this->output($post))
				{
					$this->_showCustomError($this->_noSite);
					return;
				}
			}
		}
		else
		{
			print Rajax_Application::error404();
		}
	}
	
	/**
	 * Get a specific page from wordpress db
	 * 
	 * @return void
	 */
	public function getPageByName()
	{
		$name =$this->fparams[1];

		$query = "SELECT * FROM `" . $this->_tableSuffix . "posts` 
				  WHERE `post_type` LIKE 'page' AND post_title LIKE '" . $name . "'";
				  
		$result = $this->db->fetchAll($query);

		if(count($result) != 0) 
		{
			if(!$this->output($result))
			{
				$this->_showCustomError($this->_noSiteFound);
				return;
			}
		}
		else
		{
			print Rajax_Application::error404();
		}
	}
	
	/**
	 * Get all posts in a specific category
	 * 
	 * @return void
	 */
	public function getPostsByCategory()
	{
		$catName =$this->fparams[0];
		
		$multiplier = (isset($this->fparams[1]) && $this->fparams[1] != 0) ? $this->fparams[1] : 1;
		
		$query = "SELECT object_id FROM " . $this->_tableSuffix . "term_relationships WHERE term_taxonomy_id=
				  (SELECT term_id FROM " . $this->_tableSuffix . "terms WHERE slug like '" . $catName . "')";
		$result = $this->db->fetchAll($query);

		$siteNumbers = '';
		
		if(count($result) != 0) 
		{
			$getPostQuery = $this->_getPagesSQL($result, $multiplier);

			$posts = $this->db->fetchAll(str_replace(',)',')',$getPostQuery));
				
			$countedRows = explode('LIMIT',str_replace('*','count(*)',str_replace(',)',')',$getPostQuery)));

			$countedRows = $this->db->fetchAll($countedRows[0]);
			
			if(preg_match('#xml|json#',Rajax_Application::$request->output))
			{
				$posts[count($posts)]['rwp_sites'] = ceil($countedRows[0]['count(*)'] / $this->_maxPostsEachCategory);
				if(!$this->output($posts))
				{
					$this->_showCustomError($this->_noCat);
				}
				return;
			}
			
			if(!$this->output($posts))
			{
				$this->_showCustomError($this->_noCat);
				return;
			}

			for($i = 1; $i <= ceil($countedRows[0]['count(*)'] / $this->_maxPostsEachCategory); ++$i)
			{
				$siteNumbers .= '<li><a href="#!/' . $catName . '/' . $i . '">' . $i . '</a></li>';
			}	
			print '<ul class="rwp_sites">' . $siteNumbers . '</ul>';
			
		}
		else
		{
			print Rajax_Application::error404();
		}

	}

	/**
	 * Setup
	 * 
	 * @return void
	 */
	public function setupOptions($_tableSuffix,$_maxPostsEachCategory,$_customErrorPage)
	{
		$this->_tableSuffix = $_tableSuffix;
		$this->_maxPostsEachCategory = $_maxPostsEachCategory;
		$this->_customErrorPage = $_customErrorPage;
	}
}