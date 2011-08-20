<?php
	/* Zend Loading Related Stuff */
	defined('APPLICATION_ENV')
	    || define('APPLICATION_ENV', (getenv('APPLICATION_ENV') ? getenv('APPLICATION_ENV') : 'production'));
	
	// Ensure library/ is on include_path
	set_include_path(implode(PATH_SEPARATOR, array(
	    realpath($path . '/app/lib/'),
	    get_include_path()
	)));
	
	require_once 'Zend/Loader/Autoloader.php';
	$zendLibrary = Zend_Loader_Autoloader::getInstance();
	
	//$zendLibrary->suppressNotFoundWarnings(true);
	$zendLibrary->setFallbackAutoloader(true);
	
	
	/* Loads non-zend optimized stuff */
	require_once $path . '/app/lib/Class_Auto_Load.php';
	new Class_Auto_Load($path . '/app/lib/ZenPHP');
	new Class_Auto_Load($path . '/app/module/');
	new Class_Auto_Load($path . '/app/controller/');