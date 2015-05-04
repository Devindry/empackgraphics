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
            'has_archive' => true,
			'supports' => array( 'title', 'editor', 'comments', 'excerpt', 'custom-fields', 'thumbnail' ),
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
//Agregar un campo de imagen a la categoria servicios
//Tomado de: https://pippinsplugins.com/adding-custom-meta-fields-to-taxonomies/
function servicios_taxonomy_agregar_campo_imagen() {
	?>
	<div class="form-field">
		<label for="term_meta[custom_term_meta]"><?php _e( 'Imagen', 'servicios' ); ?></label>
		<input type="text" name="term_meta[custom_term_meta]" id="term_meta[custom_term_meta]" value="">
		<p class="description"><?php _e( 'Agrega una imagen','pippin' ); ?></p>
	</div>
<?php
}
function servicios_taxonomy_editar_campo_imagen($term) {
	$t_id = $term->term_id;
	$term_meta = get_option( "taxonomy_$t_id" ); ?>
	<tr class="form-field">
	<th scope="row" valign="top"><label for="term_meta[custom_term_meta]"><?php _e( 'Imagen', 'pippin' ); ?></label></th>
		<td>
			<input type="text" name="term_meta[custom_term_meta]" id="term_meta[custom_term_meta]" value="<?php echo esc_attr( $term_meta['custom_term_meta'] ) ? esc_attr( $term_meta['custom_term_meta'] ) : ''; ?>">
			<p class="description"><?php _e( 'Agregar Imagen','pippin' ); ?></p>
		</td>
	</tr>
<?php
}
function save_taxonomy_servicios_meta( $term_id ) {
	if ( isset( $_POST['term_meta'] ) ) {
		$t_id = $term_id;
		$term_meta = get_option( "taxonomy_$t_id" );
		$cat_keys = array_keys( $_POST['term_meta'] );
		foreach ( $cat_keys as $key ) {
			if ( isset ( $_POST['term_meta'][$key] ) ) {
				$term_meta[$key] = $_POST['term_meta'][$key];
			}
		}
		// Save the option array.
		update_option( "taxonomy_$t_id", $term_meta );
	}
}  
add_action( 'servicios_edit_form_fields', 'servicios_taxonomy_editar_campo_imagen', 10, 2 );
add_action( 'servicios_add_form_fields', 'servicios_taxonomy_agregar_campo_imagen', 10, 2 );
add_action( 'edited_servicios', 'save_taxonomy_servicios_meta', 10, 2 );  
add_action( 'create_servicios', 'save_taxonomy_servicios_meta', 10, 2 );





?>