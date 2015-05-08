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
get_header();
if ( have_posts() ){ ?>		
<div class="col-md-2 col-xs-15">
	<div class="seccion-blog-titulo">BLOG</div>
</div> 
	<?php	
		while ( have_posts() ) {
			the_post();
			?>
				<div class="col-lg-2 col-xs-15">
					<a class="blog-item" href="<?php the_permalink(); ?>">
						<?php the_post_thumbnail('blog-mini'); ?>
					</a>
					<span class="blog-title"> <?php /*the_title();*/ ?></span>
				</div> 
		<?php
		} ?>	
<?php 
} ?>
<?php get_footer(); ?>