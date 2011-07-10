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
/**
 * Rajax_Controller - Rapid Ajax Controller Class
 * 
 * Controlls ajax output
 * 
 * @package Rajax
 * @author Hendrik Weiler
 * @since 0.05
 */
(function($){
	
	var Preloader = $('<img alt="Preloader" src="' + RLoad.PreloaderSrc + '" />');
	
	$.fn.rGet = function(url,callback){
		
		var url = url;
		var callback = callback;
		if(arguments.length == 3)
		{
			var params = arguments[1].parameter;
			callback = arguments[2];
		}

		return this.each(function(key,value) {
			var options = {
				success : function(data) {
					$(Preloader).remove();
					callback(data);
				},
				beforeSend : function() {
					$(value).prepend(Preloader);
				}
			};

			var type = typeof(callback);
			if(type.toLowerCase() == 'function') {
				$.rAjax(url,options);
			} else if(params) {
				url += '|' + params;
				$.rAjax('./request/' + url,options);
			} else {
				return false;
			}
		});
	}
	
	$.rAjax = function(url,options){
		url = './request/' + url;
		options.url = url;
		$.ajax(options);
	}
	
	$.fn.rPut = function (type,url,params) {
		return this.each(function(key,value) {
			
			var siteParam = (params.params) ? '|' + params.params : '';
			
			switch(type)
			{
				case 1:
					$(value).rGet(url + '/html/template:file=' + params.file + siteParam, (params.success) ? params.success : putData);
				break;
				case 2:
					$(value).rGet(url + '/html/template:odd=' + params.odd + ';even=' + params.even + ';' + siteParam, putData);
				break;
				case 3:
					$(value).rGet(url + '/json/' + siteParam, putJSONData);
				break;
			}
			function putData(data) {
				$(value).html(data);
			}
			
			function putJSONData(data)
			{
				var mode = 'odd';
				$.each(data,function(key,value) {
					params[mode](value);
					if(mode == 'odd')
						mode = 'even';
					else
						mode = 'odd';	
				});
			}	
		});
	}
	
	$.fn.rListener = function(search,callback) {
		return this.each(function(key,value) {
			
			if(!$(value).find(search).is(search))
			{
				callback();
			}
			
		});
	}
})(jQuery);	