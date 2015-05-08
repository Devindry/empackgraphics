<?php
	/*
	Template Name: Portafolio page 
	*/
	get_header(); 
?>
<link type="text/css" rel="stylesheet" href="http://www.owlcarousel.owlgraphic.com/assets/owlcarousel/assets/owl.carousel.min.css" />
<link type="text/css" rel="stylesheet" href="http://www.owlcarousel.owlgraphic.com/assets/owlcarousel/assets/owl.theme.default.min.css" />
<script src="http://www.owlcarousel.owlgraphic.com/assets/owlcarousel/owl.carousel.js"></script>
<script src="http://www.owlcarousel.owlgraphic.com/assets/vendors/jquery.mousewheel.min.js"></script>

	
	<?php while ( have_posts() ) : the_post(); ?>
		<div class="portadolio-stamp"></div>
		<?php get_template_part( 'content', 'page' ); ?>

		<?php
			// If comments are open or we have at least one comment, load up the comment template
			if ( comments_open() || '0' != get_comments_number() )
				comments_template();
		?>

		<div id="newSlider"></div>

	<?php endwhile; // end of the loop. ?>


<?php 
	get_footer(); 
?>

<script type="text/javascript">

		
	/* Remove templete */
	jQuery('.nimble-portfolio').removeClass('-skin-default');

	/* Pass all items in groups of 4 */
	var divs = jQuery(".-item");
	for(var i = 0; i < divs.length; i+=4) {
	  divs.slice(i, i+4).wrapAll("<div class='itemOwl'></div>");
	}

	/* Clear all classes that are making blokers */
	jQuery('.-items').addClass('mainOwl');
	jQuery('.mainOwl > div:last-child').remove();

	/* Document ready : on click functions */
	jQuery(document).ready(function(){
		
		jQuery('.-filters a').click(function(){						

			//Hide Central Slider
			jQuery('.mainOwl').hide();

			//Clean new slider ///////////////////////////////////////////////////////////////////////
			jQuery('#newSlider').empty();

			//Copy and paste /////////////////////////////////////////////////////////////////////////
			jQuery('.mainOwl .-item:not(.hidden)').each(function(){				
				jQuery(this).css('opacity','1');
				jQuery(this).clone().appendTo('#newSlider');
			});

			//The four elemets ///////////////////////////////////////////////////////////////////////
			var divsItem = jQuery("#newSlider .-item");
			for(var i = 0; i < divsItem.length; i+=4) {
			  divsItem.slice(i, i+4).wrapAll("<div class='itemOwl'></div>");
			}						
			
			//The Initial Slider //////////////////////////////////////////////////////////////////////
			var owl = jQuery('#newSlider');
			owl.owlCarousel({
		    	items:1,
		    	nav:true
			});					

			//Brake and Hack
			owl.trigger('destroy.owl.carousel');
			owl.html(owl.find('.owl-stage-outer').html()).removeClass('owl-loaded');
			owl.owlCarousel({
			    items:1,
		    	nav:true
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
		var owl = jQuery('.mainOwl');	
		owl.owlCarousel({
		    items:1,
		    nav:true
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
</script>
<style type="text/css">

	/* OWL SLIDER OVERRIDES */
	.container-fluid{
		overflow: hidden;
	}	
	.itemOwl{
		overflow: hidden;
	}
	.owl-carousel .owl-stage-outer{
		overflow: visible;
	}
	.owl-stage-outer .owl-item{
		opacity: .4;
	}
	.owl-stage-outer .owl-item.active{
		opacity: 1;
	}
	.owl-stage .owl-item .itemOwl .-item {
	  width: 50%;
	  float: left;
	}
	.hentry{
		margin: 0;
	}
	.owl-carousel,
	.owl-carousel .owl-stage-outer,
	.owl-stage-outer .owl-item{		
		max-width: 800px;
		margin: 0 auto;		
	}
	/* TEMPLETE STYLES */
	.owl-stage-outer .owl-item .-item{
		width: 50%;
		height:300px;
		float: left;		
		overflow: hidden;		
		/*
		-webkit-clip-path: polygon(10% 50%, 90% 1%, 90% 50%, 10% 100%);
		clip-path: polygon(10% 50%, 90% 1%, 90% 50%, 10% 100%); */
		-webkit-clip-path: polygon(0 50%, 100% 0, 100% 50%, 0 100%);
		clip-path: polygon(0 50%, 100% 0, 100% 50%, 0 100%);
		/*box-shadow: 10px 10px 10px 10px #000;*/
	}
	.owl-stage-outer .owl-item .-item img{
		  margin-top: -25%;
	}
	.owl-stage-outer .owl-item .-item:nth-child(3),
	.owl-stage-outer .owl-item .-item:nth-child(4){
		margin-top: -10%
	}
	/* The filters styles */
	.owl-stage-outer .owl-item .-item img {
	  	margin-top: -20%;
	  	width: 480px;
	  	max-width: inherit;
	  	margin-left: -2%;
	}
</style>