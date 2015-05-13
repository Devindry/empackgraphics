jQuery(function($){
        jQuery('.servicio-item').click(function(){
              jQuery('.servicios-text').slideUp();
              jQuery('.servicios-text').hide();
              jQuery('#p'+$(this).attr('target')).slideToggle();
        });
});