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
	$.fn.rajaxWordpressAddComment = function(controller,errormessage) {
		
		var preloader = $('<img alt="preloader" src="' + RLoad.PreloaderSrc + '" />').css({
			position : 'absolute',
			top: '50%',
			left: '50%'
		});
		
		this.each(function(value) {
			
			if (!/([\w]+){4,}/.test($(this).find('input[name=comment_author]').val()))
			{
				if (!/[\w]+@[\w]+\.[\w]+/.test($(this).find('input[name=comment_author_email]').val()))
				{
					$(this).find('input[name=comment_author]').effect("shake", {}, 200);
					$(this).find('input[name=comment_author_email]').effect("shake", {}, 200);
					return;
				}
			}
			
			$.ajax({
			  url: "./request/" + controller + "_addComment/html/",
			  beforeSend: function() {
			  	$(value).appendTo('body');
			  },
			  type : 'POST',
			  data : $(this).serialize(),
			  context: document.body,
			  success: function(data){
			  	
			  	$(preloader).remove();
			  	$(value).append(data);
			  	if(data == 'true')
			  	{
			  		window.location.reload(true);
			  	}
			  	else
			  	{
			  		$(value).append('<div id="rajaxCommentError">' + errormessage + '</div>');
			  	}
			  }
			});
		});
	};
})(jQuery);