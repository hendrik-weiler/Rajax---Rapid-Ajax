(function($) {
	$.fn.watch = function(events,start) {
	
	var save;	
	
	var check = window.setInterval(detectChange,100);

	if(window.location.hash == '') {
		var object = $('a[href*="#!/' + start + '"]');
		eval('events.' + start + '(object)');
	}
	
	if(events.onload)
	{
		events.onload();
	}
	
	function detectChange()
	{
		if(save != window.location.hash) {
			
			if(events.onchange)
			{
				events.onchange();
			}
			
			var object = $('a[href*="' + window.location.hash + '"]');
			
			if(eval('events.' + getExecutionName(window.location.hash))) {
				eval('events.' + getExecutionName(window.location.hash) + '(object)');
			} else {
				if(events.onerror)
				{
					events.onerror();
				}
			}
			save = window.location.hash;
		}
	}
	
	function getExecutionName(hash)
	{
		var split = hash.split('/');
		
		return split[1];
	}
		
}
})(jQuery);