
# Acceptance Test Checklist

## Must-pass
- Activate plugin: no fatal error
- Deactivate plugin: no fatal error
- Settings save (if any)
- Key user flows (list them)
- No new PHP notices/warnings in debug log
- No unexpected DB changes / option autoload bloat

## Security gates
- All state-changing operations: caps + nonces
- REST write endpoints: permission_callback + validation/sanitization
- Outputs escaped contextually

## Compatibility gates
- PHP min + max tested
- WordPress min + latest tested
- Multisite (if applicable)
- WooCommerce (if applicable)
