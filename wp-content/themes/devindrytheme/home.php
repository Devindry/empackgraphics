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
$seccionq = new wp_query('cat=9', 'posts_per_page=3', 'posts_per_archive_page=1'); $n = $seccionq->query_vars;
if ( $seccionq->have_posts() ){ ?>		
	<div class="col-md-2 col-xs-15">
		<div class="seccion-blog-titulo">BLOG</div>
	</div> 
	<?php	
	while ( $seccionq->have_posts() ) {
		$seccionq->the_post();
	?>
		<div class="col-lg-2 col-xs-15">
			<a class="blog-item" href="<?php the_permalink(); ?>">
				<?php the_post_thumbnail('blog-mini'); ?>
			</a>
			<span class="blog-title"> <?php /*the_title();*/ ?></span>
		</div> 
		<?php
		} ?>
		<?php wp_reset_postdata(); ?>			
<?php 
} ?>
<?php get_footer(); ?>