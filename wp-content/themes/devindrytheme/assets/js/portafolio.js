var $ = jQuery;	
	 /*Remove templete */	
	$('.nimble-portfolio').removeClass('-skin-default');

	$( ".-item .button-fixed" ).each(function( index ) {
  		var detailURL = $( this ).attr('href');
		$(this).parent().parent().parent().find('.itembox a').attr('href', detailURL);
		
	});

	/* Pass all items in groups of 4 */	
	var divs = $(".-item");	
	for(var i = 0; i < divs.length; i+=4) {	  	

	  	divs.slice(i, i+4).wrapAll("<div class='itemOwl'></div>")	
	}
	
	/* Clear all classes that are making blokers */
	$('.-items').addClass('mainOwl');
	$('.mainOwl > div:last-child').remove();

	/* Document ready : on click functions */
	$(document).ready(function($){
		
			$('.-filters a').click(function(){						

			//Hide Central Slider
			$('.mainOwl').hide();

			//Clean new slider ///////////////////////////////////////////////////////////////////////
			$('#newSlider').empty();

			//Copy and paste /////////////////////////////////////////////////////////////////////////
			$('.mainOwl .-item:not(.hidden)').each(function(){				
				$(this).css('opacity','1');
				$(this).clone().appendTo('#newSlider');
			});

			//The four elemets ///////////////////////////////////////////////////////////////////////
			var divsItem = $("#newSlider .-item");
			for(var i = 0; i < divsItem.length; i+=4) {
			  divsItem.slice(i, i+4).wrapAll("<div class='itemOwl'></div>");	  
			}						
			
			//The Initial Slider //////////////////////////////////////////////////////////////////////
			var owl = $('#newSlider');
			owl.owlCarousel({
		    	items:1,
		    	nav:false
			});					

			//Brake and Hack
			owl.trigger('destroy.owl.carousel');
			owl.html(owl.find('.owl-stage-outer').html()).removeClass('owl-loaded');
			owl.owlCarousel({
			    items:1,
		    	nav:false
			});
			owl.on('mousewheel', '.owl-stage', function (e) {
			    if (e.deltaY>0) {
			        owl.trigger('next.owl');
			    } else {
			        owl.trigger('prev.owl');
			    }
			    e.preventDefault();
			});	

		});//All cloning carousel stuff

		/* Carousel */				
		var owl = $('.mainOwl');	
		owl.owlCarousel({
		    items:1,
		    nav:false
		});					
		owl.on('mousewheel', '.owl-stage', function (e) {
		    if (e.deltaY>0) {
		        owl.trigger('next.owl');
		    } else {
		        owl.trigger('prev.owl');
		    }
		    e.preventDefault();
		});	
	});	