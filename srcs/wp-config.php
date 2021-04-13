<?php

define( 'DB_NAME' , 'wordpress' );

define( 'DB_USER' , 'wordpress' );

define( 'DB_PASSWORD' , 'password' );

define( 'DB_HOST' , 'localhost' );

define( 'DB_CHARSET' , 'utf8' );

define( 'DB_COLLATE' , '' );

define('AUTH_KEY',         '0.vkwID-8A+,Y$0fke|{1Vs_+o7r9=~tQoOQ,|^5?)B{q&59T`C_O-]&FIE O+X0');
define('SECURE_AUTH_KEY',  ':a*(2eLR[U<w=]=/}_X=]zJ12bE!Vl.DtB;4D-Ue0Gz oy_R.65JYwv^.E}S{=K:');
define('LOGGED_IN_KEY',    'e<hekwPF|A&Rb9cWE[=]bZ6F7eEiig`J}^~RR0j[+8m|Q=L:JrOI?FHSEd6LqR?d');
define('NONCE_KEY',        '1%lAdmOD@O0#|3;p:!zL-f&MyBdSU~40scY(31+Q%cnU+A]ZlJOi0.zgbXNk%h&o');
define('AUTH_SALT',        '-hPyspZT//R6Cvkor>ZP~O>2R~I:D@1<VOS7E|MW9#)` F@tr`3Kn+,~`d 2b:`9');
define('SECURE_AUTH_SALT', 'AvwS1G_mw78.Dzd<vNBgr[Jjc8reOCmX0BDLu912*$a(eXP]HYL>;+aTT?()-}J|');
define('LOGGED_IN_SALT',   '.8-j73wSNRCFr2>&.7olp -+5djxd<d)-u2H$9&-a)_a<a}|w <xBSz%THCrC+#g');
define('NONCE_SALT',       'W}zu~~D$~AZ},ae9bM1|n+v6J_=sbB0i&f8jP|1:Y.aBB{Mfc RL6Ziape2|Hx0M');

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
		define( 'ABSPATH' , __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
