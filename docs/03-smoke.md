
# 3) First-pass functional smoke test

## GitHub-only path (CI smoke)
Use `bin/ci-smoke.sh` (optional workflow or local run) to:
1. Install WP via WP-CLI.
2. Install/activate the plugin.
3. Verify no fatal error, no immediate admin notices (log scan).
4. Hit REST endpoints (if any) via `wp eval` / curl (optional).
5. Run any scheduled events manually (if feasible).

## Optional interactive path
Use Docker/Codespaces + browser:
- Activate plugin in wp-admin.
- Navigate admin pages, front-end, and key flows.
- Save settings; create/update/delete data; run cron tasks.
- Record warnings/notices from debug log.
