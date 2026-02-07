
# 12) JavaScript/build system audit (if plugin has modern JS)

Checklist:
- Build reproducibility: lockfile present, scripts documented.
- Don’t ship dev-only packages.
- Block editor scripts: use `@wordpress/scripts` where feasible.
- Localize scripts safely (`wp_localize_script` / `wp_add_inline_script` with `wp_json_encode`).
- Avoid XSS in JS rendering (`innerHTML` with untrusted content).
- Version assets for cache busting.

See `package.json` in repo root.
