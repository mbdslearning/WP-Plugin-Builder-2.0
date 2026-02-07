
#!/usr/bin/env bash
set -euo pipefail

grep -RIn --exclude-dir=vendor --exclude-dir=node_modules --exclude-dir=.git   -E '\b(move_uploaded_file|fopen|file_put_contents|unlink|copy|rename|mkdir|rmdir|readfile|include|require|include_once|require_once)\b' .
