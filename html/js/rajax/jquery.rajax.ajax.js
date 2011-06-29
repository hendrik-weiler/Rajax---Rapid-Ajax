(function($){
	$.rGet = function(url,callback){
		var type = typeof(arguments[1]);
		if(type.toLowerCase() == 'function') {
			$.get('./request/' + url,callback);
		} else if(arguments.length == 3) {
			url += '|' + arguments[1].parameter;
			$.get('./request/' + url,arguments[2]);
		} else {
			return false;
		}
	}
})(jQuery);	