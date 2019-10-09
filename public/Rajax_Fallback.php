<?php 
	if(isset($_GET['mode']) && $_GET['mode'] == 'nojs')
	{
		$path = './../';
		while(!realpath($path . 'app'))
			$path .= '../';
		
		$path = realpath($path);
		require_once $path . '/app/iniApp.php';
		
		//$parser = new Rajax_Fallback_Parser('js/main.js');
		
		Rajax_Application::$fallback = true;
		
		$fallback = new Rajax_Fallback_Fallback($path,$events,$rootFolder);

	}
	else
	{
		$split = explode('/',$_SERVER['PHP_SELF']);
		unset($split[count($split)-1]);
		$redirect =  $_SERVER['SERVER_NAME'] . implode('/',$split) . '/nojs'; 
		print '<noscript>
				<meta http-equiv="refresh" content="0; url=http://' . $redirect . '"> 
			  </noscript>';
	}	
?>
