/*
 * Rajax - Rapid Ajax
 * Copyright (C) 2011  Hendrik Weiler
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */
(function($) {
	$.rajaxEvents = {};
	
	$.fn.rajaxNavi = function(options) {

		var settings = {
			bashFormat : '#!/',
			disableAutoload : false
		};
		
		if(!options)
			options = {};
		
		$.extend(settings,options);
		
		var hashLink = window.location.hash.replace('#!/','');
		var object = ($('a[href*="' + hashLink + '"]')) 
					? $('a[href*="' + hashLink.replace(/\_/g,'/').eq(0)
					+ '"]') : $('a[href*="' + hashLink + '"]').eq(0);

		if(object.length != 0) {
			object.parameter = $(object).attr('href');
			object.aParameter = object.parameter.split('/');
		}

		if(!options.disableAutoload)
		{
			if(window.location.hash == '' && $.rajaxEvents['onload']) {
				$.rajaxEvents['onload']();
			} else if(typeof $.rajaxEvents[hashLink.replace(/\//g,'_')] == 'function') {
				$.rajaxEvents['onchange'](object);
				$.rajaxEvents[hashLink.replace(/\//g,'_')]();
			} else if($.rajaxEvents['onchange']) {
				object.parameter = hashLink;
				object.aParameter = object.parameter.split('/');
				$.rajaxEvents['onchange'](object);
			} else {
				$.rajaxEvents['onerror']();
			}
		}
		
		return this.each(function() {

			if(!$(this).is('a'))
				return false;
			
			var href = $(this).attr('href');

			if(!/(http|https):\/\/(.*).[a-museum]/.test(href)) {
				$(this).attr('href',settings.bashFormat + href.replace(/ /g,'_'));
				$(this).bind('click',function() {
					$.rajaxCall(this);
				});
			}
		});
	}
	
	$.rajaxCall = function(evt) 
	{
		evt.parameter = $(evt).attr('href').split('#!/')[1];
		evt.aParameter = evt.parameter.split('/');
		
		if($.rajaxEvents[evt.parameter.replace(/\//g,'_')]) {
			$.rajaxEvents['onchange'](evt);
			$.rajaxEvents[evt.parameter.replace(/\//g,'_')](evt);
		} else if ($.rajaxEvents['onchange'])
			$.rajaxEvents['onchange'](evt);
		else
			$.rajaxEvents['onerror']();
		
	};
})(jQuery);