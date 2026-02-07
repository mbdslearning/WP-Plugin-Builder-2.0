
# 6) Security audit (highest ROI)

This is the highest ROI pass for "checker/fixer" work.

## 6.1 Identify all inputs (required)
- Enumerate: `$_GET`, `$_POST`, `$_REQUEST`, `$_COOKIE`, `$_SERVER`, file uploads
- REST request bodies/params
- Shortcode attributes
- Block attributes
- AJAX payloads
- Webhooks
Track each input to:
- DB write, output, file write, remote request, command exec, capability change

Use the helper scripts in `scripts/` (they are grep-based starting points).

## 6.2 Permissions + nonces (required)
- All state-changing admin actions: `current_user_can` + nonce verification.
- AJAX actions: `check_ajax_referer` + caps + JSON exits.
- REST write endpoints: `permission_callback` + validate/sanitize callbacks.

## 6.3 Sanitization + validation (required)
- Sanitize on input with correct functions.
- Validate semantics (allowlists, ranges, object ownership).
- Do not "sanitize and hope": validate.

## 6.4 Escaping on output (required)
- Escape in the correct context (`esc_html`, `esc_attr`, `esc_url`, `wp_kses_post`, `wp_json_encode`, etc.).

## 6.5 SQL injection + wpdb use (required)
- Ensure `$wpdb->prepare()` placeholders match types/count.
- Do not interpolate untrusted input.
- Prefer safe WP APIs where possible.

## 6.6–6.11 Other common sinks
- XSS, CSRF, file operations, SSRF, secrets/PII, privilege escalation.

## Output artifact
Use `templates/SECURITY_FINDINGS.md` and attach:
- vulnerable endpoint paths,
- expected vs actual behavior,
- proof of exploitability (safe PoC),
- the fix and regression tests.
