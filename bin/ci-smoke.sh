
#!/usr/bin/env bash
set -euo pipefail

# Smoke test: install WordPress and activate the plugin.
# Intended for CI runners; can be used locally if wp-cli is installed.

PLUGIN_DIR="${PLUGIN_DIR:-$(pwd)}"
WP_DIR="${WP_DIR:-/tmp/wp-smoke}"
DB_NAME="${DB_NAME:-wp_smoke}"
DB_USER="${DB_USER:-root}"
DB_PASS="${DB_PASS:-root}"
DB_HOST="${DB_HOST:-127.0.0.1}"

WP_URL="${WP_URL:-http://127.0.0.1:8080}"
WP_TITLE="${WP_TITLE:-Smoke Test}"
WP_ADMIN="${WP_ADMIN:-admin}"
WP_ADMIN_PASS="${WP_ADMIN_PASS:-password}"
WP_ADMIN_EMAIL="${WP_ADMIN_EMAIL:-admin@example.com}"

mkdir -p "$WP_DIR"
cd "$WP_DIR"

if [ ! -f wp-cli.phar ]; then
  curl -sSLo wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
  php wp-cli.phar --info >/dev/null
fi
WPCLI="php wp-cli.phar"

if [ ! -f wp-config.php ]; then
  $WPCLI core download --skip-content --force
  $WPCLI config create --dbname="$DB_NAME" --dbuser="$DB_USER" --dbpass="$DB_PASS" --dbhost="$DB_HOST" --skip-check --force
  $WPCLI db create || true
  $WPCLI core install --url="$WP_URL" --title="$WP_TITLE" --admin_user="$WP_ADMIN" --admin_password="$WP_ADMIN_PASS" --admin_email="$WP_ADMIN_EMAIL" --skip-email
fi

mkdir -p wp-content/plugins/plugin-under-test
rsync -a --delete --exclude='.git' --exclude='node_modules' --exclude='vendor' "$PLUGIN_DIR"/ wp-content/plugins/plugin-under-test/

$WPCLI plugin activate plugin-under-test

echo "✅ Plugin activated successfully."
