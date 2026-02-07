
# 2) Create a safe dev + test environment

You have two primary options:

## Option A (GitHub-only, recommended baseline): CI-based env
Use GitHub Actions jobs:
- `ci.yml` provides linting/static analysis.
- `phpunit` job provisions a WP test suite database and runs tests.
- `smoke` job (optional) installs WordPress via WP-CLI and activates the plugin.

This covers a large share of real-world regressions without requiring local tooling.

## Option B (Optional): local or Codespaces runtime env
Use if you need interactive debugging, UI verification, or performance profiling.
- Docker (wp-env / compose)
- WP-CLI
- Query Monitor

## Required environment baseline
- Enable `WP_DEBUG`, `WP_DEBUG_LOG`, `SCRIPT_DEBUG`.
- Create test sites (fresh, content-heavy; multisite if relevant).
- Record baseline: WP version, PHP version, theme, active plugins.
