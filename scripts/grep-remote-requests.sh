
#!/usr/bin/env bash
set -euo pipefail

grep -RIn --exclude-dir=vendor --exclude-dir=node_modules --exclude-dir=.git   -E '\b(wp_remote_get|wp_remote_post|wp_safe_remote_get|wp_safe_remote_post|curl_exec|file_get_contents\s*\(\s*[\"\']https?://)\b' .
