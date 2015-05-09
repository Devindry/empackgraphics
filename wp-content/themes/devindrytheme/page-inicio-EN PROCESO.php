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

get_header(); ?>

	<section id="inicio" class="container-fluid">
		<div class="container-fluid" id="<?php  global $post; $post_slug=$post->post_name; echo $post_slug.'-triangulo'; ?>">		
			<div class="row">
				<?php echo do_shortcode('[metaslider id=40]'); ?>
			</div>
		</div>
	</section>
	
	<?php
		$seccionq = new wp_query('pagename=quienes-somos');		
		$seccionq->the_post();
		
	?>
	<section id="<?php  global $post; $post_slug=$post->post_name; echo $post_slug ?>" class="container-fluid">
		<div class="container-fluid" id="<?php  global $post; $post_slug=$post->post_name; echo $post_slug.'-triangulo'; ?>">		
			<?php 	echo  get_the_content(); ?> 
		</div>
	</section>
	<?php wp_reset_postdata(); ?>
	
	<?php $seccionq = new wp_query('cat=1');?>
	<section id="<?php  $c = get_the_category(); print_r($c); echo $c[0]->category_nicename;?>" class="container-fluid">
		<div class="container-fluid" id="<?php  global $post; $post_slug=$post->post_name; echo $post_slug.'-triangulo'; ?>">			
			<div class="row">
				<div class="col-sm-6">
					<img src = "wp-content/themes/devindrytheme/assets/servicios-circle.png"/>
					<div class="texto-container">
						<?php
						while ( $seccionq->have_posts() ) {
							$seccionq->the_post();
						?>				
							<div class="nosotros-text" id="<?php echo 'p'.get_the_ID();?>">
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
	</section>
	<?php wp_reset_postdata(); ?>
	
	<section id="portafolio">
	</section>
	
	<?php $seccionq = new wp_query('cat=9', 'posts_per_page=3', 'posts_per_archive_page=1');	?>
	<section id="<?php  global $post; $post_slug=$post->post_name; echo $post_slug; ?> container-fluid">
		<div class="container-fluid" id="<?php  global $post; $post_slug=$post->post_name; echo $post_slug.'-triangulo'; ?>">			
			</div class="row">
				<div class="entry-content-thumbnail col-md-6">
					<img src="wp-content/uploads/2015/05/boxes.png">
				</div>
				<?php							
							while ( $seccionq->have_posts() ) {
								$seccionq->the_post();
				if($count < 1){
				?>
				<div class="col-md-6">
					<div class="page-title"><?php the_title();?></div>
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
	</section>
	<?php wp_reset_postdata(); ?>
	
	<?php $seccionq = new wp_query('pagename=contacto');?>
	<section id="<?php  global $post; $post_slug=$post->post_name; echo $post_slug; ?> container-fluid">
		<div class="container-fluid" id="<?php  global $post; $post_slug=$post->post_name; echo $post_slug.'-triangulo'; ?>">			
			<?php	
			$seccionq->the_post();
			echo do_shortcode(get_the_content());
			?>
		</div>
	</section>
	<?php wp_reset_postdata(); ?>
		
<?php /* get_sidebar(); */?>
<?php get_footer(); ?>
