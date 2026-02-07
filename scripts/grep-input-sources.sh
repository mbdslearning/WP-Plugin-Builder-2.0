
#!/usr/bin/env bash
set -euo pipefail

# Quick-and-dirty input source discovery. Use results as a starting point,
# then trace flows to sinks (DB writes, output, file writes, remote requests).

grep -RIn --exclude-dir=vendor --exclude-dir=node_modules --exclude-dir=.git   -E '\$_(GET|POST|REQUEST|COOKIE|SERVER)\b|php://input|wp_remote_(get|post)|admin_post_|wp_ajax_|register_rest_route\b|add_shortcode\b' .
