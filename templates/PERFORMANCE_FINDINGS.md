
# Performance Findings

## Finding ID
(PERF-001)

## Symptom
- Slow admin page? Slow front-end? Cron spikes?
- Time-to-first-byte, query count, remote calls, memory use.

## Evidence
- Query Monitor screenshots/notes
- Relevant logs
- Representative data set size

## Root cause
(e.g., N+1 queries, heavy code on every request, huge autoload option, unbounded HTTP calls)

## Fix
- Caching strategy (transients/object cache)
- Query optimization (bulk fetch, indexes)
- Asset gating (enqueue only on needed screens)

## Regression testing
- Before/after measurements
- Dataset used
- Observed change
