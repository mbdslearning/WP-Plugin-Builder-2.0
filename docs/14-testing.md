
# 14) Write/upgrade tests (modern standard)

## Unit tests (PHP)
- Use PHPUnit + WP test suite scaffold in `/tests`.
- Add regression tests for each bug/security fix.

## Integration/E2E (optional)
- Playwright/Cypress for admin UI flows (optional; heavier infra).
- Multi-matrix testing: PHP versions, WP versions, multisite if needed.

This kit includes PHPUnit scaffolding and a GitHub Actions job.
