<!doctype html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
<head>
  <meta charset="utf-8">
  <!-- Use the .htaccess and remove these lines to avoid edge case issues.
       More info: h5bp.com/b/378 -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <title>Rajax Fallback Example</title>
  <meta name="keywords" content="">
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Mobile viewport optimized: j.mp/bplateviewport -->
  <meta name="viewport" content="width=device-width,initial-scale=1">

  <!-- Place favicon.ico and apple-touch-icon.png in the root directory: mathiasbynens.be/notes/touch-icons -->

  <!-- CSS: implied media=all -->
  <!-- CSS concatenated and minified via ant build script-->
  <link rel="stylesheet" href="css/skeleton.css">
  <link rel="stylesheet" href="css/chosen.css">
  <link rel="stylesheet" href="css/style.css">
  <!-- end CSS-->

  <!-- More ideas for your <head> here: h5bp.com/d/head-Tips -->

  <!-- Include fallback -->
  <?php 
  	if(preg_match('#(page|post)#',$_SERVER['REQUEST_URI']))
		$onchangeContent = 'wp_getPageByName/html/template:file=pages|e.parameter';
	else
		$onchangeContent = 'wp_getPostsByCategory/html/template:file=posts|e.parameter';
  
  	$events = array(
  		'onload' => array(
  			'nav' => array('wp_getCategories/html/template:file=category','wp_getPages/html/template:file=categoryPages'),
  			'#content' => 'wp_getPostsByCategory/html/template:file=posts|notice'
		),
		'onchange' => array(
			'nav' => array('wp_getCategories/html/template:file=category','wp_getPages/html/template:file=categoryPages'),
			'#content' => $onchangeContent
		),
		'onerror' => array(
			'nav' => array('wp_getCategories/html/template:file=category','wp_getPages/html/template:file=categoryPages'),
			'#content' => 'wp_getPostsByCategory/html/template:file=posts|notice'
		)
	);
	
	$rootFolder = 'fallback/';
	
  	include 'Rajax_Fallback.php'; 
  ?>
  <!-- /Include fallback -->

  <!-- All JavaScript at the bottom, except for Modernizr / Respond.
       Modernizr enables HTML5 elements & feature detects; Respond is a polyfill for min/max-width CSS3 Media Queries
       For optimal performance, use a custom Modernizr build: www.modernizr.com/download/ -->
  <script src="js/libs/modernizr-2.0.6.min.js"></script>

  <!--  Selectivizr to polyfill pseudo selectors in IE6/7/8 -->
  <!--[if (gte IE 6)&(lte IE 8)]>
    <script src="js/libs/selectivizr.js"></script>
  <![endif]-->

</head>

<body>

  <div class="container">
    <header>

    </header>
	<nav>
		<ul>
			<?php print (isset($fallback)) ? $fallback->render('nav') : ''; ?>
		</ul>
	</nav>
    <div id="main" role="main">
		<section id="content">
			<?php print (isset($fallback)) ? $fallback->render('#content') : ''; ?>
		</section>
    </div>

    <footer>

    </footer>
  </div> <!--! end of .container -->


  <!-- JavaScript at the bottom for fast page loading -->

  <!-- Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if offline -->
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
  <script>window.jQuery || document.write('<script src="js/libs/jquery-1.6.2.min.js"><\/script>')</script>


  <!-- scripts concatenated and minified via ant build script-->
  <script defer src="js/libs/jquery.chosen.js"></script>
  <script defer src="js/libs/jquery.polyfill.js"></script>
  <script defer src="js/plugins.js"></script>
  <script defer src="js/script.js"></script>
    <script>
	RLoad = {};
	RLoad.PreloaderSrc = 'img/preloader.gif';
	RLoad.Scripts = [
	'js/main.js'
	];
  </script>
  <script src="js/rajax/Rajax.Autoloader.js"></script>
  <!-- end scripts-->

	
  <!-- Change UA-XXXXX-X to be your site's ID -->
  <script>
    window._gaq = [['_setAccount','UAXXXXXXXX1'],['_trackPageview'],['_trackPageLoadTime']];
    Modernizr.load({
      load: ('https:' == location.protocol ? '//ssl' : '//www') + '.google-analytics.com/ga.js'
    });
  </script>


  <!-- Prompt IE 6 users to install Chrome Frame. Remove this if you want to support IE 6.
       chromium.org/developers/how-tos/chrome-frame-getting-started -->
  <!--[if lt IE 7 ]>
    <script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script>
    <script>window.attachEvent('onload',function(){CFInstall.check({mode:'overlay'})})</script>
  <![endif]-->
  
</body>
</html>
