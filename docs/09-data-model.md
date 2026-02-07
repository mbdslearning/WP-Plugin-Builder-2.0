
# 9) Data model + storage audit (required if plugin stores data)

Checklist:
- Inventory entities: options, CPT/meta, taxonomies, custom tables.
- Custom tables: indexes, charset/collation, robust migrations (dbDelta pitfalls).
- Meta: register meta with sanitize/authorize callbacks.
- Serialization: rely on WP APIs; avoid manual serialization.
- Deletion behavior: uninstall cleanup policy and opt-in/opt-out.
- Privacy: data export/erasure hooks where relevant.

Capture in `templates/SECURITY_FINDINGS.md` if any storage decision has security/privacy impact.
