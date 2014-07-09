<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress_content');

/** MySQL database username */
define('DB_USER', 'wproot');


/** MySQL database password */
define('DB_PASSWORD', 'nid#$!ENF324');


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
define('AUTH_KEY',         '}dRBP5=+@W#J6pX-[FA;R gI_&Hy1`Y`bE`n)d{ EyQ+Og;3+$ 06.u[#?9-XEj6');
define('SECURE_AUTH_KEY',  'aYl(O3V|%jync}wS9f]+-Z8-%JD}>fID#x79_mIS/!{-D76{LI[M[S-EtPqNfqUY');
define('LOGGED_IN_KEY',    'mAi;:c)w;$I;/`9DWjFV3IfdwAd;1`2cNh7b%z#;?AZPnJ1s/t8vQhdx-1}z(n4C');
define('NONCE_KEY',        'WX;!`)0`B+$#xj(@mj[NjK}k!q*%|l4|M)F~+p4.%0iq&a}o7!|tJzC=B,S`|o$_');
define('AUTH_SALT',        'YuYd<<@~Z8&Re(%{x8T|_?CgD?_4I@C^B5L4={4@.M.~>~p6hubwlIE)m7#is[<#');
define('SECURE_AUTH_SALT', '6oZf^5nnBAk3%iH1ts3m:KL[EI~8hv{;fM)x[|&{-t-A-jqzP/(& ,f`ql_?Lr;c');
define('LOGGED_IN_SALT',   't`5&,,Fp0_op(D8+|-gv~Bm=09}f)hqK$Kp8>&Rcu<]-D.oQ-n&p|bXU$A BFK&,');
define('NONCE_SALT',       'hiNjN]LNfIy)MM9s{/E#N+Jx#taa b;[V/*@ J g#C:z*np&O+Efj-((wx58#lD6');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wordp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', 'en_US');

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
