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
	 * Define if comments needs apporval or not
	 * @var bool
	 */
	public $commentsNeedApproval = true;
	
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
	 * Get all approved comments to the post/page
	 * @return mixed
	 */
	private function _getComments($post_id)
	{
		$query = "SELECT * FROM `" . $this->_tableSuffix 
				. "comments` WHERE `comment_approved` LIKE '1' AND `comment_post_ID` =" . $post_id;
				  
		$result = $this->db->fetchAll($query);
		
		return $result;
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
	 * Contains the function for showing comments or not
	 * @return void
	 */
	private function _tmplComments($id,$result)
	{
		if($this->options['_type'] == 'comments' 
			&& isset($this->options['tmpl_page'])
			&& isset($this->options['tmpl_comment']))
		{
			$html = new Rajax_HTML('');
			$html->getTemplate($this->options['tmpl_page'],$result[$id]);
			
			$comments = $this->_getComments($result[$id]['ID']);
			
			if(!empty($comments))
			{
				foreach($comments as $comment)
				{
					$html->getTemplate($this->options['tmpl_comment'],$comment);
				}	
			}
				if($result[0]['comment_status'] == 'open')
					$html->getTemplate($this->options['tmpl_form'], $result[0]);
			return true;
		}
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
	
	private function _getSubPagesRecursive($page)
	{
		if(!preg_match('#^_[\w]+#i',$page['post_title']))
		{
			$html = new Rajax_HTML('');
			
			$subPageQuery = "SELECT * FROM " . $this->_tableSuffix . "posts WHERE post_parent =" . $page ['ID'] . " AND post_type LIKE 'page' AND post_title NOT LIKE '" . $page['post_title'] . "' AND post_status LIKE 'publish'";
			
			$subpageQueryResult = $this->db->fetchAll($subPageQuery);
	
			if(is_array($subpageQueryResult))
			{
				print '<ul>';
				
				foreach($subpageQueryResult as $subPage)
				{
					if(!preg_match('#^_[\w]+#i',$subPage['post_title']))
					{
						$subPage = $this->_checkNavForLink($subPage);
						
						print '<li>';
						
						$html->getTemplate($this->options['file'], $subPage);
						$this->_getSubPagesRecursive($subPage);
						
						print '</li>';
					}
				}
				
				print '</ul>';
			}
		}
	}
	
	/**
	 * Checks if the subpage does linking to somewhere or not
	 * @param array $subPage
	 * @return array
	 */
	private function _checkNavForLink($subPage)
	{
		// Check if page == extern link (from getCategories function)
		$query = "SELECT *  FROM `" . $this->_tableSuffix . "links` WHERE `link_name` LIKE '" . $subPage['post_title'] . "'";
		$sql = $this->db->fetchRow($query);
		if(is_array($sql)) 
		{
			if(strtolower($sql['link_name']) == strtolower($subPage['post_title']))
			{
				$subPage['slug'] = $sql['link_url'];
			}
		}
		return $subPage;
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
				$query = "SELECT * FROM `" . $this->_tableSuffix . "posts` 
						  WHERE `post_type` LIKE 'page' AND post_status LIKE 'publish' AND post_parent =0";
						  
				$result = $this->db->fetchAll($query);
				
				$subPagesSubList = array();
				
				$html = new Rajax_HTML('');
				
				foreach($result as $page)
				{
					$page['slug'] = (isset($page['slug'])) ? $page['slug'] : 'page/' . $page['post_title']; 
					
					print '<li>';
					
					$html->getTemplate($this->options['file'], $page);
					
					$page = $this->_checkNavForLink($page);

					$this->_getSubPagesRecursive($page);
					
					print '</li>';
				}
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

		if(!in_array($this->fparams[0],array('page','post')))
			print Rajax_Application::error404();

		$query = "SELECT * FROM `" . $this->_tableSuffix . "posts` 
				  WHERE `post_type` LIKE '" . $this->fparams[0] . "' AND post_name LIKE '" . $name . "'";
				  
		$result = $this->db->fetchAll($query);

		$html = new Rajax_HTML('');
		
		if(count($result) != 0) 
		{
			
			if($this->_tmplComments(0,$result)) {
				return;
			}
				
			
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
	 * Adds a comment in db
	 * @return void
	 */
	public function addComment()
	{
		if (preg_match('/([\w]+){4,}/',$_POST['comment_author'])
			&& preg_match('/[\w]+@[\w]+\.[\w]+/',$_POST['comment_author_email'])) 	
		{
			extract($_POST);
			
			$approval = ($this->commentsNeedApproval) ? 0 : 1;
			
			$query = "INSERT INTO  `" . $this->_tableSuffix . "comments` (
				`comment_post_ID` ,
				`comment_author` ,
				`comment_author_email` ,
				`comment_author_url` ,
				`comment_author_IP` ,
				`comment_date` ,
				`comment_date_gmt` ,
				`comment_content` ,
				`comment_karma` ,
				`comment_approved` ,
				`comment_agent` ,
				`comment_type` ,
				`comment_parent` ,
				`user_id`
				)
				VALUES (
				:post_id ,  :comment_author ,  :comment_author_email ,  :comment_author_url ,  
						:ip ,  '" . date('Y-m-d H:i:s',time()) . "',  '" . date('Y-m-d H:i:s',time()) . "',  :comment_content ,  '0',  '" . $approval . "',  '',  '',  '0',  '0'
				)";
			
			$this->_params = array(
			            ':post_id' => $comment_post_ID,
			            ':comment_author' => $comment_author,
			            ':comment_author_email' => $comment_author_email,
			            ':comment_author_url' => $comment_author_url,
			            ':ip' => $_SERVER['REMOTE_ADDR'],
			            ':comment_content' => $comment_content
			);
			
			$this->_query = $this->db->prepare($query);
		    $this->_query->execute($this->_params);
					
			$this->db->lastInsertId();
			
			print ($this->commentsNeedApproval) ? 'true' : 'reload';
		}
		else
		{
			print 'false';
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