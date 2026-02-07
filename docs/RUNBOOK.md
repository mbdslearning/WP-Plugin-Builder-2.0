
# Runbook

This runbook is the operational "how to use this kit" guide.

## Typical flow

1. **Step 0–1 (planning + provenance)**: open GitHub issues using the templates; fill scope and reproduction.
2. **Step 2–3 (env + smoke)**: run smoke activation job in CI; optionally reproduce locally (Docker/Codespaces).
3. **Step 4 (architecture review)**: do a structured review; record findings.
4. **Step 5–6 (static + security)**: CI findings drive fixes; do manual threat modeling and input tracing.
5. **Step 7–12 (compat + perf + data + JS)**: confirm across WP/PHP versions; fix regressions; check build outputs.
6. **Step 14–16 (tests + regression)**: add tests for fixed bugs; lock in behavior.
7. **Step 17–20 (hardening + docs + release)**: finalize docs, bump versions, ship zip; optional WP.org deploy.

Use `docs/00-scope.md` ... `docs/20-distribution-monitoring.md` for the full mapped checklist.
