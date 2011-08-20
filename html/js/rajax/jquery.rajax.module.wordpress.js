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
	$.fn.rajaxWordpressAddComment = function(controller,errormessage,successmessage) {
		
		var preloader = $('<img alt="preloader" src="' + RLoad.PreloaderSrc + '" />').css({
			position : 'absolute',
			right: '50%',
			bottom: '10%'
		});
		
		this.each(function(key,value) {

			var comment_author = /([\w]+){4,}/;
			var comment_author_email = /[\w]+@[\w]+\.[\w]+/;
			
			if (!comment_author.test($(this).find('input[name=comment_author]').val())
				|| !comment_author_email.test($(this).find('input[name=comment_author_email]').val()))
			{
				$(this).find('input[name=comment_author]').effect("shake", {}, 200);
				$(this).find('input[name=comment_author_email]').effect("shake", {}, 200);
				return;
			}
			
			$.ajax({
			  url: "./request/" + controller + "_addComment/html/",
			  beforeSend: function() {
			  	$(preloader).appendTo('body');
			  },
			  type : 'POST',
			  data : $(this).serialize(),
			  context: document.body,
			  success: function(data){
			  	
			  	$(preloader).remove();
			  	
			  	if(data == 'true')
			  	{
			  		$('<div id="rajaxCommentSuccess">' + successmessage + '</div>').hide().prependTo(value).fadeIn(1000).delay(1000).fadeOut(1000);
			  		$(value).find('input').val('');
			  		$(value).find('textarea').val('');
			  	}
			  	else if(data == 'reload')
			  	{
			  		window.location.reload(true);
			  	}
			  	else
			  	{
			  		$('<div id="rajaxCommentError">' + errormessage + '</div>').hide().prependTo(value).fadeIn(1000).delay(1000).fadeOut(1000);
			  	}
			  }
			});
		});
	};
})(jQuery);