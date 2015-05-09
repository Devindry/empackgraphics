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
wp_enqueue_style( 'less-style', get_stylesheet_directory_uri() . 'assets/column5.less' );
add_action( 'wp_enqueue_scripts', 'add_my_script' );

/* Funcion para agregar el script jquery en servicios */
function add_my_script() {
    wp_enqueue_script(
        'jqSelectServiciosSliding', // name your script so that you can attach other scripts and de-register, etc.
        get_stylesheet_directory_uri() . '/assets/js/jqSelectServiciosSliding.js', // this is the location of your script file
        array('jquery') // this array lists the scripts upon which your script depends
    );
}
?>