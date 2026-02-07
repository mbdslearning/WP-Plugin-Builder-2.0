
# 7) Compatibility audit (core + ecosystem)

Checklist:
- No removed/deprecated WP APIs without fallbacks.
- Correct hook timing.
- i18n: `load_plugin_textdomain` at appropriate hook.
- Asset loading: correct enqueue + versioning + dependencies.
- Block editor compatibility (`register_block_type`, `block.json` correctness).
- Theme compatibility (no assumptions).
- Multisite correctness (per-site vs network options; network activation hooks).
- WooCommerce compatibility (HPOS/feature flags) if applicable.

Use CI matrices (PHP/WP versions) and add targeted integration tests when breakage is observed.
