<link type="text/css" rel="stylesheet" href="https://daneden.github.io/animate.css/animate.min.css" />
<div class="y-triangle animated fadeInLeft"></div>
<style type="text/css">	

/* PORTAFOLIO DETAIL */
body{
	overflow-x: hidden;
}

#portafolioDetail{
  margin-top: 10%;
}
.y-triangle{	 
	display: block;
	width: 300px;
	height: 83px;
	position: absolute;
	top: 0;
	bottom: 0;
	height: 100%;
	width: 100%;	
}
#content .flex-control-paging li a.flex-next,
#content .flex-control-paging li a.flex-prev{	
	float:left !important;
	width: 13px !important;
  	height: 18px !important;
	text-indent: -9999px !important;
	background-color:transparent !important;
	margin-top: -3px
}

	/* Esconder elementos */
	.menu-menu-principal-container  .menu{
		display: none
	}	
	.metaslider ul.slides,
	.portafolio-detail{
		list-style: none;
		margin: 0;
		padding: 0
	}
	/* Titulo */
	.page-title a{
		font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
		color: #000;
		font-style: italic;
		font-weight: 800;
		font-size: 65px;
		position: absolute;
  		top:140px;
	}
	/* Slide Wrapper */
	#content .flexslider {
	  margin-top:1%;
	}

	/* IMAGEN */
	#content .metaslider ul.slides img{
		width: 40% !important;
		float: right;
		margin:0 30px !important;		
	}
	/* Contenido */
	#content .metaslider .caption-wrap{
		background-color:rgba(255,255,255,.95);
		padding: 2% 2% 3% 2%;
		line-height: 16px;
		font-size: 12px;			
		width: 45%;
		float: left;
		color: #000;
		bottom: inherit;
	}
	#content .metaslider .caption-wrap .caption{
		color:#000;
		opacity: 1;
	}
	/* Controles */
	#content .flex-direction-nav a{
		display: block ; 
		opacity: 1;
		left: 30px;
		position: static;
	}
	/* Dots */	
	#content .flex-control-paging li{
		text-indent: -9999px !important;
		float:left !important;
		padding:3px !important;
		position: relative;
	}
	#content .flex-control-paging li a{
		background-color: black !important;
		width: 12px !important;
		height: 12px !important;
		border-radius: 100% !important;
		display: block !important;
		border: none !important;
			
	}
	#content .flex-control-paging li a.flex-active:before{
		background-color: #fff;
		content: '';
		position: absolute;
		height: 16px;
		width: 17px;
		left: 6px;
		top: .075rem;
		top: 1px;
		z-index: -1;
		border-radius:100% 

	}
	/* Controls Wrapper*/
	.flex-control-nav{
		bottom: inherit !important;
		top:350px;						
		right:54%
	}
	.flex-control-nav li:last-child{
		width: 100%
	}
	#content .flex-control-nav li{
		float: none !important;
	}
	#content .flex-control-nav li:last-child a{
		border-radius: 0 !important;
	  	padding: 10px;
	  	color: #fff;
	  	text-indent: initial !important;
	  	width: 164px !important;
	  	height: 35px !important;
	  	margin-top: 10px;
	  	float: right;
	}
	.back-to-portfolio{
		display: block;
		background-color: #000;
		color:#fff;
	}

	body #content .metaslider ol {
  		margin-bottom: 0% !important;
  		margin-left: 0% !important;
  		margin-right: auto !important; 	
  		text-align: right;
  		border: solid 1px transparent;
  		z-index: 99999;

	}
</style>
<?php
/**
 * The template for displaying Archive pages.
 * Learn more: http://codex.wordpress.org/Template_Hierarchy
 * @package _tk
 */
get_header(); ?>

	<?php // add the class "panel" below here to wrap the content-padder in Bootstrap style ;) ?>
	<!-- Important Owl stylesheet -->	
	
<?php wp_nav_menu( $args ); ?> 
	<div class="content-padder animated fadeInRight" id="portafolioDetail">
		<?php if ( have_posts() ) : ?>
			<header style="display:none">
				<h1 class="page-title">					
					<?php
						if ( is_category() ) :
							single_cat_title();

						elseif ( is_tag() ) :
							single_tag_title();

						elseif ( is_author() ) :
							/* Queue the first post, that way we know
							 * what author we're dealing with (if that is the case).
							*/
							the_post();
							printf( __( 'Author: %s', '_tk' ), '<span class="vcard">' . get_the_author() . '</span>' );
							/* Since we called the_post() above, we need to
							 * rewind the loop back to the beginning that way
							 * we can run the loop properly, in full.
							 */
							rewind_posts();

						elseif ( is_day() ) :
							printf( __( 'Day: %s', '_tk' ), '<span>' . get_the_date() . '</span>' );

						elseif ( is_month() ) :
							printf( __( 'Month: %s', '_tk' ), '<span>' . get_the_date( 'F Y' ) . '</span>' );

						elseif ( is_year() ) :
							printf( __( 'Year: %s', '_tk' ), '<span>' . get_the_date( 'Y' ) . '</span>' );

						elseif ( is_tax( 'post_format', 'post-format-aside' ) ) :
							_e( 'Asides', '_tk' );

						elseif ( is_tax( 'post_format', 'post-format-image' ) ) :
							_e( 'Images', '_tk');

						elseif ( is_tax( 'post_format', 'post-format-video' ) ) :
							_e( 'Videos', '_tk' );

						elseif ( is_tax( 'post_format', 'post-format-quote' ) ) :
							_e( 'Quotes', '_tk' );

						elseif ( is_tax( 'post_format', 'post-format-link' ) ) :
							_e( 'Links', '_tk' );

						else :
							_e( 'Archives', '_tk' );

						endif;
					?>
				</h1>
				<?php
					// Show an optional term description.
					$term_description = term_description();
					if ( ! empty( $term_description ) ) :
						printf( '<div class="taxonomy-description">%s</div>', $term_description );
					endif;
				?>
			</header><!-- .page-header -->		
					
				<?php /* Start the Loop */ ?>
				<?php while ( have_posts() ) : the_post(); ?>
					
					<?php
						/* Include the Post-Format-specific template for the content.
						 * If you want to overload this in a child theme then include a file
						 * called content-___.php (where ___ is the Post Format name) and that will be used instead.*/
						get_template_part( 'content', get_post_format() );							
					?>					
					<?php 
					    if (is_home() || is_front_page()) {
					        echo do_shortcode(); // replace 123 with your slideshow ID
					    }
					?>
					<!--<div class="f-image"><?php the_post_thumbnail();?></div>-->

				<?php endwhile; ?>
				
				<!--	
				<?php _tk_content_nav( 'nav-below' ); ?>				
				<div id="content" class="site-content">
			</ul>
		<?php else : ?>
			<?php get_template_part( 'no-results', 'archive' ); ?>
		<?php endif; ?>	
	</div><!-- .content-padder -->
	
<?php get_footer(); ?>

<script>	
	$ = jQuery;						
	$( window ).load(function() {												       
    setTimeout(function(){						    
	    
	    var prev = $('.flex-prev').parent();
	    var next = $('.flex-next').parent();
	    var wrappControl = $('.flex-control-nav');
	    
	    wrappControl.append(prev);
	    wrappControl.prepend(next);
	    wrappControl.append('<li><a href="http://localhost:8080/empackgraphics/?page_id=10" class="back-to-portfolio"> Regresar a  <strong> Portafolio </strong>  </a></li>');

	    $('.flexslider').prepend(wrappControl);
	    $('.flex-control-nav li:not(:last) a').text('');

	    $('.back-to-portfolio').click(function(){
	    	console.log('CLICK !');
	    	 window.location = 'http://localhost:8080/empackgraphics/?page_id=10;'
	    });

	}, 100);
    });
</script>	