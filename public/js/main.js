$(function() {
	//--Fallback:rajaxEvents start
	$.rajaxEvents = {
		//--Event:Start
		onload : function() {
			$('#content').rPut(Wordpress.TemplatePosts,'wp_getPostsByCategory',{
				file : 'posts',
				params : 'notice',
				linkSelector : '#content article h3 a'
			});
		},//--Event:End
		//--Event:Start
		onchange : function(e) {
			if(e.aParameter[0] != 'page' && e.aParameter[0] != 'post')
			{
				$('#content').rPut(Wordpress.TemplatePosts,'wp_getPostsByCategory',{
					file : 'posts',
					params : e.parameter,
					linkSelector : '#content article h3 a'
				});
			}
			else
			{
				$('#content').rPut(Wordpress.TemplateComments,'wp_getPageByName',{
					tmpl_page : 'pages',
					tmpl_comment : 'comment',
					tmpl_form : 'commentForm',
					params : e.parameter,
					afterSuccess : function() {
						if(e.aParameter[1] == 'impressum')
							$('#rajaxCommentForm').hide();
					}
				});
			}
			$('body').scrollTop(0);
		}//--Event:End
	};
	//--Fallback:rajaxEvents end
	
	//--Fallback:rajaxNavi start
	$('nav ul').rGet('wp_getCategories/html/template:file=category',function(data) {
		$('nav ul').html(data);
		$('nav ul').rGet('wp_getPages/html/wp:get=subpages;file=categoryPages',function(data) {
			$('nav ul').append(data);
			$('nav a').rajaxNavi();
		});
	});
	//--Fallback:rajaxNavi end
});