<?php
/**
 * Rajax_Application - Rapid Ajaxing Itself
 * 
 * This class configurate the application
 * and handles execution
 * 
 * @package Rajax
 * @author Hendrik Weiler
 * @since 0.01
 */
class Rajax_Application
{
	
	/**
	 * Contains the configuration from config.ini
	 * @var array
	 */
	static $config;
	
	/**
	 * Contains the path to the application
	 * @var string
	 */
	static $applicationPath;
	
	/**
	 * Contains path to the template folder
	 * 
	 * @var string
	 */
	static $templatePath = '../app/templates/';
	
	/**
	 * Contains path to the cache folder
	 * 
	 * @var string
	 */
	static $cachePath = '../app/cache/';
	
	/**
	 * If the generator class will be used
	 * 
	 * @var bool
	 */
	static $generator = true;
	
	/**
	 * Contains the controller,output,options
	 * (params by ajax call/controller_function/output/options[if html])
	 * 
	 * @var stdClass
	 */
	static $request;
	
	/**
	 * Setup the class
	 */
	public function __construct() 
	{
		self::$applicationPath = realpath('.');
		
		self::$request = new stdClass;
		self::$request->controller = $_GET['controller'];
		self::$request->output = $_GET['output'];
		self::$request->options = $_GET['options'];
	}
	
	/**
	 * Sets custom options to rajax
	 * 
	 * @param array $options
	 */
	public function setOptions(array $options)
	{
		if(isset($options['template']))
			self::$templatePath = $options['template'];
			
		if(isset($options['cache']))
			self::$cachePath = $options['cache'];
			
		if(isset($options['generator']))
			self::$cachePath = $options['generator'];
			
	}
	
	/**
	 * Returns a database instance for use in controller
	 * 
	 * @return Zend_Db_Adapter_Pdo_Mysql
	 */
	public function getDb()
	{
		self::$config = parse_ini_file(self::$applicationPath . '/../../app/config.ini');
		
		$db = new Zend_Db_Adapter_Pdo_Mysql(array(
		    'host'     => self::$config['host'],
		    'username' => self::$config['username'],
		    'password' => self::$config['password'],
		    'dbname'   => self::$config['dbname']
		));
		
		return $db;
	}
	
	/**
	 * Starting rajax
	 */
	public function start()
	{
		if(class_exists('Rajax_Generate'))
		{
			// calling rajax generator and updating main.js if neccessary
		}
		if(!Rajax_Route::Route())
		{
			print json_encode(array(
				'status' => 404, 'message' => Rajax_Route::$errorMessage
			));
			exit;
		}
	}
}