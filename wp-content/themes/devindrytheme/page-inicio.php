<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package _tk
 */

get_header('p');?>
	<section id="inicio" class="container-fluid">
		<div class="container-fluid" id="<?php  global $post; $post_slug=$post->post_name; echo $post_slug.'-triangulo'; ?>">	
			<div class="container">
				<div class="row">
					<?php echo do_shortcode('[metaslider id=40]'); ?>
				</div>
			</div>
		</div>
	</section>
	
	<?php
		$seccionq = new wp_query('pagename=quienes-somos');		
		$seccionq->the_post();		
	?>
	<section id="<?php  global $post; $post_slug=$post->post_name; echo $post_slug ?>" class="container-fluid">
		<div class="container-fluid" id="<?php  global $post; $post_slug=$post->post_name; echo $post_slug.'-triangulo'; ?>">		
			<div class="container">
				<?php 	echo  get_the_content(); ?> 
			</div>
		</div>
	</section>
	<?php wp_reset_postdata(); ?>
	
	<?php $seccionq = new wp_query('cat=1');
	$n = $seccionq->query_vars; ?>
	<section class="container-fluid" id="<?php  echo $n['category_name']; ?>">
		<div class="container-fluid bounce" id="<?php  echo $n['category_name'].'-triangulo'; ?>">
			<div class="container"
				<div class="row">
					<div class="col-sm-6">
						<img src = "wp-content/themes/devindrytheme/assets/servicios-circle.png"/>
						<div class="texto-container">
							<?php
							while ( $seccionq->have_posts() ) {
								$seccionq->the_post();
							?>				
								<div class="servicios-text" id="<?php echo 'p'.get_the_ID();?>">
									<?php the_content(); ?>
								</div> 				
							<?php }	?>
						</div>
					</div>
					<div class="col-sm-6">
						<?php while ( $seccionq->have_posts() ) {
							$seccionq->the_post();
							$t = get_the_ID(); 
						?>
							<div class="servicio-item <?php echo 'post-'.$t; ?>" target="<?php echo $t;?>">
								<p class="servicios-title"><?php the_title(); ?></p> 
							</div>
						<?php } ?>			
					</div>
				</div>
			</div>
		</div>
	</section>
	<?php wp_reset_postdata(); ?>	
	
	
	<?php $seccionq = new wp_query('pagename=portafolio');		
			$seccionq->the_post();?>
	<link type="text/css" rel="stylesheet" href="http://www.owlcarousel.owlgraphic.com/assets/owlcarousel/assets/owl.carousel.min.css" />
<link type="text/css" rel="stylesheet" href="http://www.owlcarousel.owlgraphic.com/assets/owlcarousel/assets/owl.theme.default.min.css" />
<link type="text/css" rel="stylesheet" href="https://daneden.github.io/animate.css/animate.min.css" />
<script src="http://www.owlcarousel.owlgraphic.com/assets/owlcarousel/owl.carousel.js"></script>
<script src="http://www.owlcarousel.owlgraphic.com/assets/vendors/jquery.mousewheel.min.js"></script>
	<section id="portafolio" class="container-fluid">
		<div class="container-fluid" id="<?php  global $post; $post_slug=$post->post_name; echo $post_slug.'-triangulo'; ?>">	
			<div class="container">
				<div class="row">	
					<div class="animated fadeIn" id="portafolioTemplete" >
						<div class="portadolio-stamp animated bounce"></div>						
							<?php echo do_shortcode(get_the_content());	?>
							<div id="newSlider"></div>
							<?php wp_enqueue_style(
        'portafolioc', get_stylesheet_directory_uri() . '/assets/portafolioc.css'); ?>
					</div>
				</div>
			</div>
		</div>
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


	</section>
	<?php wp_reset_postdata(); ?>	
	
	<?php $seccionq = new wp_query('cat=9', 'posts_per_page=3', 'posts_per_archive_page=1'); $n = $seccionq->query_vars;?>
	<section class="container-fluid" id="<?php  echo $n['category_name']; ?>">
		<div class="container-fluid" id="<?php  echo $n['category_name'].'-triangulo'; ?>">
			<div class="container">
				<div class="row">
					<div class="entry-content-thumbnail col-md-6">
						<img src="wp-content/uploads/2015/05/boxes.png">
					</div>
					<?php							
								while ( $seccionq->have_posts() ) {
									$seccionq->the_post();
					if($count < 1){
					?>
					<div class="col-md-6">
						<div class="blog-title"><?php the_title();?></div>
						<div class="autor">Por:<?php the_author(); ?></div>
						<div class="body-post-container">
							<div class="titulo-imagen"><?php the_post_thumbnail('blog-titulo'); ?></div>
							<?php the_content(); ?>	
						</div>
						<a class="mas-posts-blog" href="<?php echo home_url(); ?>/?page_id=12">
							<table class="table">
								<thead>
									
									<tr>
										<th class="col-md-4">Ver Todo</th>
										<th class="col-md-8">
											<img src=" <?php echo home_url(). '/wp-content/themes/devindrytheme/assets/icon_ver_todo.png';?>">
										</th>
									</tr>
									
								</thead>
							</table>
						</a>					
					</div>
					<?php $count++;}else{} } ?>
				</div>
			</div>
		</div>
	</section>
	<?php wp_reset_postdata(); ?>
	
	<?php $seccionq = new wp_query('pagename=contacto');
	$seccionq->the_post();?>
	<section id="<?php  global $post; $post_slug=$post->post_name; echo $post_slug ?>" class="container-fluid">
		<div class="container-fluid" id="<?php  global $post; $post_slug=$post->post_name; echo $post_slug.'-triangulo'; ?>">		
			<div class="container">
				<?php echo do_shortcode(get_the_content());	?>
			</div>
		</div>
	</section>
	<?php wp_reset_postdata(); ?>
		
<?php /* get_sidebar(); */?>
<?php get_footer(); ?>
