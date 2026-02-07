
<?php
class Test_Sample extends WP_UnitTestCase {
    public function test_wp_loaded() {
        $this->assertTrue( function_exists( 'add_action' ) );
    }
}
