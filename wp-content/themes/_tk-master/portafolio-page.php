<?php
	/*
	Template Name: Portafolio page 
	*/
	get_header(); 
?>
<link type="text/css" rel="stylesheet" href="http://www.owlcarousel.owlgraphic.com/assets/owlcarousel/assets/owl.carousel.min.css" />
<link type="text/css" rel="stylesheet" href="http://www.owlcarousel.owlgraphic.com/assets/owlcarousel/assets/owl.theme.default.min.css" />
<link type="text/css" rel="stylesheet" href="https://daneden.github.io/animate.css/animate.min.css" />
<script src="http://www.owlcarousel.owlgraphic.com/assets/owlcarousel/owl.carousel.js"></script>
<script src="http://www.owlcarousel.owlgraphic.com/assets/vendors/jquery.mousewheel.min.js"></script>
	<div class="animated fadeIn" id="portafolioTemplete" >
		<?php while ( have_posts() ) : the_post(); ?>
			<div class="portadolio-stamp animated bounce"></div>
			<?php get_template_part( 'content', 'page' ); ?>

			<?php
				// If comments are open or we have at least one comment, load up the comment template
				if ( comments_open() || '0' != get_comments_number() )
					comments_template();
			?>
			<div id="newSlider"></div>
		<?php endwhile; // end of the loop. ?>
	</div>
<?php 
	get_footer(); 
?>

<script type="text/javascript">

	var $ = jQuery;	
	/* Remove templete */	
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
	$(document).ready(function(){
		
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
</script>
<style type="text/css">
#portafolioTemplete{
margin-top: 5%;
}
.-links,
.edit-link{
	display: none
}
/*DOTS TRANSFORM*/
body .owl-theme .owl-dots .owl-dot span{
	  width: 107px;
  height: 12px;
  margin: 25px 3px;
   -webkit-border-radius: 0px;
  -moz-border-radius: 0px;
  border-radius: 0px;
}
body .owl-theme .owl-dots .owl-dot.active span, .owl-theme .owl-dots .owl-dot:hover span{
	background-color: #ffec0a  
}

.itembox a{
position: relative;
}
.itembox:hover{
	cursor: pointer;
	-webkit-transition: all .25s ease-in-out;
	-moz-transition: all .25s ease-in-out;
	-o-transition: all .25s ease-in-out;
	transition: all .25s ease-in-out;
}
.itembox:hover .genericon.genericon-zoom{
	opacity: .8;
	-webkit-transition: all .25s ease-in-out;
	-moz-transition: all .25s ease-in-out;
	-o-transition: all .25s ease-in-out;
	transition: all .25s ease-in-out;
}
.genericon.genericon-zoom {		
	width: 500px;
	height: 540px;
	top:0;
	left: 0;
	padding-top: 230px;
	padding-left:50px;
	padding-right: 100px;
	position: absolute;
	opacity: 1;
	background: #000;
	display: block;
	z-index: 99999;
	color: white;		  
	opacity: 0;
	text-decoration: none;		  
	font-size: 30px;		  		  
	font-weight: bold;
	font-family: helvetica;
}
.genericon.genericon-zoom:before{
	display: none
}

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
	width: 46%;
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
	height:280px;
	float: left;		
	overflow: hidden;
	margin-left:0 !important;
	margin-right: 21px;
	background: none !important;
	height: 183px;
	margin-bottom: 93px;
	transform: skewY(-18deg);
	margin-top: 78px;
}	
.owl-stage-outer .owl-item .-item:nth-child(3),
.owl-stage-outer .owl-item .-item:nth-child(4){
	margin-top: -10%
}
.owl-stage-outer .owl-item .-item img {
	margin-top: -43%;
	width: 124%;
	max-width: inherit;
	margin-left: -10%;
}
.itembox {
	transform: skewY(18deg);
}
</style>

