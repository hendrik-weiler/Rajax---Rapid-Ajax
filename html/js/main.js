$(function(){
	//Rajax Gen - Navigation
	$('nav ul li a').rajaxNavi();
	//---------------------------
	
	//Rajax Gen - Events
	$().watch({
		onload : function() {
			$('#content').hide().fadeIn(1000);
			this.bg = $('#content').css('backgroundColor');
		},
		onchange : function() {
			$('#content').html('').animate({
				'backgroundColor' : this.bg
			},1000);
		},
		onerror : function() {
			$.get('./request/error/html/template=error',function(data) {
				$('#content').html(data).slideDown('fast').animate({
					'backgroundColor' : 'red'
				},2000);
			});
		},
		home : function(e) {
			$.get('./request/content_getArticles/html/article>hgroup>h3>$title<<p>$text',function(data) {
				$('#content').html(data.replace('\r','<br />'));
				if(!$('#content').is(':animated')) {
					$('#content').hide().fadeIn(1000);
				}
			});
		},
		reference : function(e) {
			$.getJSON('./request/content_getClasses/json/',function(data) {
				var list = $('<ul></ul>').appendTo('#content');
				$.each(data,function(key,value) {
					var li = $('<li><h4>' + value.name + '</h4></li>').appendTo(list);
					
					$.post('./request/content_getFunctions/json/',{classname : value.name},function(data) {
						var funcUl = $('<ul></ul>').appendTo(li);
						$.each(data,function(key,value) {
							var funcLi = $('<li><h5>' + value.name + '</h5></li>').appendTo(funcUl);
							$(funcLi).append('<p>' + value.description.replace('\n','<br />') + '</p>');
						});
						$(funcUl).hide();
					});
					
					$(li).click(function() {
						$(this).find('ul').toggle('slow');
					});
					$(li).hide().slideDown('slow');
				});
			});
		},
		pictures : function(e) {
			$.get('./request/content_getPictures/html/article>hgroup>h3>$title<h6>$text<<img[src=$picture]',function(data) {
				$('#content').html(data.replace('\r','<br />'));
			});
		},
		repo : function() {
			window.location.href = 'https://github.com/diddlside/Rajax---Rapid-Ajax';
		},
		imprint : function() {
			window.location.href = 'http://dev.rpg-stars.de/impressum/';
		}
	},'home');
	//---------------------------
});