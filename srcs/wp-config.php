<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '4z]P]EfIxW_qchlX(JfD*t5Y;Zit5<S9&t7Qv$)HbQJ2] R|zek~ U+470=+:K#]');
define('SECURE_AUTH_KEY',  ',|kH~Hs,(oW}4-SZ;h(df;_q;|c<a8O1D?c6>CjP(foa:c%6KRBbX0Xq%6-!ss=,');
define('LOGGED_IN_KEY',    '0e#~0mFj>#K`a<iScG[]Qb7;7hUj?@bG_}9DUh=Go:G1}@P=_K|Qho|c#EU_oKle');
define('NONCE_KEY',        '.!R9i%6Sr#3?Z.B?v|FIzhZ$*O@5B/ @_||tp|lTDLeYGTiDiF_`*1-e;4-=t@iE');
define('AUTH_SALT',        'zX_S|}X`&|/<Lc}a;WbhB8>pM[@u,g-]%+bNue^Yh,l[kyDEG(UP-um/u/&(z+PS');
define('SECURE_AUTH_SALT', '[rGM^f{ONKlq^W-|!MP[|DG[6x;eceIBE5`0B@U)n|+5n1)Yk72^qKE N1:nZEWs');
define('LOGGED_IN_SALT',   ',fjMeAR93,S^?[P4<|m`PjBx!cpo >D7e[DT+%N1mm=gK`+NqztMBIu!.dD(TZ)6');
define('NONCE_SALT',       '|G-zh>$~.hfT<SF,=2iw,(`~yWL-fsK_q&3=&O]u{n.A?15tA|`To3=6Yy[y#kip');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
