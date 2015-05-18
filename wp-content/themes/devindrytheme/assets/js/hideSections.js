jQuery(function($){
        jQuery('.menu-item').click(function(){
              jQuery('section').slideUp();
              jQuery('section').hide();
              jQuery($(this).children('a').attr('href')).slideToggle();
        });
});
jQuery(document).ready(function($){
	var url = window.location.href;
	var urlb = window.location.host;
	urlf = url.substr(url.indexOf('#')+1);
	if(jQuery('#inicio').length > 0){
		if(url.indexOf('#') == -1){urlf='inicio'}
		jQuery('section').each(
			function(){ 
				if($(this).attr('id') != urlf){ 
					$(this).hide();
				}
			}
		);
	}
	else{		
		jQuery('#main-menu li a').each(function(){
			$(this).attr('href', 'http://' + urlb + '/empackgraphics/' + $(this).attr('href'));
		});
	}	
});
	
