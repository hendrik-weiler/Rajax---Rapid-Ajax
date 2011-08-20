$(function() {
	// beginning at 10 are the options for fill in examples
	$.rajaxEvents = {
		onload : function() {
			
		},
		onerror : function() {
			$('body').append('Errorrrorrorororrorororor');
		},
		onchange : function (e) {
			$('ul li a').removeClass('active');
			$(e).addClass('active');
		},
		example_request_template : function(e) {
			fillInExample('#output,template,getTemplateData,html,,',1,[12]);
			generate(e);
			$('#request').val($('#request').val().replace('templateName','template'));
		},
		example_request_oddEvenTemplate : function(e) {
			fillInExample('#output,template,getTemplateData,html,,',1,[13]);
			generate(e);
		},
		example_request_oddEven : function(e) {
			fillInExample('#output,template,getTemplateData,json,,',1,[14]);
			generate(e);
			$('#request').val($('#request').val().replace('//do something 1','$("#output").append("1. " + row.Name + " - " + row.URL + "<br />");'));
			$('#request').val($('#request').val().replace('//do something 2','$("#output").append("2. " + row.Name + " - " + row.URL + "<br />");'));
		}
	};
	
	function generateQuery(selector) {
		var query;
		$.class = $('.requestgoal:eq(1)').val();
		$.method = $('.requestgoal:eq(2)').val();
		$.output = $('.requestgoal:eq(3)').val();
		$.options = $('.requestgoal:eq(4)').val();
		$.params = $('.requestgoal:eq(5)').val();
		$.params = ($.params == '') ? '' : '|' + $.params;
		$.rType = '';

		query = "$('" + selector + "')." + $.jMethod 
		+ "(" + $.rType + "'" + $.class + "_" + ($.method + '/').replace('//','/') + $.output + '/' + $.options + $.params;
		switch($.jMethod)
		{
			case 'rGet':
				switch($('.rgetoptions:checked').val())
				{
					case '1Args':
						query += "');";
					break;
					case '2ArgsFunc':
						query += "',function() {\n\r\t//do something nice here\n\r});";
					break;
					case '2ArgsObj':
						query += "',{\n\r\tafterSuccess : function() {\n\r\t\t//do something after loaded\n\r\t}\n\r});";
					break;
					case '3Args':
						query += "',{\n\r\tafterSuccess : function() {\n\r\t\t//do something after loaded\n\r\t}\n\r},function() {\n\r\t//do something on success here\n\r});";
					break;
				}
			break;
			case 'rPut':
				$.rType = $('.rputoptions:checked').val();
				query = "$('" + selector + "')." + $.jMethod 
				+ "(" + $.rType + ",'" + $.class + "_" + $.method;
				$.params = ($.params == '') ? "e.parameter" : "'" + $.params.replace('|','') + "'";
				switch($.rType)
				{
					case 'Put.Template':
						query += "',{\n\r\tafterSuccess : function() {\n\r\t\t//do something after loaded\n\r\t}," +
						"\r\n\tbeforeStart : function() {\n\r\t\t//do something before request and beforeSend\n\r\t}," +
						"\r\n\tfile : 'templateName'," + 
						"\r\n\tparams : " + $.params
						 + "\n\r});";
					break;
					case 'Put.OddEvenTemplate':
						query += "',{\n\r\tafterSuccess : function() {\n\r\t\t//do something after loaded\n\r\t}," +
						"\r\n\tbeforeStart : function() {\n\r\t\t//do something before request and beforeSend\n\r\t}," +
						"\r\n\todd : 'template1'," +
						"\r\n\teven : 'template2'," +
						"\r\n\tparams : " + $.params
						 + "\n\r});";
					break;
					case 'Put.OddEven':
						query += "',{\n\r\tafterSuccess : function() {\n\r\t\t//do something after loaded\n\r\t}," +
						"\r\n\tbeforeStart : function() {\n\r\t\t//do something before request and beforeSend\n\r\t}," +
						"\r\n\todd : function(row) {\n\r\t\t//do something 1\n\r\t}," +
						"\r\n\teven : function(row) {\n\r\t\t//do something 2\n\r\t}," +
						"\r\n\tparams : " + $.params
						 + "\n\r});";
					break;
					case 'Wordpress.TemplateComments':
						query += "',{\n\r\tafterSuccess : function() {\n\r\t\t//do something after loaded\n\r\t}," +
						"\r\n\tbeforeStart : function() {\n\r\t\t//do something before request and beforeSend\n\r\t}," +
						"\r\n\ttmpl_form : 'formTemplate'," +
						"\r\n\ttmpl_page : 'pageTemplate'," +
						"\r\n\ttmpl_comment : 'commentTemplate'," +
						"\r\n\tparams : " + $.params
						 + "\n\r});";
					break;
					case 'Wordpress.TemplatePosts':
						query += "',{\n\r\tafterSuccess : function() {\n\r\t\t//do something after loaded\n\r\t}," +
						"\r\n\tbeforeStart : function() {\n\r\t\t//do something before request and beforeSend\n\r\t}," +
						"\r\n\tfile : 'templateName'," +
						"\r\n\tlinkSelector : 'selector for page links'," +
						"\r\n\tparams : " + $.params
						 + "\n\r});";
					break;
				}
			break;
			case 'rAjax':
				query += ",{\r\n\t";
				
				$.each($('.rajaxoptions:checked'),function (key,value) {
					query += "\r\n\t" + $(value).val() + " : function() {\n\r\t\t//do something here\n\r\t},";
				});
				
				query += "\n\r}";
			break;
		}

		return query;
	}
	
	function fillInExample(contents,method,options)
	{
		var content = contents.split(',');

		$('.requestgoal:eq(0)').val(content[0]);
		$('.requestgoal:eq(1)').val(content[1]);
		$('.requestgoal:eq(2)').val(content[2]);
		$('.requestgoal:eq(3)').find('option[value="' + content[3] + '"]').attr('selected','selected');
		$('.requestgoal:eq(4)').val(content[4]);
		$('.requestgoal:eq(5)').val(content[5]);
		
		$.jMethod = $('input').eq(0 + method).val();
		$('input').eq(0 + method).attr('checked',true);
		
		$.each(options,function (key,value) {
			$('input').eq(value).attr('checked',true);
		});
	}
	
	$('.method').click(function() {
		$('#window').show();
		$('#window fieldset').hide();
		//$('#window fieldset input[type=checkbox],#window fieldset input[type=radio]').attr('checked', false);
		switch($(this).val())
		{
			case 'rGet':
				$('#window fieldset').eq(0).show();
				$.jMethod = $('.method').eq(0).val();
			break;
			case 'rPut':
				$('#window fieldset').eq(1).show();
				$.jMethod = $('.method').eq(1).val();
			break;
			case 'rAjax':
				$('#window fieldset').eq(2).show();
				$.jMethod = $('.method').eq(2).val();
			break;
		}
	});
	
	$('#window button').click(function () {
		$('#window').hide();
	});
	
	$('#generate').click(generate);
	
	$('#execute').click(function (e) {
		eval($('#request').val());
	});
	
	function generate() {
		var e = this;
		e.parameter = '';
		
		var query = generateQuery($('.requestgoal:eq(0)').val());
		$('#request').val(query);
	}
	
	$('ul li a').rajaxNavi();
	$('#window fieldset').hide();
	$('#window').hide();
});