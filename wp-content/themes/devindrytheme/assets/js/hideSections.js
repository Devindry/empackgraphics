jQuery(function($){
        jQuery('.menu-item').click(function(){
              jQuery('section').slideUp();
              jQuery('section').hide();
              jQuery($(this).children('a').attr('href')).slideToggle();
        });
});