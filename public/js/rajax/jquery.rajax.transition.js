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
(function($){
	$.fn.rTrans = function(type,evt){
		return this.each(function(key,self) {
			switch(type)
			{
				case 1:
				break;
				case 2:
				switch(evt)
				{
					case 'error':
						// none
					break;
					case 'change':
						if(!isAnimated())
							$(self).fadeOut(1000);
					break;
					case 'load':
						if(!isAnimated())
							$(self).hide().fadeIn(1000);
					break;
					case 'success':
						if(!isAnimated())
							$(self).hide().fadeIn(1000);
					break;
				}	
				break;
			}
			
			function isAnimated()
			{
				return $(self).is(':animated');
			}
		});
	}
})(jQuery);	