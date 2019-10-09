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
RLoad.LoadCount = 0;

RLoad.Scripts.push('js/rajax/jquery.rajax.navi.js');
RLoad.Scripts.push('js/rajax/jquery.rajax.ajax.js');
RLoad.Scripts.push('js/rajax/jquery.rajax.transition.js');
RLoad.Scripts.push('js/rajax/Rajax.Type.Identifier.js');
RLoad.Scripts = RLoad.Scripts.reverse();

$(function() {
	//$.ajaxSetup({ cache: true });
	
	RLoad.PreloadView = $('<div style="position:absolute; top:7px; left:7px; border:1px solid black; background:white; padding:3px; font-size:10pt; font-family:\'courier\'" />').appendTo($('body'));
	
	function autoloadScripts(url)
	{

		if(RLoad.LoadCount <= RLoad.Scripts.length - 1)
		{
			$.ajax({
				url: url,
				dataType: 'script',
				success: function() {	
					$(RLoad.PreloadView).html('Loading: ' 
					+ Math.round(((RLoad.LoadCount) / (RLoad.Scripts.length)) * 100) 
					+ '% / 100%');
					autoloadScripts(RLoad.Scripts[RLoad.LoadCount]);
				},
				error : function() {
					$('body').append('<br />File in ' + url + ' could not be loaded.');
				}
			});
			RLoad.LoadCount += 1;
		}
		else
		{
			$(RLoad.PreloadView).remove();
		}
	}
	
	autoloadScripts(RLoad.Scripts[0]);
});