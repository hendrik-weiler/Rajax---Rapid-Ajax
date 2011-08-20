$(function() {
	var classes = [
		'wordpress'
	]
	
	var methods = {
		wordpress : [
			'getCategories',
			'getPages',
			'getPageByName',
			'getPostsByCategory',
			'addComment'
		]
	}
	// ---------------------------------------
	$( "input.requestgoal" ).eq(1).autocomplete({
		source: classes,
		autoFocus: true,
		change : function(event,ui) {
			$( "input.requestgoal" ).eq(2).autocomplete({
				source : methods[$('input.requestgoal').eq(1).val()]
			});
		}
	});
});
