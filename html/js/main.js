$(function() {
	
	$.rajaxEvents = {
		onload : function() {
			//alert('onload!');
		},
		onerror : function() {
			$('body').append('Errorrrorrorororrorororor');
		},
		page_test : function(e) {
			alert('test');
		},
		henno : function(e) {
			alert('henno');
		},
		dertest : function(e) {
			alert('dertest');
		}
	};
	
	$('ul li a').rajaxNavi();
	$('#container').rPut(Put.Template,'template_getTemplateData',{
		file : 'template'
	});
});