# $ ->
# 	$('#header nav').on 'click','a:not(.active)', (event) ->
# 		$('.active',event.delegateTarget).removeClass 'active'
# 		$(@).addClass 'active'

# // var url =window.location;
# // $("nav a").each(function() {
# //    if($(this).attr('href') == url){
# //       $(this).addClass('active');
# //    }
# // });

$ ->
	url = window.location.pathname
	console.log(url)
	$('nav a').each ->
		if $(@).attr('href') == url
			
			$(@).addClass('active')
		else
			$('#nav li').first ->
				a.addClass('active')
	