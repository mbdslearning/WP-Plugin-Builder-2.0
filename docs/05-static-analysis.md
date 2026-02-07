
# 5) Automated static analysis (modern baseline)

This repository provides a **Composer dev-tools** setup for PHP and **@wordpress/scripts** for JS.

## PHP lint + compatibility
- PHP lint: `composer run lint:php`
- PHPCompatibilityWP (via PHPCS ruleset): `composer run phpcs` (includes compatibility sniffs)

## WordPress coding standards
- PHPCS with WordPress-Core, WordPress-Extra, WordPress-Docs: `composer run phpcs`
- Auto-fix where safe: `composer run phpcbf`

## Deeper analysis
- PHPStan with WordPress stubs: `composer run phpstan`

## JS/CSS (if present)
- ESLint: `npm run lint:js`
- Stylelint: `npm run lint:css`
- Build: `npm run build`

## Plugin Check (WP.org)
- GitHub Action: `wordpress/plugin-check-action@v1` (see CI workflow).

All of these run in GitHub Actions by default.
