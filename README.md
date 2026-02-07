
# WP Plugin Senior Pipeline (Audit → Fix → Harden → Ship)

This repository is a **drop-in CI + process kit** for doing a senior-level, end-to-end:
**checking, analyzing, fixing, hardening, and shipping** a WordPress plugin.

It is designed so you can:
- run *repeatable* checks in **GitHub Actions** (lint, PHPCS/WPCS, PHPStan, PHPUnit, JS lint, Plugin Check, CodeQL),
- capture manual findings as structured docs (security/perf/data model),
- produce a clean release artifact (zip) and optional WordPress.org deploy workflow.

## Quick start

1. Copy these files into your plugin repository (or start a new repo from this kit).
2. Update `composer.json` and `phpcs.xml.dist` placeholders (plugin slug, minimum WP/PHP).
3. Push to GitHub. CI runs automatically.

## What you get

- `/docs` – step-by-step runbook mapped to **Steps 0–20**.
- `/templates` – reproducible bug case, security findings, performance findings.
- `.github/workflows` – CI, CodeQL, Release zip, optional WP.org deploy.
- `composer.json` + configs – PHPCS (WPCS), PHPCompatibilityWP, PHPStan(+WordPress stubs), PHPUnit scaffold.
- `package.json` + configs – @wordpress/scripts lint/build defaults (optional if you have JS/CSS).
- `/custom-gpt` – ready-to-paste Custom GPT instructions + optional GitHub Actions OpenAPI schema + Knowledge Base markdown files.

## Assumptions

- PHP **7.4+** supported; ideally **8.x** tested.
- WordPress **modern** versions supported (configure minimum + tested up to in `readme.txt`).
- Plugin may have JS/CSS build tooling (optional).
