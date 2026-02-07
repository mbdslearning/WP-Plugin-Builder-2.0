
# Setup: ChatGPT app (desktop/mobile/web)

This workflow assumes you use the ChatGPT app to:
- run the Custom GPT,
- paste links/patches into GitHub PRs,
- store checklists and findings during an audit.

## Recommended operational setup

1. Create a dedicated Project/Workspace called: `WP Plugin Audit – <plugin-slug>`.
2. Pin these reference docs inside the project:
   - `docs/RUNBOOK.md`
   - `docs/06-security-audit.md`
   - `templates/SECURITY_FINDINGS.md`
   - `templates/REPRO_CASE.md`
3. For each audit, keep 3 parallel threads:
   - **Triage**: reproduce, isolate, produce minimal failing test.
   - **Security**: input map + permission/nonces + escaping/sanitization.
   - **Patch**: diffs + review notes + release notes.
