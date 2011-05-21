(function($) {
	$.fn.rajaxNavi = function(options) {
		
		var settings = {
			bashFormat : '#!/'
		};
		
		return this.each(function() {
			
			if(options) {
				$.extend(settings,options);
			}
			
			if(!$(this).is('a'))
				return false;
			
			var href = $(this).attr('href');
			
			$(this).attr('href',settings.bashFormat + href.replace(' ','_'));
		});
	}
})(jQuery);