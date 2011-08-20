<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Rajax Query Maker</title>
        <link rel="stylesheet" href="css/style.css" />
        <script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.0.6/modernizr.min.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
		<script src=" https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>

		<!-- <script type="text/javascript" src="https://getfirebug.com/firebug-lite.js"></script> -->
		<script>
		RLoad = {};
		RLoad.PreloaderSrc = 'images/preloader.gif';
		RLoad.Scripts = [
		'js/main.js'
		];
		</script>
		<script src="js/rajax/Rajax.Autoloader.js"></script>
		<script src="js/autocomplete.js"></script>
    </head>
    <body>
		<div id="container">
			<h1>Rajax Query Maker</h1>
		<nav>
			Examples:
	        <ul>
	        	<li>
	        		<a href="example/request/template">Template Request</a>
	        	</li>
	        	<li>
	        		<a href="example/request/oddEven">OddEven Request</a>
	        	</li>
	        	<li>
	        		<a href="example/request/oddEvenTemplate">OddEven Request with Templates</a>
	        	</li>
	        </ul>
		</nav>
		<div class="required">
			<fieldset>
				<legend>Method</legend>
				<label>rGet</label>
				<input name="0" class="method" type="radio" value="rGet" />
				<label>rPut</label>
				<input name="0" class="method" type="radio" value="rPut" />
				<label>rAjax</label>
				<input name="0" class="method" type="radio" value="rAjax" />
			</fieldset>
			<fieldset>
				<legend>Request goal</legend>
				<label>Selector</label>
				<input class="requestgoal" type="text" />
				<label>Classname</label>
				<input class="requestgoal" type="text" />
				<label>Method</label>
				<input class="requestgoal" type="text" />
				<label>Output</label>
				<select class="requestgoal">
					<option value="html">HTML</option>
					<option value="xml">XML</option>
					<option value="json">JSON</option>
				</select>
				<label>Options</label>
				<input class="requestgoal" type="text" />
				<label>Params</label>
				<input class="requestgoal" type="text" />
			</fieldset>
		</div>
		
		<div id="window">
			<fieldset>
				<legend>rGet options</legend>
				<label>Put right into selector</label>
				<input name="1" class="rgetoptions" type="radio" value="1Args" />
				<br />
				<label>Do something custom if the data is loaded</label>
				<input name="1" class="rgetoptions" type="radio" value="2ArgsFunc" />
				<br />
				<label>Create specific events</label>
				<input name="1" class="rgetoptions" type="radio" value="2ArgsObj" />
				<br />
				<label>Create specific events and do something custom if the data is loaded</label>
				<input name="1" class="rgetoptions" type="radio" value="3Args" />
			</fieldset>
			
			<fieldset>
				<legend>rPut options</legend>
				<dl>
					<dt>Put...</dt>
					<dd>
						<label>..the data into a template</label>
						<input name="2" class="rputoptions" type="radio" value="Put.Template" />
						<br />
						<label>..each data entry into 2 templates in this order: odd,even,odd,even,odd</label>
						<input name="2" class="rputoptions" type="radio" value="Put.OddEvenTemplate" />
						<br />
						<label>..each data entry with a custom function in this order: odd,even,odd,even,odd</label>
						<input name="2" class="rputoptions" type="radio" value="Put.OddEven" />
					</dd>
					<dt>Wordpress...</dt>
					<dd>
						<label>..comments request</label>
						<input name="2" class="rputoptions" type="radio" value="Wordpress.TemplateComments" />
						<label>..loading posts and set rajax links</label>
						<input name="2" class="rputoptions" type="radio" value="Wordpress.TemplatePosts" />
					</dd>
				</dl>
			</fieldset>
			
			<fieldset>
				<legend>rAjax options</legend>
				<label>..before request(if you overwrite "beforeSend" the preloader would disappear)</label>
				<input class="rajaxoptions" type="checkbox" value="beforeStart" />
				<br />
				<label>..before sending</label>
				<input class="rajaxoptions" type="checkbox" value="beforeSend" />
				<br />
				<label>..loading finished</label>
				<input class="rajaxoptions" type="checkbox" value="success" />
			</fieldset>
			<button>Close</button>
		</div>
		
		<input id="generate" type="button" value="Generate" />
		<input id="execute" type="button" value="Execute" />
		
		<br class="clearfix" />
		
		<textarea id="request"></textarea>		
		<div id="output"></div>
		
        </div>
        
        
    </body>
</html>	