
# 13) Logging, error handling, and resilience

Checklist:
- Replace `die()/exit()` inside business logic with structured error returns.
- Use `WP_Error` for recoverable errors.
- External calls: timeouts, retries/backoff if needed.
- Error messages must not leak secrets/PII.
- Optional: debug mode off by default (e.g., filterable constant/option).
