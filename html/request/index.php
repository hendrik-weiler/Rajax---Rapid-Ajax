<?php	
	/* Zend Loading Related Stuff */
	defined('APPLICATION_ENV')
	    || define('APPLICATION_ENV', (getenv('APPLICATION_ENV') ? getenv('APPLICATION_ENV') : 'production'));
	
	// Ensure library/ is on include_path
	set_include_path(implode(PATH_SEPARATOR, array(
	    realpath('../../app/lib/'),
	    get_include_path()
	)));
	
	require_once 'Zend/Loader/Autoloader.php';
	$zendLibrary = Zend_Loader_Autoloader::getInstance();
	
	//$zendLibrary->suppressNotFoundWarnings(true);
	$zendLibrary->setFallbackAutoloader(true);
	
	
	/* Loads non-zend optimized stuff */
	require_once '../../app/lib/Class_Auto_Load.php';
	new Class_Auto_Load('../../app/lib/ZenPHP');
	new Class_Auto_Load('../../app/modul/');
	new Class_Auto_Load('../../app/controller/');
	
	/* Setup and Start Rajax */
	$rajax = new Rajax_Application();
	
	//The Setup-part custom paths if you want to implent it somewhere else
	/*
	$rajax->setOptions(array(
		'template' => 'customPath',
		'cache' => 'cachePath',
	 	'generator' => false
	));
	 */
	$rajax->start();

	//var_dump(Rajax_Application::$request);