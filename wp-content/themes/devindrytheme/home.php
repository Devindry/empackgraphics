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

get_header(); $cont = 1; $cantidad_post_servicio=0;
if ( have_posts() ){ ?>		
<div class="col-md-2 col-xs-15">
	<div class="seccion-blog-titulo">BLOG</div>
</div> 
	<?php	
		$columnas = 5;
		$category = get_category(9);
		$cantidad_post_servicio = $category->category_count;
		while ( have_posts() ) {
			the_post();
			/*if($cont % ($columnas + 1)  == 0 || $cont == 1){echo '<div class="row"' . 'id="'. $cont % ($columnas + 1).'">';}*/
			?>
				<div class="col-lg-2 col-xs-15">
					<a class="blog-item" href="<?php the_permalink(); ?>">
						<?php the_post_thumbnail('blog-mini'); ?>
					</a>
					<span class="blog-title"> <?php /*the_title();*/ ?></span>
				</div> 
			<?php  /*if($cont % ($columnas + 1) == 0){echo '</div>';} */
			$cont++;	 ?>
		<?php
		} ?>	
<?php 
} ?>
<?php get_footer(); ?>