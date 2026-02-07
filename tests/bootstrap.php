
<?php
/**
 * PHPUnit bootstrap file.
 *
 * Based on WP-CLI scaffolded plugin tests approach.
 */

$_tests_dir = getenv( 'WP_TESTS_DIR' );

if ( ! $_tests_dir ) {
    $_tests_dir = rtrim( sys_get_temp_dir(), '/\' ) . '/wordpress-tests-lib';
}

if ( ! file_exists( $_tests_dir . '/includes/functions.php' ) ) {
    fwrite( STDERR, "WP test suite not found in {$_tests_dir}
" );
    exit( 1 );
}

require_once $_tests_dir . '/includes/functions.php';

/**
 * Manually load the plugin under test.
 */
function _manually_load_plugin() {
    // Adjust this path to your main plugin file if needed.
    // If your repo root is the plugin root, set to 'your-plugin.php'.
    $plugin_main = dirname( __DIR__ ) . '/plugin-under-test.php';
    if ( file_exists( $plugin_main ) ) {
        require $plugin_main;
    } else {
        // Fallback: try loading any PHP file with a plugin header in root.
        foreach ( glob( dirname( __DIR__ ) . '/*.php' ) as $file ) {
            $contents = file_get_contents( $file );
            if ( $contents && strpos( $contents, 'Plugin Name:' ) !== false ) {
                require $file;
                break;
            }
        }
    }
}
tests_add_filter( 'muplugins_loaded', '_manually_load_plugin' );

require $_tests_dir . '/includes/bootstrap.php';
