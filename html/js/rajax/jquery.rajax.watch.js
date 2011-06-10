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
	$.fn.watch = function(events,start) {
	
	var save;	
	
	var check = window.setInterval(detectChange,100);

	if(window.location.hash == '') {
		window.location.href += '#!/' + start;
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
			object.parameter = window.location.hash.replace('#!/','');
			
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