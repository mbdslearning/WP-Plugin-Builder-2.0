
#!/usr/bin/env bash
set -euo pipefail

DB_NAME=${DB_NAME:-wordpress_test}
DB_USER=${DB_USER:-root}
DB_PASS=${DB_PASS:-root}
DB_HOST=${DB_HOST:-127.0.0.1}
WP_VERSION=${WP_VERSION:-latest}
SKIP_DB_CREATE=${SKIP_DB_CREATE:-false}

WP_TESTS_DIR=${WP_TESTS_DIR:-/tmp/wordpress-tests-lib}
WP_CORE_DIR=${WP_CORE_DIR:-/tmp/wordpress}

download() {
  local url="$1"
  local dest="$2"
  if [ ! -f "$dest" ]; then
    curl -sSLo "$dest" "$url"
  fi
}

if [ ! -d "$WP_CORE_DIR" ]; then
  mkdir -p "$WP_CORE_DIR"
  if [ "$WP_VERSION" = "latest" ]; then
    download https://wordpress.org/latest.tar.gz /tmp/wordpress-latest.tar.gz
    tar --strip-components=1 -zxf /tmp/wordpress-latest.tar.gz -C "$WP_CORE_DIR"
  else
    download "https://wordpress.org/wordpress-${WP_VERSION}.tar.gz" "/tmp/wordpress-${WP_VERSION}.tar.gz"
    tar --strip-components=1 -zxf "/tmp/wordpress-${WP_VERSION}.tar.gz" -C "$WP_CORE_DIR"
  fi
fi

if [ ! -d "$WP_TESTS_DIR" ]; then
  mkdir -p "$WP_TESTS_DIR"
  download https://develop.svn.wordpress.org/trunk/tests/phpunit/includes/ /tmp/wp-tests-includes || true
fi

# Download the WP test suite from SVN (standard approach)
if [ ! -d "$WP_TESTS_DIR/includes" ]; then
  svn export --quiet https://develop.svn.wordpress.org/trunk/tests/phpunit/includes/ "$WP_TESTS_DIR/includes"
fi
if [ ! -d "$WP_TESTS_DIR/data" ]; then
  svn export --quiet https://develop.svn.wordpress.org/trunk/tests/phpunit/data/ "$WP_TESTS_DIR/data"
fi

# Create wp-tests-config.php
if [ ! -f "$WP_TESTS_DIR/wp-tests-config.php" ]; then
  cp "$WP_TESTS_DIR/wp-tests-config-sample.php" "$WP_TESTS_DIR/wp-tests-config.php" || true
fi

# Ensure sample exists
if [ ! -f "$WP_TESTS_DIR/wp-tests-config-sample.php" ]; then
  svn export --quiet https://develop.svn.wordpress.org/trunk/wp-tests-config-sample.php "$WP_TESTS_DIR/wp-tests-config-sample.php"
  cp "$WP_TESTS_DIR/wp-tests-config-sample.php" "$WP_TESTS_DIR/wp-tests-config.php"
fi

sed -i.bak "s/youremptytestdbnamehere/${DB_NAME}/" "$WP_TESTS_DIR/wp-tests-config.php"
sed -i.bak "s/yourusernamehere/${DB_USER}/" "$WP_TESTS_DIR/wp-tests-config.php"
sed -i.bak "s/yourpasswordhere/${DB_PASS}/" "$WP_TESTS_DIR/wp-tests-config.php"
sed -i.bak "s|localhost|${DB_HOST}|" "$WP_TESTS_DIR/wp-tests-config.php"

if [ "$SKIP_DB_CREATE" != "true" ]; then
  mysqladmin --host="$DB_HOST" --user="$DB_USER" --password="$DB_PASS" drop "$DB_NAME" --force || true
  mysqladmin --host="$DB_HOST" --user="$DB_USER" --password="$DB_PASS" create "$DB_NAME" || true
fi

echo "✅ WordPress test environment ready."
