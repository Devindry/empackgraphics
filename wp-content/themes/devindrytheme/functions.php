<?php
/* Codigo para agregar las imagenes que ocupa el blog (142 x 142) */
add_image_size('blog-mini', 150, 150, true);
add_image_size('blog-titulo', 500, 150, true);
add_filter( 'image_size_names_choose', 'blogThumb' );
function blogThumb( $sizes ) {
	return array_merge( $sizes, array(
		'blog-mini' => __( 'Miniatura para Blog' ), 'blog-titulo' => __( 'Titulo para Blog' )
	) );
}
add_action( 'wp_enqueue_scripts', 'add_my_script' );
/* Funcion para agregar el script jquery en servicios */
function add_my_script() {
	wp_enqueue_script('portafolio', get_stylesheet_directory_uri() . '/assets/js/portafolio.js', false, '1.0', true);
	wp_enqueue_script('hideSections', get_stylesheet_directory_uri() . '/assets/js/hideSections.js');
	wp_enqueue_script('jqSelectServiciosSliding', get_stylesheet_directory_uri() . '/assets/js/jqSelectServiciosSliding.js');
	wp_enqueue_script('owl.carousel', get_stylesheet_directory_uri() . '/assets/js/owl.carousel.js');
	wp_enqueue_script('jquery.mousewheel.min', get_stylesheet_directory_uri() . '/assets/js/jquery.mousewheel.min.js');
	wp_enqueue_style(
        'owl.carousel.min', get_stylesheet_directory_uri() . '/assets/js/owl.carousel.min.css');
	wp_enqueue_style(
        'owl.theme.default.min', get_stylesheet_directory_uri() . '/assets/js/owl.theme.default.min.css');
	wp_enqueue_style('animate.min', get_stylesheet_directory_uri() . '/assets/js/animate.min.css');
	wp_enqueue_style('portafolioc', get_stylesheet_directory_uri() . '/assets/css/portafolioc.css');
	
}
?>
