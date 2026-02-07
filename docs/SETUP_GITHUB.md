
# Setup: GitHub

## 1) Repository and branch policy

1. Create / use a GitHub repository for the plugin.
2. Protect your default branch (`main`):
   - Require PRs.
   - Require status checks to pass (CI + CodeQL if enabled).
   - Require linear history (optional but recommended).
3. Add CODEOWNERS (optional) to force review by maintainers.

## 2) Secrets

If you deploy to WordPress.org via the optional workflow:
- `SVN_USERNAME`
- `SVN_PASSWORD`

If you use optional third-party vulnerability scanners, add their API keys as secrets (see `docs/OPTIONAL_TOOLS.md`).

## 3) Enable GitHub Actions

Actions must be enabled for CI to run.
Files are in `.github/workflows/`.

## 4) Enable Dependabot (optional but recommended)

Configuration is in `.github/dependabot.yml`.
