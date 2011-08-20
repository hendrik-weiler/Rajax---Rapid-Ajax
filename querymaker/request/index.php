<?php	

	$path = './../';
	while(!realpath($path . 'app'))
		$path .= '../';
	
	$path = realpath($path);
	
	require_once $path . '/app/iniApp.php';
	
	/* Setup and Start Rajax */
	$rajax = new Rajax_Application();
	$rajax->start();

	
