<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'empqa');

/** MySQL database username */
define('DB_USER', 'empadmin');

/** MySQL database password */
define('DB_PASSWORD', '8[f972_ZY47U7NW');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'FZ2[i)V+Amz1CD.y1|1:<(;KgX03Us~?Qt3 +M8:UF6~tjSjJZ,KC=^[/dVO(qT)');
define('SECURE_AUTH_KEY',  '35F-_ ^; A]W(D}|~yNcB3C~|MQG)L/>psMk!j/dq[PdK84!&+$y>a];}:HqaX{V');
define('LOGGED_IN_KEY',    'Iq$Zpak1Zq2Bhr-k3QYGiHj%7V%E&uj8bwF5rr#rZwp6&HZOMosMYW3/7& Va$J@');
define('NONCE_KEY',        ')Z+(|,qKrB<.p7-P>oy^Q:ryWFL{`?$Ep-DLQzqqH [MSB-S}*h+@.|+GKS`mdjk');
define('AUTH_SALT',        'm~du1KD|upC&cJ,heuImS*yGn72) (yT@wx_bQkfS&/zE<dY`(nP`HM!YO^rb%bD');
define('SECURE_AUTH_SALT', '%BdacEr-AR$TCPDgdrqLpPTUM_yo`e;|182.{R9]xmS-H^QUq1ntfA?{k+zZ^?|,');
define('LOGGED_IN_SALT',   '(Zb)vPMWP$^{_1tn@aU]z*+-pS_Wpy`SSY  ,e.K!(K+N_#6gzR$v}3erb,o,>dV');
define('NONCE_SALT',       '0yf-x!LlOusG*GIR~a&{xUwCMsEW&>5;I(vd#*i,6<%>9)mknoO#cSP5Ue=p)JSy');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
