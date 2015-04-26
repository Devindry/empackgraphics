<?php
/*
Plugin Name: Devindry Portafolio
Plugin URI: http://devindry.com/
Description: Portafolio
Version: 1.0
Author: Hector Lozano
Author URI: http://devindry.com
License: GPLv2
*/
add_action( 'init', 'crear_devindry_portafolio' );
function crear_devindry_portafolio() {
    register_post_type( 'dev_portafolio',
        array(
            'labels' => array(
                'name' => 'Portafolio',
                'singular_name' => 'Portafolio',
                'add_new' => 'Nuevo',
                'add_new_item' => 'Agregar una entrada nueva',
                'edit' => 'Editar',
                'edit_item' => 'Editar entrada de portafolio',
                'new_item' => 'Nueva entrada de portafolio',
                'view' => 'Ver',
                'view_item' => 'Ver entrada de portafolio',
                'search_items' => 'Buscar entrada de portafolio',
                'not_found' => 'No se encontró ninguna entrada de portafolio',
                'not_found_in_trash' => 'Ninguna entrada de portafolio en la papelera',
                'parent' => 'Entrada de Portafolio padre'
            ),
 
            'public' => true,
            'menu_position' => 15,
            'supports' => array( 'title', 'editor', 'thumbnail', 'custom-fields' ),
            'taxonomies' => array( 'servicios' ),
            'menu_icon' => plugins_url( 'images/image.png', __FILE__ ),
            'has_archive' => true
        )
    );
}
add_action( 'init', 'crear_cat_servicios' );
function crear_cat_servicios() {
	// create a new taxonomy
	register_taxonomy(
		'servicios',
		'dev_portafolio',
		array(
			'label' => __( 'Servicios' ),
			'rewrite' => array( 'slug' => 'servicios' ),
			'capabilities' => array(
				'assign_terms' => 'edit_guides',
				'edit_terms' => 'publish_guides'
			)
		)
	);
}
add_action( 'init', 'crear_tag_seccion_servicios' );
function crear_tag_seccion_servicios() {
	// create a new tag
	register_taxonomy(
		'seccion_servicios',
		'dev_portafolio',
		array(		
			'hierarchical' => false,	
			'label' => __( 'Seccion' ),
			'rewrite' => array( 'slug' => 'seccion' ),
			'capabilities' => array(
				'assign_terms' => 'edit_guides',
				'edit_terms' => 'publish_guides'
			)
			
		)
	);
}

?>