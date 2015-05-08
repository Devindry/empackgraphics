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
	<div class="row">
		<div class="col-sm-6">
			<img src = "wp-content/themes/devindrytheme/assets/servicios-circle.png"/>
			<div class="texto-container">
			<?php	
			query_posts('cat=1');
			$myposts = $wp_query->post_count;
			while ( have_posts() ) {
				the_post();
			?>
				
					<div class="nosotros-text" id="<?php echo 'p'.get_the_ID();?>">
							<?php the_content(); ?>
					</div> 
				
				<?php 
			
			} 
			?>
			</div>
			</div>
			<div class="col-sm-6">
			<?php while ( have_posts() ) {
				the_post();
				$t = get_the_ID();
			?>
				<div class="servicio-item <?php echo 'post-'.$t; ?>" target="<?php echo $t;?>">
					<p class="servicios-title"><?php the_title(); ?></p> 
				</div>
			<?php 			
			} ?>			
			</div>
		</div>
	</div>
<?php 
} ?>
<?php get_footer(); ?>




iteracion 1      <cont 1>
						texto item 1
				 <cont 
