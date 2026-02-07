
# 0) Define the scope and success criteria

**Goal:** produce an explicit, testable definition of "done" before touching code.

## Checklist

1. Identify plugin type: single-purpose, framework-style, integration, WooCommerce extension, etc.
2. List supported WordPress versions (minimum + tested up to).
3. List supported PHP versions (minimum + tested up to).
4. List supported DB versions (MySQL/MariaDB constraints if relevant).
5. List environments: classic editor vs block editor, multisite, headless, etc.
6. Clarify user roles/capabilities that should access features.
7. Define “done”: bug fixed, security patched, performance improved, compatibility restored, etc.
8. Create a reproducible test case (steps + expected vs actual).

## Output artifact

- Create a GitHub Issue using `templates/REPRO_CASE.md` (copy/paste into the issue body).
