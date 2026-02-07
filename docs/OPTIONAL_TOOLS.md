
# Optional tools (only when needed)

This kit runs the core workflow using **GitHub + CI**.
The following are optional because they require additional platforms/tools.

## Local/interactive runtime debugging
- Docker + a local dev stack (e.g., `wp-env`, `docker compose`, or equivalent)
- WP-CLI locally
- Query Monitor (runtime performance inspection)
- Browser automation tools (Playwright/Cypress) for E2E

## Security scanning beyond CodeQL + WPCS
- Semgrep (rulesets for PHP + JS)
- Dependency audit services (GitHub advisory DB + Dependabot are often enough)
- WP vulnerability feeds / scanners (requires API keys)

## Release automation
- WordPress.org SVN deploy (via 10up Action) requires SVN credentials as GitHub secrets.
- Private distribution may require your own update API / licensing infrastructure.

If you can't use an optional tool, proceed with the remaining steps; CI will still run.
