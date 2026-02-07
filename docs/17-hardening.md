
# 17) Hardening pass

Checklist:
- Audit hooks/filters for unintended data exposure.
- REST endpoints: no sensitive data for anonymous.
- Rate limit or gate expensive public endpoints.
- Validate redirects: `wp_safe_redirect`.
- Ensure no SSRF sinks or file inclusion sinks remain.
