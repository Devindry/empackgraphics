<?php
/* Codigo para agregar las imagenes que ocupa el blog (142 x 142) */
add_image_size('blog-mini', 150, 150, true);
add_filter( 'image_size_names_choose', 'blogThumb' );
function blogThumb( $sizes ) {
	return array_merge( $sizes, array(
		'blog-mini' => __( 'Miniatura para Blog' )
	) );
}
wp_enqueue_style( 'less-style', get_stylesheet_directory_uri() . 'assets/column5.less' );
?>