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
	
	var Preloader = $('<img alt="Preloader" src="' + RLoad.PreloaderSrc + '" />');
	
	$.fn.rGet = function(url,options){
		var url = url;
		
		var callback;
		
		switch(arguments.length)
		{
			case 1:
				callback = function (data) {
					$(this[0]).html(data);
				}
			break;
			case 2:
				if(typeof options == 'function') {
					callback = options;
				} else {
					url += '|' + options.params;
				}
			break;
			case 3:
				callback = arguments[2];
				url += '|' + options.params;
			break;
		}
		
		if(options.params)
			url = url.replace('|' + options.params + '|' + options.params,'|' + options.params);
		
		var settings = {
			success : function(data) {
				$(Preloader).remove();
				callback(data);
				if(options.afterSuccess)
					options.afterSuccess(data);
			},
			beforeSend : function () {
				$(this[0]).prepend(Preloader);
			}
		}
		
		$.extend(settings,options);

		$.rAjax('./request/' + url,settings);
	}
	
	$.rAjax = function(url,options){
		if(options.beforeStart)
			options.beforeStart();

		url = './request/' + url;
		options.url = url.replace('./request/./request/','./request/');

		$.ajax(options);
	}
	
	$.fn.rPut = function (type,url,params) {
			
		var siteParam = (params.params) ? '|' + params.params : '';
		
		var selector = this[0];
		
		$(selector).html('');
		
		switch(type)
		{
			// PUT IDS
			case 1:
				$(selector).rGet(url + '/html/template:file=' + params.file + siteParam, params, putData);
			break;
			case 2:
				$(selector).rGet(url + '/html/template:odd=' + params.odd + ';even=' + params.even + ';' + siteParam, params, putData);
			break;
			case 3:
				$(selector).rGet(url + '/json/' + siteParam,params, putJSONData);
			break;
			// WORDPRESS IDS
			case 4:
				$(selector).rGet(url + '/html/comments:tmpl_page=' + params.tmpl_page + ';tmpl_comment=' + params.tmpl_comment + ';tmpl_form=' + params.tmpl_form + ';' + siteParam, params, putData);
			break;
			case 5:
				$(selector).rGet(url + '/html/template:file=' + params.file + siteParam,params, function(data) {
				  $(selector).html(data);
				  $(params.linkSelector).rajaxNavi({
				  	disableAutoload : true
				  });
				});
			break;
		}
		function putData(data) {
			$(selector).html(data);
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