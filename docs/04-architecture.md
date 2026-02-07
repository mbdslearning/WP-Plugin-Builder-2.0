
# 4) Static code review: structure & architecture

## What to look for (non-negotiables)
- Direct access protection in PHP files: `defined('ABSPATH') || exit;`
- Namespacing/prefixing: functions/classes/constants uniquely prefixed.
- Clear loader/bootstrap pattern (single entry file + includes).
- Separation of concerns: admin/public/shared; logic vs I/O.
- Use WordPress APIs (Settings, Options, CPT/Tax, REST, WPDB, HTTP, Cron).
- No hard-coded paths/URLs (use `plugin_dir_path`, `plugins_url`, etc.).
- Minimal global state; safe hook timing (`plugins_loaded`, `init`, `admin_init`, `rest_api_init`).

## Output artifact
- Record findings in a GitHub issue or PR review notes.
- Use `templates/SECURITY_FINDINGS.md` if architecture issues have security impact.
