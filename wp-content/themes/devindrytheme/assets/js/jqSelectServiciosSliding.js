jQuery(function($){
        jQuery('.servicio-item').click(function(){
              jQuery('.nosotros-text').slideUp();
              jQuery('.nosotros-text').hide();
              jQuery('#p'+$(this).attr('target')).slideToggle();
        });
});