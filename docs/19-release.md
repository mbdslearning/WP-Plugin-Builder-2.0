
# 19) Versioning and release management

Checklist:
- Bump version in plugin header and constants.
- Update `readme.txt` stable tag + changelog.
- Tag release in Git.
- Build production assets (only needed files).
- Final package audit: no secrets, no `.env`, no node_modules, no tests unless intended.

See `.github/workflows/release.yml` for GitHub release zip packaging.
