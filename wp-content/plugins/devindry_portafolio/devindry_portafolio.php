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
	'add_new_item' => __( 'Añadir nuevo Servicio' ),
	'new_item_name' => __( 'Nombre del nuevo Servicio' ),
	'separate_items_with_commas' => __( 'Separar Servicioes por comas' ),
	'add_or_remove_items' => __( 'Añadir o eliminar Servicios' ),
	'choose_from_most_used' => __( 'Escoger entre los Servicios más utilizados' ),
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




?>