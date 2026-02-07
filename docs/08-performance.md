
# 8) Performance audit (highly recommended)

This kit can catch some perf issues via review and static checks, but **runtime profiling** is optional tooling.

## What to check
- Slow/repeated DB queries and N+1 patterns
- Large autoloaded options
- Cron tasks: sane schedules + idempotency
- Heavy code on every request (gate admin-only logic, lazy-load)
- Cache expensive ops (transients/object cache)
- Asset performance (enqueue only where needed; split admin/public; avoid huge bundles)

## Optional tools
- Query Monitor (manual inspection)
- Application-level profiling (hosting-specific)
