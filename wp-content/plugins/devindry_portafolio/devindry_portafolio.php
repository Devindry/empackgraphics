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
                'not_found' => 'No se encontr� ninguna entrada de portafolio',
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
$labels1 = array(
	'name' => _x( 'Servicios', ''),
	'singular_name' => _x( 'Servicio','x'),
	'search_items' =>  __( 'Buscar Servicios'),
	'popular_items' => __( 'Servicioes populares' ),
	'all_items' => __( 'Todos las Servicios' ),
	'parent_item' => null,
	'parent_item_colon' => null,
	'edit_item' => __( 'Editar Servicio' ),
	'update_item' => __( 'Actualizar Servicio' ),
	'add_new_item' => __( 'A�adir nuevo Servicio' ),
	'new_item_name' => __( 'Nombre del nuevo Servicio' ),
	'separate_items_with_commas' => __( 'Separar Servicioes por comas' ),
	'add_or_remove_items' => __( 'A�adir o eliminar Servicios' ),
	'choose_from_most_used' => __( 'Escoger entre los Servicios m�s utilizados' ),
);
function crear_cat_servicios() {
	// create a new taxonomy
	register_taxonomy(
		'servicios',
		'dev_portafolio',
		array(
			'label' => 'Servicios',
			'labels' => $labels1,
			'hierarchical' => true,
			'rewrite' => array( 'slug' => 'servicios' ),
			'capabilities' => array(
				'assign_terms' => true,				
				'manage_terms' => true,
				'edit_terms' => true,
				'delete_terms' => true,
				'assign_terms' => true,
			)
		)
	);
}


add_action( 'init', 'crear_tag_seccion_servicios' );
$labels = array(
	'name' => __( 'Secciones', 'taxonomy general name' ),
	'singular_name' => __( 'Seccion', 'taxonomy singular name' ),
	'search_items' =>  __( 'Buscar Secciones' ),
	'popular_items' => __( 'Secciones populares' ),
	'all_items' => __( 'Todos las secciones' ),
	'parent_item' => null,
	'parent_item_colon' => null,
	'edit_item' => __( 'Editar Seccione' ),
	'update_item' => __( 'Actualizar Seccion' ),
	'add_new_item' => __( 'A�adir nuevo Seccion' ),
	'new_item_name' => __( 'Nombre del nuevo Seccion' ),
	'separate_items_with_commas' => __( 'Separar Secciones por comas' ),
	'add_or_remove_items' => __( 'A�adir o eliminar Secciones' ),
	'choose_from_most_used' => __( 'Escoger entre los Secciones m�s utilizados' )
);
function crear_tag_seccion_servicios() {
	// create a new tag
	register_taxonomy(
		'seccion_servicios',
		'dev_portafolio',
		array(		
			'label' => 'Secciones',
			'hierarchical' => false,	
			'labels' => $labels,
			'rewrite' => array( 'slug' => 'seccion' ),
			'capabilities' => array(
				'assign_terms' => true,				
				'manage_terms' => true,
				'edit_terms' => true,
				'delete_terms' => true,
				'assign_terms' => true,
			),
			'show_admin_column' => true,
			'update_count_callback' => '_update_post_term_count',
			'show_ui' => true,			
		)
	);
}


?>