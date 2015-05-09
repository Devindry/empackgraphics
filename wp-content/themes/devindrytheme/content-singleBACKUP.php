<?php
/**
 * @package _tk
 */
?>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<div class="entry-content">
		<div class="entry-content-thumbnail col-md-6">
			<?php the_post_thumbnail(); ?>
		</div>
		
		<div class="col-md-6">
			<div class="page-title"><?php the_title();?></div>
			<div class="autor">Por:<?php the_author(); ?></div>
			<div class="body-post-container">
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

	</div><!-- .entry-content -->
</article><!-- #post-## -->
