
#!/usr/bin/env bash
set -euo pipefail

grep -RIn --exclude-dir=vendor --exclude-dir=node_modules --exclude-dir=.git   -E '\$wpdb->(get_var|get_row|get_results|query|prepare)\b' .
