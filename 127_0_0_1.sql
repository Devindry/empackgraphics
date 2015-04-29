-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-04-2015 a las 01:06:22
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `empqa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Sr WordPress', '', 'https://wordpress.org/', '', '2015-04-23 03:47:14', '2015-04-23 03:47:14', 'Hola, esto es un comentario.\nPara borrar un comentario simplemente accede y revisa los comentarios de la entrada. Ahí tendrás la opción de editarlo o borrarlo.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=393 ;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/empackgraphics', 'yes'),
(2, 'home', 'http://localhost:8080/empackgraphics', 'yes'),
(3, 'blogname', 'Empackgraphics', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'helozano.sistemas@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:43:"devindry_portafolio/devindry_portafolio.php";i:1;s:37:"disable-comments/disable-comments.php";i:2;s:23:"ml-slider/ml-slider.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '-6', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:3:{i:0;s:83:"C:\\wamp\\www\\empackgraphics/wp-content/plugins/disable-comments/disable-comments.php";i:1;s:65:"C:\\wamp\\www\\empackgraphics/wp-content/themes/_tk-master/style.css";i:2;s:0:"";}', 'no'),
(41, 'template', '_tk-master', 'yes'),
(42, 'stylesheet', 'devindrytheme', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '12', 'yes'),
(85, 'page_on_front', '44', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'WPLANG', 'es_MX', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:8:"search-2";}s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:5:{i:1430355660;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1430356415;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1430365644;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1430365653;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(99, '_transient_random_seed', '816a5cbff847f7d888eda3e8198fefa6', 'yes'),
(106, '_site_transient_timeout_browser_837ac6e56c8bf9987e4fbaa5079e156e', '1430365655', 'yes'),
(107, '_site_transient_browser_837ac6e56c8bf9987e4fbaa5079e156e', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"42.0.2311.90";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(112, 'can_compress_scripts', '1', 'yes'),
(127, '_transient_twentyfifteen_categories', '1', 'yes'),
(129, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:27:"helozano.sistemas@gmail.com";s:7:"version";s:5:"4.1.3";s:9:"timestamp";i:1429837791;}', 'yes'),
(135, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:4:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:65:"https://downloads.wordpress.org/release/es_MX/wordpress-4.2.1.zip";s:6:"locale";s:5:"es_MX";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/es_MX/wordpress-4.2.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.1";s:7:"version";s:5:"4.2.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.1";s:7:"version";s:5:"4.2.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.1";s:7:"version";s:5:"4.2.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.1.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.1.4-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.1.4-partial-3.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.1.4-rollback-3.zip";}s:7:"current";s:5:"4.1.4";s:7:"version";s:5:"4.1.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:5:"4.1.3";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1430332625;s:15:"version_checked";s:5:"4.1.3";s:12:"translations";a:0:{}}', 'yes'),
(151, '_site_transient_timeout_wporg_theme_feature_list', '1429849463', 'yes'),
(152, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(154, 'current_theme', '2015 Devindry Theme', 'yes'),
(155, 'theme_mods__tk-master', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1430243027;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(159, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1429839004;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(224, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(227, 'recently_activated', 'a:0:{}', 'yes'),
(230, 'theme_mods_devindrytheme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(235, 'servicios_children', 'a:0:{}', 'yes'),
(241, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}', 'yes'),
(242, 'ml-slider_children', 'a:0:{}', 'yes'),
(250, 'category_children', 'a:0:{}', 'yes'),
(305, '_site_transient_timeout_browser_8573ab448203183ab7511e8ef5367263', '1430839932', 'yes'),
(306, '_site_transient_browser_8573ab448203183ab7511e8ef5367263', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"37.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(320, '_transient_timeout_plugin_slugs', '1430347878', 'no'),
(321, '_transient_plugin_slugs', 'a:5:{i:0;s:19:"akismet/akismet.php";i:1;s:43:"devindry_portafolio/devindry_portafolio.php";i:2;s:37:"disable-comments/disable-comments.php";i:3;s:9:"hello.php";i:4;s:23:"ml-slider/ml-slider.php";}', 'no'),
(330, '_site_transient_timeout_available_translations', '1430248766', 'yes'),
(331, '_site_transient_available_translations', 'a:55:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-04-21 15:46:45";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.3/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 14:15:41";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.3/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 14:19:26";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 14:22:49";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-04-22 06:13:16";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.3/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 14:30:22";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.3/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 14:32:23";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 14:34:24";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 14:38:25";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-04-15 12:48:44";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.3/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 14:44:26";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 14:42:35";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 14:46:15";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 14:48:12";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.3/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 14:50:12";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 14:54:32";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 14:56:31";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-27 08:55:29";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.3/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 15:03:17";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-04-21 06:21:33";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.3/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 15:08:29";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 15:14:57";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.3/haz.zip";s:3:"iso";a:2:{i:1;s:3:"haz";i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-04-08 22:28:26";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 15:25:25";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.3/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 15:27:28";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 15:29:34";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-04-22 13:36:50";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 15:33:39";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 15:35:42";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.3/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-04-20 11:48:55";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 15:47:56";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:7:"Burmese";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 15:59:41";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 16:02:30";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-04-16 06:38:46";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 16:07:08";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.3/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 16:11:07";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 16:14:41";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-27 14:48:56";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 16:19:48";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 16:23:44";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-04-20 08:33:09";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.3/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 16:30:35";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-04-23 20:21:44";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-27 00:00:51";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.3/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 16:43:10";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-04-10 12:55:55";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.3/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.1.3";s:7:"updated";s:19:"2015-03-26 16:55:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.3/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.1";s:7:"updated";s:19:"2014-12-26 02:21:02";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(338, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1430272006', 'yes'),
(339, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5152";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3225";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3156";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2683";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2467";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"1979";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1858";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1818";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1763";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1743";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1705";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1699";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1589";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1395";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1345";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1271";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1199";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1147";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1129";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:3:"993";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"965";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"917";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"884";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"877";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"855";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"839";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"798";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"774";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"747";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"728";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"721";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"715";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"684";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"676";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"672";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"662";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"638";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"628";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"627";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"627";}}', 'yes'),
(347, 'disable_comments_options', 'a:5:{s:19:"disabled_post_types";a:3:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:10:"attachment";}s:17:"remove_everywhere";b:1;s:9:"permanent";b:0;s:16:"extra_post_types";b:0;s:10:"db_version";i:6;}', 'yes'),
(370, '_site_transient_timeout_theme_roots', '1430334425', 'yes'),
(371, '_site_transient_theme_roots', 'a:5:{s:10:"_tk-master";s:7:"/themes";s:13:"devindrytheme";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(372, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1430332625;}', 'yes'),
(373, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1430332625;}', 'yes'),
(374, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1430377120', 'no'),
(375, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>Error en el RSS:</strong> WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>Error en el RSS:</strong> WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(391, '_transient_is_multi_author', '0', 'yes'),
(392, '_transient_all_the_cool_cats', '2', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=179 ;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 2, '_wp_trash_meta_status', 'publish'),
(5, 2, '_wp_trash_meta_time', '1429924408'),
(6, 6, '_edit_last', '1'),
(7, 6, '_edit_lock', '1430338810:1'),
(8, 8, '_edit_last', '1'),
(9, 8, '_edit_lock', '1430344455:1'),
(10, 10, '_edit_last', '1'),
(11, 10, '_edit_lock', '1429930559:1'),
(12, 12, '_edit_last', '1'),
(13, 12, '_edit_lock', '1429930577:1'),
(14, 14, '_edit_last', '1'),
(15, 14, '_edit_lock', '1429930733:1'),
(16, 16, '_edit_last', '1'),
(18, 16, '_edit_lock', '1430274202:1'),
(19, 18, '_edit_last', '1'),
(21, 18, '_edit_lock', '1430338327:1'),
(22, 20, '_edit_last', '1'),
(24, 20, '_edit_lock', '1430338307:1'),
(25, 22, '_edit_last', '1'),
(26, 22, '_edit_lock', '1430078134:1'),
(28, 24, '_edit_last', '1'),
(30, 24, '_edit_lock', '1430078177:1'),
(40, 27, '_menu_item_type', 'post_type'),
(41, 27, '_menu_item_menu_item_parent', '0'),
(42, 27, '_menu_item_object_id', '12'),
(43, 27, '_menu_item_object', 'page'),
(44, 27, '_menu_item_target', ''),
(45, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(46, 27, '_menu_item_xfn', ''),
(47, 27, '_menu_item_url', ''),
(49, 28, '_menu_item_type', 'post_type'),
(50, 28, '_menu_item_menu_item_parent', '0'),
(51, 28, '_menu_item_object_id', '8'),
(52, 28, '_menu_item_object', 'page'),
(53, 28, '_menu_item_target', ''),
(54, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(55, 28, '_menu_item_xfn', ''),
(56, 28, '_menu_item_url', ''),
(58, 29, '_menu_item_type', 'post_type'),
(59, 29, '_menu_item_menu_item_parent', '0'),
(60, 29, '_menu_item_object_id', '14'),
(61, 29, '_menu_item_object', 'page'),
(62, 29, '_menu_item_target', ''),
(63, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(64, 29, '_menu_item_xfn', ''),
(65, 29, '_menu_item_url', ''),
(67, 30, '_menu_item_type', 'post_type'),
(68, 30, '_menu_item_menu_item_parent', '0'),
(69, 30, '_menu_item_object_id', '10'),
(70, 30, '_menu_item_object', 'page'),
(71, 30, '_menu_item_target', ''),
(72, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(73, 30, '_menu_item_xfn', ''),
(74, 30, '_menu_item_url', ''),
(76, 31, '_menu_item_type', 'post_type'),
(77, 31, '_menu_item_menu_item_parent', '0'),
(78, 31, '_menu_item_object_id', '6'),
(79, 31, '_menu_item_object', 'page'),
(80, 31, '_menu_item_target', ''),
(81, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(82, 31, '_menu_item_xfn', ''),
(83, 31, '_menu_item_url', ''),
(85, 32, '_menu_item_type', 'post_type'),
(86, 32, '_menu_item_menu_item_parent', '0'),
(87, 32, '_menu_item_object_id', '14'),
(88, 32, '_menu_item_object', 'page'),
(89, 32, '_menu_item_target', ''),
(90, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(91, 32, '_menu_item_xfn', ''),
(92, 32, '_menu_item_url', ''),
(93, 32, '_menu_item_orphaned', '1430078336'),
(94, 33, '_menu_item_type', 'post_type'),
(95, 33, '_menu_item_menu_item_parent', '0'),
(96, 33, '_menu_item_object_id', '12'),
(97, 33, '_menu_item_object', 'page'),
(98, 33, '_menu_item_target', ''),
(99, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(100, 33, '_menu_item_xfn', ''),
(101, 33, '_menu_item_url', ''),
(102, 33, '_menu_item_orphaned', '1430078336'),
(103, 34, '_menu_item_type', 'post_type'),
(104, 34, '_menu_item_menu_item_parent', '0'),
(105, 34, '_menu_item_object_id', '10'),
(106, 34, '_menu_item_object', 'page'),
(107, 34, '_menu_item_target', ''),
(108, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(109, 34, '_menu_item_xfn', ''),
(110, 34, '_menu_item_url', ''),
(111, 34, '_menu_item_orphaned', '1430078337'),
(112, 35, '_menu_item_type', 'post_type'),
(113, 35, '_menu_item_menu_item_parent', '0'),
(114, 35, '_menu_item_object_id', '8'),
(115, 35, '_menu_item_object', 'page'),
(116, 35, '_menu_item_target', ''),
(117, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(118, 35, '_menu_item_xfn', ''),
(119, 35, '_menu_item_url', ''),
(120, 35, '_menu_item_orphaned', '1430078337'),
(121, 36, '_menu_item_type', 'post_type'),
(122, 36, '_menu_item_menu_item_parent', '0'),
(123, 36, '_menu_item_object_id', '6'),
(124, 36, '_menu_item_object', 'page'),
(125, 36, '_menu_item_target', ''),
(126, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(127, 36, '_menu_item_xfn', ''),
(128, 36, '_menu_item_url', ''),
(129, 36, '_menu_item_orphaned', '1430078338'),
(131, 38, '_edit_last', '1'),
(132, 38, '_edit_lock', '1430093798:1'),
(135, 40, 'ml-slider_settings', 'a:35:{s:4:"type";s:4:"flex";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:4:"1062";s:6:"height";s:3:"708";s:3:"spw";i:7;s:3:"sph";i:5;s:5:"delay";s:4:"3000";s:6:"sDelay";i:30;s:7:"opacity";d:0.69999999999999996;s:10:"titleSpeed";i:500;s:6:"effect";s:4:"fade";s:10:"navigation";s:4:"true";s:5:"links";s:4:"true";s:10:"hoverPause";s:4:"true";s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:3:"600";s:8:"prevText";s:1:"<";s:8:"nextText";s:1:">";s:6:"slices";i:15;s:6:"center";s:5:"false";s:9:"smartCrop";s:4:"true";s:12:"carouselMode";s:5:"false";s:14:"carouselMargin";s:1:"5";s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:9:"fullWidth";s:5:"false";s:10:"noConflict";s:4:"true";s:12:"smoothHeight";s:5:"false";}'),
(136, 41, '_edit_last', '1'),
(138, 41, '_edit_lock', '1430097364:1'),
(139, 43, '_wp_attached_file', '2015/04/home.jpg'),
(140, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1056;s:6:"height";i:606;s:4:"file";s:16:"2015/04/home.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"home-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"home-300x172.jpg";s:5:"width";i:300;s:6:"height";i:172;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"home-1024x588.jpg";s:5:"width";i:1024;s:6:"height";i:588;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(141, 43, 'ml-slider_type', 'image'),
(142, 43, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-700x300";a:5:{s:4:"path";s:67:"C:wampwwwempackgraphics/wp-content/uploads/2015/04/home-700x300.jpg";s:4:"file";s:16:"home-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}'),
(143, 43, 'ml-slider_crop_position', 'center-center'),
(144, 43, '_wp_attachment_image_alt', ''),
(145, 44, '_edit_last', '1'),
(146, 44, '_edit_lock', '1430263245:1'),
(147, 47, '_wp_attached_file', '2015/04/green-icon.png'),
(148, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:18;s:6:"height";i:19;s:4:"file";s:22:"2015/04/green-icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(149, 49, '_wp_attached_file', '2015/04/1slider.png'),
(150, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:994;s:6:"height";i:601;s:4:"file";s:19:"2015/04/1slider.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"1slider-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"1slider-300x181.png";s:5:"width";i:300;s:6:"height";i:181;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(151, 49, 'ml-slider_type', 'image'),
(152, 49, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-994x570";a:5:{s:4:"path";s:70:"C:wampwwwempackgraphics/wp-content/uploads/2015/04/1slider-994x570.png";s:4:"file";s:19:"1slider-994x570.png";s:5:"width";i:994;s:6:"height";i:570;s:9:"mime-type";s:9:"image/png";}}'),
(153, 49, 'ml-slider_crop_position', 'center-center'),
(154, 49, '_wp_attachment_image_alt', ''),
(155, 51, '_wp_attached_file', '2015/04/1slider1.png'),
(156, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1031;s:6:"height";i:558;s:4:"file";s:20:"2015/04/1slider1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"1slider1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"1slider1-300x162.png";s:5:"width";i:300;s:6:"height";i:162;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:21:"1slider1-1024x554.png";s:5:"width";i:1024;s:6:"height";i:554;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(157, 51, 'ml-slider_type', 'image'),
(158, 51, '_wp_attachment_backup_sizes', 'a:1:{s:15:"resized-972x558";a:5:{s:4:"path";s:71:"C:wampwwwempackgraphics/wp-content/uploads/2015/04/1slider1-972x558.png";s:4:"file";s:20:"1slider1-972x558.png";s:5:"width";i:972;s:6:"height";i:558;s:9:"mime-type";s:9:"image/png";}}'),
(159, 51, 'ml-slider_crop_position', 'center-center'),
(160, 51, '_wp_attachment_image_alt', ''),
(161, 52, '_wp_attached_file', '2015/04/slide-1.png'),
(162, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1062;s:6:"height";i:708;s:4:"file";s:19:"2015/04/slide-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slide-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"slide-1-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"slide-1-1024x683.png";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(163, 52, 'ml-slider_type', 'image'),
(164, 52, '_wp_attachment_backup_sizes', 'a:1:{s:16:"resized-1056x606";a:5:{s:4:"path";s:71:"C:wampwwwempackgraphics/wp-content/uploads/2015/04/slide-1-1056x606.png";s:4:"file";s:20:"slide-1-1056x606.png";s:5:"width";i:1056;s:6:"height";i:606;s:9:"mime-type";s:9:"image/png";}}'),
(165, 53, '_wp_attached_file', '2015/04/slide-2.png'),
(166, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1062;s:6:"height";i:708;s:4:"file";s:19:"2015/04/slide-2.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"slide-2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:19:"slide-2-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"slide-2-1024x683.png";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(167, 53, 'ml-slider_type', 'image'),
(168, 53, '_wp_attachment_backup_sizes', 'a:1:{s:16:"resized-1056x606";a:5:{s:4:"path";s:71:"C:wampwwwempackgraphics/wp-content/uploads/2015/04/slide-2-1056x606.png";s:4:"file";s:20:"slide-2-1056x606.png";s:5:"width";i:1056;s:6:"height";i:606;s:9:"mime-type";s:9:"image/png";}}'),
(169, 52, 'ml-slider_crop_position', 'center-center'),
(170, 52, '_wp_attachment_image_alt', ''),
(171, 53, 'ml-slider_crop_position', 'center-center'),
(172, 53, '_wp_attachment_image_alt', ''),
(173, 54, '_wp_attached_file', '2015/04/slide-21.png'),
(174, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1062;s:6:"height";i:708;s:4:"file";s:20:"2015/04/slide-21.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"slide-21-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"slide-21-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:21:"slide-21-1024x683.png";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(175, 54, 'ml-slider_type', 'image'),
(176, 54, 'ml-slider_crop_position', 'center-center'),
(177, 54, '_wp_attachment_image_alt', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-04-23 03:47:14', '2015-04-23 03:47:14', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2015-04-23 03:47:14', '2015-04-23 03:47:14', '', 0, 'http://localhost:8080/empackgraphics/?p=1', 0, 'post', '', 1),
(2, 1, '2015-04-23 03:47:14', '2015-04-23 03:47:14', 'Esto es una página de ejemplo. Es diferente a una entrada porque permanece fija en un lugar y se mostrará en la navegación de tu sitio (en la mayoría de los temas). La mayoría de la gente empieza con una página de Acerca de, que les presenta a los potenciales visitantes del sitio. Podría ser algo como esto:\n\n<blockquote>¡Hola! Soy mensajero por el día, aspirante a actor por la noche, y este es mi blog. Vivo en Madrid, tengo un perrazo llamado Duque y me gustan las piñas coladas (y que me pille un chaparrón)</blockquote>\n\n...o algo así:\n\n<blockquote>La empresa XYZ se fundó en 1971 y ha estado ofreciendo "cosas" de calidad al público desde entonces. Situada en Madrid, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas sorprendentes para la comunidad de Madrid.</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href="http://localhost:8080/empackgraphics/wp-admin/">tu escritorio</a> para borrar esta página y crear páginas nuevas con tu propio contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'trash', 'open', 'open', '', 'pagina-ejemplo', '', '', '2015-04-24 19:13:28', '2015-04-25 01:13:28', '', 0, 'http://localhost:8080/empackgraphics/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-04-22 21:47:36', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-22 21:47:36', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/empackgraphics/?p=3', 0, 'post', '', 0),
(5, 1, '2015-04-24 19:13:28', '2015-04-25 01:13:28', 'Esto es una página de ejemplo. Es diferente a una entrada porque permanece fija en un lugar y se mostrará en la navegación de tu sitio (en la mayoría de los temas). La mayoría de la gente empieza con una página de Acerca de, que les presenta a los potenciales visitantes del sitio. Podría ser algo como esto:\n\n<blockquote>¡Hola! Soy mensajero por el día, aspirante a actor por la noche, y este es mi blog. Vivo en Madrid, tengo un perrazo llamado Duque y me gustan las piñas coladas (y que me pille un chaparrón)</blockquote>\n\n...o algo así:\n\n<blockquote>La empresa XYZ se fundó en 1971 y ha estado ofreciendo "cosas" de calidad al público desde entonces. Situada en Madrid, XYZ emplea a más de 2.000 personas y hace todo tipo de cosas sorprendentes para la comunidad de Madrid.</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href="http://localhost:8080/empackgraphics/wp-admin/">tu escritorio</a> para borrar esta página y crear páginas nuevas con tu propio contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-24 19:13:28', '2015-04-25 01:13:28', '', 2, 'http://localhost:8080/empackgraphics/?p=5', 0, 'revision', '', 0),
(6, 1, '2015-04-24 19:14:13', '2015-04-25 01:14:13', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/engranes.png"/>\r\n</div>\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/nosotros-circle.png"/>\r\n<div class="nosotros-text">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\r\n</div>\r\n</div>\r\n</div>\r\n', 'QUIENES SOMOS', '', 'publish', 'closed', 'closed', '', 'quienes-somos', '', '', '2015-04-28 22:06:06', '2015-04-29 04:06:06', '', 0, 'http://localhost:8080/empackgraphics/?page_id=6', 0, 'page', '', 0),
(7, 1, '2015-04-24 19:14:13', '2015-04-25 01:14:13', '', 'QUIENES SOMOS', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2015-04-24 19:14:13', '2015-04-25 01:14:13', '', 6, 'http://localhost:8080/empackgraphics/?p=7', 0, 'revision', '', 0),
(8, 1, '2015-04-24 19:14:35', '2015-04-25 01:14:35', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/servicios-circle.png"/>\r\n<div class="nosotros-text">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\r\n</div>\r\n</div>\r\n<div class="col-sm-6">\r\n<p class="grua"></p>\r\n<p class="pantone"></p>\r\n<p class="bottles"></p>\r\n<p class="a-lines"></p>\r\n</div>\r\n</div>\r\n\r\n', 'SERVICIOS', '', 'publish', 'closed', 'closed', '', 'servicios', '', '', '2015-04-29 15:54:14', '2015-04-29 21:54:14', '', 0, 'http://localhost:8080/empackgraphics/?page_id=8', 0, 'page', '', 0),
(9, 1, '2015-04-24 19:14:35', '2015-04-25 01:14:35', '', 'CLIENTES', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-24 19:14:35', '2015-04-25 01:14:35', '', 8, 'http://localhost:8080/empackgraphics/?p=9', 0, 'revision', '', 0),
(10, 1, '2015-04-24 20:58:15', '2015-04-25 02:58:15', '', 'PORTAFOLIO', '', 'publish', 'open', 'open', '', 'portafolio', '', '', '2015-04-24 20:58:15', '2015-04-25 02:58:15', '', 0, 'http://localhost:8080/empackgraphics/?page_id=10', 0, 'page', '', 0),
(11, 1, '2015-04-24 20:58:15', '2015-04-25 02:58:15', '', 'PORTAFOLIO', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2015-04-24 20:58:15', '2015-04-25 02:58:15', '', 10, 'http://localhost:8080/empackgraphics/?p=11', 0, 'revision', '', 0),
(12, 1, '2015-04-24 20:58:32', '2015-04-25 02:58:32', '', 'BLOG', '', 'publish', 'open', 'open', '', 'blog', '', '', '2015-04-24 20:58:32', '2015-04-25 02:58:32', '', 0, 'http://localhost:8080/empackgraphics/?page_id=12', 0, 'page', '', 0),
(13, 1, '2015-04-24 20:58:32', '2015-04-25 02:58:32', '', 'BLOG', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-24 20:58:32', '2015-04-25 02:58:32', '', 12, 'http://localhost:8080/empackgraphics/?p=13', 0, 'revision', '', 0),
(14, 1, '2015-04-24 20:58:50', '2015-04-25 02:58:50', '', 'CONTACTO', '', 'publish', 'open', 'open', '', 'contacto', '', '', '2015-04-24 20:58:50', '2015-04-25 02:58:50', '', 0, 'http://localhost:8080/empackgraphics/?page_id=14', 0, 'page', '', 0),
(15, 1, '2015-04-24 20:58:50', '2015-04-25 02:58:50', '', 'CONTACTO', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2015-04-24 20:58:50', '2015-04-25 02:58:50', '', 14, 'http://localhost:8080/empackgraphics/?p=15', 0, 'revision', '', 0),
(16, 1, '2015-04-26 13:54:37', '2015-04-26 19:54:37', '', 'QUIENES SOMOS', '', 'publish', 'open', 'open', '', 'quienes-somos', '', '', '2015-04-26 17:59:05', '2015-04-26 23:59:05', '', 0, 'http://localhost:8080/empackgraphics/?p=16', 0, 'post', '', 0),
(17, 1, '2015-04-26 13:54:37', '2015-04-26 19:54:37', '', 'Quienes somos', '', 'inherit', 'open', 'open', '', '16-revision-v1', '', '', '2015-04-26 13:54:37', '2015-04-26 19:54:37', '', 16, 'http://localhost:8080/empackgraphics/?p=17', 0, 'revision', '', 0),
(18, 1, '2015-04-26 13:56:07', '2015-04-26 19:56:07', '', 'SERVICIOS', '', 'publish', 'closed', 'closed', '', 'clientes', '', '', '2015-04-29 14:14:27', '2015-04-29 20:14:27', '', 0, 'http://localhost:8080/empackgraphics/?p=18', 0, 'post', '', 0),
(19, 1, '2015-04-26 13:56:07', '2015-04-26 19:56:07', '', 'CLIENTES', '', 'inherit', 'open', 'open', '', '18-revision-v1', '', '', '2015-04-26 13:56:07', '2015-04-26 19:56:07', '', 18, 'http://localhost:8080/empackgraphics/?p=19', 0, 'revision', '', 0),
(20, 1, '2015-04-26 13:56:51', '2015-04-26 19:56:51', '', 'PORTAFOLIO', '', 'publish', 'open', 'open', '', 'portafolio', '', '', '2015-04-26 13:56:51', '2015-04-26 19:56:51', '', 0, 'http://localhost:8080/empackgraphics/?p=20', 0, 'post', '', 0),
(21, 1, '2015-04-26 13:56:51', '2015-04-26 19:56:51', '', 'PORTAFOLIO', '', 'inherit', 'open', 'open', '', '20-revision-v1', '', '', '2015-04-26 13:56:51', '2015-04-26 19:56:51', '', 20, 'http://localhost:8080/empackgraphics/?p=21', 0, 'revision', '', 0),
(22, 1, '2015-04-26 13:57:33', '2015-04-26 19:57:33', '', 'BLOG', '', 'publish', 'open', 'open', '', 'blog', '', '', '2015-04-26 13:57:33', '2015-04-26 19:57:33', '', 0, 'http://localhost:8080/empackgraphics/?p=22', 0, 'post', '', 0),
(23, 1, '2015-04-26 13:57:33', '2015-04-26 19:57:33', '', 'BLOG', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2015-04-26 13:57:33', '2015-04-26 19:57:33', '', 22, 'http://localhost:8080/empackgraphics/?p=23', 0, 'revision', '', 0),
(24, 1, '2015-04-26 13:58:15', '2015-04-26 19:58:15', '', 'CONTACTO', '', 'publish', 'open', 'open', '', 'contacto', '', '', '2015-04-26 13:58:15', '2015-04-26 19:58:15', '', 0, 'http://localhost:8080/empackgraphics/?p=24', 0, 'post', '', 0),
(25, 1, '2015-04-26 13:58:15', '2015-04-26 19:58:15', '', 'CONTACTO', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2015-04-26 13:58:15', '2015-04-26 19:58:15', '', 24, 'http://localhost:8080/empackgraphics/?p=25', 0, 'revision', '', 0),
(27, 1, '2015-04-26 14:00:37', '2015-04-26 20:00:37', ' ', '', '', 'publish', 'open', 'open', '', '27', '', '', '2015-04-29 14:13:32', '2015-04-29 20:13:32', '', 0, 'http://localhost:8080/empackgraphics/?p=27', 4, 'nav_menu_item', '', 0),
(28, 1, '2015-04-26 14:00:37', '2015-04-26 20:00:37', '', 'SERVICIOS', '', 'publish', 'open', 'open', '', '28', '', '', '2015-04-29 14:13:32', '2015-04-29 20:13:32', '', 0, 'http://localhost:8080/empackgraphics/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2015-04-26 14:00:37', '2015-04-26 20:00:37', ' ', '', '', 'publish', 'open', 'open', '', '29', '', '', '2015-04-29 14:13:32', '2015-04-29 20:13:32', '', 0, 'http://localhost:8080/empackgraphics/?p=29', 5, 'nav_menu_item', '', 0),
(30, 1, '2015-04-26 14:00:37', '2015-04-26 20:00:37', ' ', '', '', 'publish', 'open', 'open', '', '30', '', '', '2015-04-29 14:13:32', '2015-04-29 20:13:32', '', 0, 'http://localhost:8080/empackgraphics/?p=30', 3, 'nav_menu_item', '', 0),
(31, 1, '2015-04-26 14:00:36', '2015-04-26 20:00:36', ' ', '', '', 'publish', 'open', 'open', '', '31', '', '', '2015-04-29 14:13:32', '2015-04-29 20:13:32', '', 0, 'http://localhost:8080/empackgraphics/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2015-04-26 13:58:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-26 13:58:55', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/empackgraphics/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2015-04-26 13:58:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-26 13:58:56', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/empackgraphics/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2015-04-26 13:58:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-26 13:58:56', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/empackgraphics/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2015-04-26 13:58:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-26 13:58:57', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/empackgraphics/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2015-04-26 13:58:57', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-26 13:58:57', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/empackgraphics/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2015-04-26 17:59:05', '2015-04-26 23:59:05', '', 'QUIENES SOMOS', '', 'inherit', 'open', 'open', '', '16-revision-v1', '', '', '2015-04-26 17:59:05', '2015-04-26 23:59:05', '', 16, 'http://localhost:8080/empackgraphics/?p=37', 0, 'revision', '', 0),
(38, 1, '2015-04-26 18:18:41', '2015-04-27 00:18:41', '', 'Botella', '', 'publish', 'closed', 'closed', '', 'botella', '', '', '2015-04-26 18:18:41', '2015-04-27 00:18:41', '', 0, 'http://localhost:8080/empackgraphics/?post_type=dev_portafolio&#038;p=38', 0, 'dev_portafolio', '', 0),
(40, 1, '2015-04-26 18:21:46', '2015-04-27 00:21:46', '', 'New Slider', '', 'publish', 'open', 'open', '', 'new-slider', '', '', '2015-04-28 14:08:38', '2015-04-28 20:08:38', '', 0, 'http://localhost:8080/empackgraphics/?post_type=ml-slider&#038;p=40', 0, 'ml-slider', '', 0),
(41, 1, '2015-04-26 19:06:58', '2015-04-27 01:06:58', '', 'Bote', '', 'publish', 'open', 'open', '', 'bote', '', '', '2015-04-26 19:06:58', '2015-04-27 01:06:58', '', 0, 'http://localhost:8080/empackgraphics/?p=41', 0, 'post', '', 0),
(42, 1, '2015-04-26 19:06:58', '2015-04-27 01:06:58', '', 'Bote', '', 'inherit', 'open', 'open', '', '41-revision-v1', '', '', '2015-04-26 19:06:58', '2015-04-27 01:06:58', '', 41, 'http://localhost:8080/empackgraphics/?p=42', 0, 'revision', '', 0),
(43, 1, '2015-04-26 19:07:53', '2015-04-27 01:07:53', '', 'home', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at interdum felis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque imperdiet est mauris, sed molestie lectus posuere quis. Nullam vehicula bibendum egestas. Nunc ac turpis molestie, ultricies quam nec, lacinia dui. Fusce vitae dui id lacus malesuada lacinia. Suspendisse eleifend faucibus sem eget tempor. Nullam fermentum lacus vitae lorem interdum placerat. Etiam metus augue, facilisis id leo vitae, placerat viverra augue.', 'inherit', 'open', 'open', '', 'home', '', '', '2015-04-26 22:29:32', '2015-04-27 04:29:32', '', 0, 'http://localhost:8080/empackgraphics/wp-content/uploads/2015/04/home.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2015-04-26 19:11:39', '2015-04-27 01:11:39', '[metaslider id=40]', 'INICIO', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2015-04-28 17:19:59', '2015-04-28 23:19:59', '', 0, 'http://localhost:8080/empackgraphics/?page_id=44', 0, 'page', '', 0),
(45, 1, '2015-04-26 19:11:39', '2015-04-27 01:11:39', '', 'INICIO', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2015-04-26 19:11:39', '2015-04-27 01:11:39', '', 44, 'http://localhost:8080/empackgraphics/?p=45', 0, 'revision', '', 0),
(46, 1, '2015-04-26 19:20:55', '2015-04-27 01:20:55', '[metaslider id=40]', 'INICIO', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2015-04-26 19:20:55', '2015-04-27 01:20:55', '', 44, 'http://localhost:8080/empackgraphics/?p=46', 0, 'revision', '', 0),
(47, 1, '2015-04-26 20:52:06', '2015-04-27 02:52:06', '', 'green-icon', '', 'inherit', 'open', 'open', '', 'green-icon', '', '', '2015-04-26 20:52:06', '2015-04-27 02:52:06', '', 0, 'http://localhost:8080/empackgraphics/wp-content/uploads/2015/04/green-icon.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2015-04-26 21:47:59', '2015-04-27 03:47:59', '', 'INICIO', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2015-04-26 21:47:59', '2015-04-27 03:47:59', '', 44, 'http://localhost:8080/empackgraphics/?p=48', 0, 'revision', '', 0),
(49, 1, '2015-04-26 22:28:46', '2015-04-27 04:28:46', '', '1slider', '', 'inherit', 'open', 'open', '', '1slider', '', '', '2015-04-27 18:12:25', '2015-04-28 00:12:25', '', 0, 'http://localhost:8080/empackgraphics/wp-content/uploads/2015/04/1slider.png', 2, 'attachment', 'image/png', 0),
(50, 1, '2015-04-26 22:30:08', '2015-04-27 04:30:08', '[metaslider id=40]', 'INICIO', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2015-04-26 22:30:08', '2015-04-27 04:30:08', '', 44, 'http://localhost:8080/empackgraphics/?p=50', 0, 'revision', '', 0),
(51, 1, '2015-04-26 22:41:38', '2015-04-27 04:41:38', '', '1slider', '', 'inherit', 'open', 'open', '', '1slider-2', '', '', '2015-04-27 18:12:25', '2015-04-28 00:12:25', '', 0, 'http://localhost:8080/empackgraphics/wp-content/uploads/2015/04/1slider1.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2015-04-27 20:11:08', '2015-04-28 02:11:08', '', 'slide-1', '', 'inherit', 'open', 'open', '', 'slide-1', '', '', '2015-04-28 14:08:38', '2015-04-28 20:08:38', '', 0, 'http://localhost:8080/empackgraphics/wp-content/uploads/2015/04/slide-1.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2015-04-27 20:12:14', '2015-04-28 02:12:14', '', 'slide-2', '', 'inherit', 'open', 'open', '', 'slide-2', '', '', '2015-04-27 20:12:31', '2015-04-28 02:12:31', '', 0, 'http://localhost:8080/empackgraphics/wp-content/uploads/2015/04/slide-2.png', 1, 'attachment', 'image/png', 0),
(54, 1, '2015-04-28 14:08:33', '2015-04-28 20:08:33', '', 'slide-2', '', 'inherit', 'open', 'open', '', 'slide-2-2', '', '', '2015-04-28 14:08:38', '2015-04-28 20:08:38', '', 0, 'http://localhost:8080/empackgraphics/wp-content/uploads/2015/04/slide-21.png', 1, 'attachment', 'image/png', 0),
(55, 1, '2015-04-28 16:49:04', '2015-04-28 22:49:04', 'Quienes', 'QUIENES SOMOS', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2015-04-28 16:49:04', '2015-04-28 22:49:04', '', 6, 'http://localhost:8080/empackgraphics/?p=55', 0, 'revision', '', 0),
(56, 1, '2015-04-28 17:19:43', '2015-04-28 23:19:43', '', 'INICIO', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2015-04-28 17:19:43', '2015-04-28 23:19:43', '', 44, 'http://localhost:8080/empackgraphics/?p=56', 0, 'revision', '', 0),
(57, 1, '2015-04-28 17:19:59', '2015-04-28 23:19:59', '[metaslider id=40]', 'INICIO', '', 'inherit', 'open', 'open', '', '44-revision-v1', '', '', '2015-04-28 17:19:59', '2015-04-28 23:19:59', '', 44, 'http://localhost:8080/empackgraphics/?p=57', 0, 'revision', '', 0),
(58, 1, '2015-04-28 22:06:02', '2015-04-29 04:06:02', '<div class="row">\n<div class="col-sm-6">\n<img src = "wp-content/themes/devindrytheme/assets/engranes.png"/>\n</div>\n<div class="col-sm-6">\n<img src = "/empackgraphics/wp-content/themes/devindrytheme/assets/nosotros-circle.png"/>\n<div class="nosotros-text">\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\n</div>\n</div>\n</div>\n', 'QUIENES SOMOS', '', 'inherit', 'open', 'open', '', '6-autosave-v1', '', '', '2015-04-28 22:06:02', '2015-04-29 04:06:02', '', 6, 'http://localhost:8080/empackgraphics/?p=58', 0, 'revision', '', 0),
(59, 1, '2015-04-28 21:49:53', '2015-04-29 03:49:53', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "/empackgraphics/wp-content/themes/devindrytheme/assets/engranes.png"/>\r\n</div>\r\n<div class="col-sm-6">\r\n<img src = "/empackgraphics/wp-content/themes/devindrytheme/assets/nosotros.png"/>\r\n<div class="nosotros-text">\r\n<p>Tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</p>\r\n</div>\r\n</div>\r\n</div>\r\n', 'QUIENES SOMOS', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2015-04-28 21:49:53', '2015-04-29 03:49:53', '', 6, 'http://localhost:8080/empackgraphics/?p=59', 0, 'revision', '', 0),
(60, 1, '2015-04-28 21:52:18', '2015-04-29 03:52:18', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "/empackgraphics/wp-content/themes/devindrytheme/assets/engranes.png"/>\r\n</div>\r\n<div class="col-sm-6">\r\n<img src = "/empackgraphics/wp-content/themes/devindrytheme/assets/nosotros.png"/>\r\n<div class="nosotros-text">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\r\n</div>\r\n</div>\r\n</div>\r\n', 'QUIENES SOMOS', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2015-04-28 21:52:18', '2015-04-29 03:52:18', '', 6, 'http://localhost:8080/empackgraphics/?p=60', 0, 'revision', '', 0),
(61, 1, '2015-04-28 22:01:56', '2015-04-29 04:01:56', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "/empackgraphics/wp-content/themes/devindrytheme/assets/engranes.png"/>\r\n</div>\r\n<div class="col-sm-6">\r\n<img src = "/empackgraphics/wp-content/themes/devindrytheme/assets/nosotros-circle.png"/>\r\n<div class="nosotros-text">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\r\n</div>\r\n</div>\r\n</div>\r\n', 'QUIENES SOMOS', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2015-04-28 22:01:56', '2015-04-29 04:01:56', '', 6, 'http://localhost:8080/empackgraphics/?p=61', 0, 'revision', '', 0),
(62, 1, '2015-04-28 22:06:06', '2015-04-29 04:06:06', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/engranes.png"/>\r\n</div>\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/nosotros-circle.png"/>\r\n<div class="nosotros-text">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\r\n</div>\r\n</div>\r\n</div>\r\n', 'QUIENES SOMOS', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2015-04-28 22:06:06', '2015-04-29 04:06:06', '', 6, 'http://localhost:8080/empackgraphics/?p=62', 0, 'revision', '', 0),
(63, 1, '2015-04-29 14:13:46', '2015-04-29 20:13:46', '', 'SERVICIOS', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-29 14:13:46', '2015-04-29 20:13:46', '', 8, 'http://localhost:8080/empackgraphics/?p=63', 0, 'revision', '', 0),
(64, 1, '2015-04-29 14:14:27', '2015-04-29 20:14:27', '', 'SERVICIOS', '', 'inherit', 'open', 'open', '', '18-revision-v1', '', '', '2015-04-29 14:14:27', '2015-04-29 20:14:27', '', 18, 'http://localhost:8080/empackgraphics/?p=64', 0, 'revision', '', 0),
(65, 1, '2015-04-29 15:50:41', '2015-04-29 21:50:41', '<div class="row">\n<div class="col-sm-6">\n<img src = "wp-content/themes/devindrytheme/assets/servicios-circle.png"/>\n<div class="nosotros-text">\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\n</div>\n</div>\n<div class="col-sm-6">\n<p class="class="grua"></p>\n<p class="class="pantone"></p>\n<p class="class="bottles"></p>\n<p class="class="a-lines"></p>\n</div>\n</div>\n\n', 'SERVICIOS', '', 'inherit', 'open', 'open', '', '8-autosave-v1', '', '', '2015-04-29 15:50:41', '2015-04-29 21:50:41', '', 8, 'http://localhost:8080/empackgraphics/?p=65', 0, 'revision', '', 0),
(66, 1, '2015-04-29 14:34:04', '2015-04-29 20:34:04', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/engranes.png"/>\r\n</div>\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/nosotros-circle.png"/>\r\n<div class="nosotros-text">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\r\n</div>\r\n</div>\r\n</div>\r\n', 'SERVICIOS', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-29 14:34:04', '2015-04-29 20:34:04', '', 8, 'http://localhost:8080/empackgraphics/?p=66', 0, 'revision', '', 0),
(67, 1, '2015-04-29 14:35:44', '2015-04-29 20:35:44', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/nosotros-circle.png"/>\r\n<div class="nosotros-text">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\r\n</div>\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/engranes.png"/>\r\n</div>\r\n</div>\r\n</div>\r\n', 'SERVICIOS', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-29 14:35:44', '2015-04-29 20:35:44', '', 8, 'http://localhost:8080/empackgraphics/?p=67', 0, 'revision', '', 0),
(68, 1, '2015-04-29 14:37:04', '2015-04-29 20:37:04', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/nosotros-circle.png"/>\r\n<div class="nosotros-text">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\r\n</div>\r\n</div>\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/engranes.png"/>\r\n</div>\r\n</div>\r\n\r\n', 'SERVICIOS', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-29 14:37:04', '2015-04-29 20:37:04', '', 8, 'http://localhost:8080/empackgraphics/?p=68', 0, 'revision', '', 0),
(69, 1, '2015-04-29 14:37:23', '2015-04-29 20:37:23', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/servicios-circle.png"/>\r\n<div class="nosotros-text">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\r\n</div>\r\n</div>\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/engranes.png"/>\r\n</div>\r\n</div>\r\n\r\n', 'SERVICIOS', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-29 14:37:23', '2015-04-29 20:37:23', '', 8, 'http://localhost:8080/empackgraphics/?p=69', 0, 'revision', '', 0),
(70, 1, '2015-04-29 14:41:47', '2015-04-29 20:41:47', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/servicios-circle.png"/>\r\n<div class="nosotros-text">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\r\n</div>\r\n</div>\r\n<div class="col-sm-6">\r\n<p><img src = "wp-content/themes/devindrytheme/assets/engranes.png"/></p>\r\n</div>\r\n</div>\r\n\r\n', 'SERVICIOS', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-29 14:41:47', '2015-04-29 20:41:47', '', 8, 'http://localhost:8080/empackgraphics/?p=70', 0, 'revision', '', 0),
(71, 1, '2015-04-29 15:23:57', '2015-04-29 21:23:57', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/servicios-circle.png"/>\r\n<div class="nosotros-text">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\r\n</div>\r\n</div>\r\n<div class="col-sm-6">\r\n<p><img src = "wp-content/themes/devindrytheme/assets/grua-icon.png"/></p>\r\n<p><img src = "wp-content/themes/devindrytheme/assets/pantone-icon.png"/></p>\r\n<p><img src = "wp-content/themes/devindrytheme/assets/bottles-icon.png"/></p>\r\n<p><img src = "wp-content/themes/devindrytheme/assets/a-icon.png"/></p>\r\n</div>\r\n</div>\r\n\r\n', 'SERVICIOS', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-29 15:23:57', '2015-04-29 21:23:57', '', 8, 'http://localhost:8080/empackgraphics/?p=71', 0, 'revision', '', 0),
(72, 1, '2015-04-29 15:36:04', '2015-04-29 21:36:04', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/servicios-circle.png"/>\r\n<div class="nosotros-text">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\r\n</div>\r\n</div>\r\n<div class="col-sm-6">\r\n<p><span class="grua-icon"/></p>\r\n<p><img src = "wp-content/themes/devindrytheme/assets/pantone-icon.png"/></p>\r\n<p><img src = "wp-content/themes/devindrytheme/assets/bottles-icon.png"/></p>\r\n<p><img src = "wp-content/themes/devindrytheme/assets/a-icon.png"/></p>\r\n</div>\r\n</div>\r\n\r\n', 'SERVICIOS', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-29 15:36:04', '2015-04-29 21:36:04', '', 8, 'http://localhost:8080/empackgraphics/?p=72', 0, 'revision', '', 0),
(73, 1, '2015-04-29 15:41:25', '2015-04-29 21:41:25', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/servicios-circle.png"/>\r\n<div class="nosotros-text">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\r\n</div>\r\n</div>\r\n<div class="col-sm-6">\r\n<span class="grua-icon"/>\r\n<p><img src = "wp-content/themes/devindrytheme/assets/pantone-icon.png"/></p>\r\n<p><img src = "wp-content/themes/devindrytheme/assets/bottles-icon.png"/></p>\r\n<p><img src = "wp-content/themes/devindrytheme/assets/a-icon.png"/></p>\r\n</div>\r\n</div>\r\n\r\n', 'SERVICIOS', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-29 15:41:25', '2015-04-29 21:41:25', '', 8, 'http://localhost:8080/empackgraphics/?p=73', 0, 'revision', '', 0),
(74, 1, '2015-04-29 15:42:37', '2015-04-29 21:42:37', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/servicios-circle.png"/>\r\n<div class="nosotros-text">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\r\n</div>\r\n</div>\r\n<div class="col-sm-6">\r\n<p><span class="grua-icon"/></p>\r\n<p><img src = "wp-content/themes/devindrytheme/assets/pantone-icon.png"/></p>\r\n<p><img src = "wp-content/themes/devindrytheme/assets/bottles-icon.png"/></p>\r\n<p><img src = "wp-content/themes/devindrytheme/assets/a-icon.png"/></p>\r\n</div>\r\n</div>\r\n\r\n', 'SERVICIOS', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-29 15:42:37', '2015-04-29 21:42:37', '', 8, 'http://localhost:8080/empackgraphics/?p=74', 0, 'revision', '', 0),
(75, 1, '2015-04-29 15:53:29', '2015-04-29 21:53:29', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/servicios-circle.png"/>\r\n<div class="nosotros-text">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\r\n</div>\r\n</div>\r\n<div class="col-sm-6">\r\n<p class="class="grua"></p>\r\n<p class="class="pantone"></p>\r\n<p class="class="bottles"></p>\r\n<p class="class="a-lines"></p>\r\n</div>\r\n</div>\r\n\r\n', 'SERVICIOS', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-29 15:53:29', '2015-04-29 21:53:29', '', 8, 'http://localhost:8080/empackgraphics/?p=75', 0, 'revision', '', 0),
(76, 1, '2015-04-29 15:54:14', '2015-04-29 21:54:14', '<div class="row">\r\n<div class="col-sm-6">\r\n<img src = "wp-content/themes/devindrytheme/assets/servicios-circle.png"/>\r\n<div class="nosotros-text">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec. </p>\r\n</div>\r\n</div>\r\n<div class="col-sm-6">\r\n<p class="grua"></p>\r\n<p class="pantone"></p>\r\n<p class="bottles"></p>\r\n<p class="a-lines"></p>\r\n</div>\r\n</div>\r\n\r\n', 'SERVICIOS', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-29 15:54:14', '2015-04-29 21:54:14', '', 8, 'http://localhost:8080/empackgraphics/?p=76', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(2, 'Menu principal', 'menu-principal', 0),
(3, 'botes', 'botes', 0),
(4, 'grua', 'grua', 0),
(5, 'pantones', 'pantones', 0),
(6, 'iconoa', 'iconoa', 0),
(7, 'servicio', 'servicio', 0),
(8, '40', '40', 0),
(9, 'Servicios', 'botella', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 1, 0),
(18, 1, 0),
(20, 1, 0),
(22, 1, 0),
(24, 1, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(38, 3, 0),
(38, 7, 0),
(41, 9, 0),
(52, 8, 0),
(54, 8, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'servicios', '', 0, 1),
(4, 4, 'servicios', '', 0, 0),
(5, 5, 'servicios', '', 0, 0),
(6, 6, 'servicios', '', 0, 0),
(7, 7, 'seccion_servicios', '', 0, 1),
(8, 8, 'ml-slider', '', 0, 0),
(9, 9, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'helozano'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:9:{s:64:"c862cf90524153941d259b84105fbc691dbe9ae20fb98539fe5d0bfefe829944";a:4:{s:10:"expiration";i:1431133943;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36";s:5:"login";i:1429924343;}s:64:"30e22c81a8c800ebf9533e2fbeeee4859f4157bf013b7a2b31d42fb48f9a5d6e";a:4:{s:10:"expiration";i:1430358860;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36";s:5:"login";i:1430186060;}s:64:"f26967c116c3fd4c5a51d18fda77f08be1cea90ab38aff3b3d903f5e9fe134c8";a:4:{s:10:"expiration";i:1430407931;s:2:"ip";s:3:"::1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0";s:5:"login";i:1430235131;}s:64:"8dc5b56e089bc9abdbe541dd935ca42c5466a76d855741f5e02f2622cd6e7b98";a:4:{s:10:"expiration";i:1430411174;s:2:"ip";s:3:"::1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0";s:5:"login";i:1430238374;}s:64:"4439232adc45ec44a3d754cbe9cec353cc9eeb961d0d4fca322a10cbbd718835";a:4:{s:10:"expiration";i:1430411190;s:2:"ip";s:3:"::1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0";s:5:"login";i:1430238390;}s:64:"aee2fe7cdd7164649eec64299f7d58888c8fdbb153bc43b8b4dc8588320fe0c3";a:4:{s:10:"expiration";i:1430411259;s:2:"ip";s:3:"::1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0";s:5:"login";i:1430238459;}s:64:"1877fa5fd9adeac89c6d3f7c9777e1d89b979b7d64df4a6e5bddf84f65b8f6dc";a:4:{s:10:"expiration";i:1430411397;s:2:"ip";s:3:"::1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0";s:5:"login";i:1430238597;}s:64:"2214324c722dd05613f2a162424b827a441d3b9435743d42e227017afd783c18";a:4:{s:10:"expiration";i:1430506717;s:2:"ip";s:3:"::1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0";s:5:"login";i:1430333917;}s:64:"8b7084a69f39c0f7ef803561070fa2542e2f3dc508ff1384da16d200328d406b";a:4:{s:10:"expiration";i:1430511063;s:2:"ip";s:3:"::1";s:2:"ua";s:72:"Mozilla/5.0 (Windows NT 6.3; WOW64; rv:37.0) Gecko/20100101 Firefox/37.0";s:5:"login";i:1430338263;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(19, 1, 'nav_menu_recently_edited', '2'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(21, 1, 'wp_user-settings-time', '1430097654'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:"revisionsdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'helozano', '$P$BerFIvPGgfnn1Iuz/HaYQAAGJiBC1Z0', 'helozano', 'helozano.sistemas@gmail.com', '', '2015-04-23 03:47:13', '', 0, 'helozano');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
