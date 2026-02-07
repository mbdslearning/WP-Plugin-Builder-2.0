
# 20) Distribution and post-release monitoring

## WordPress.org distribution (optional)
- Use SVN rules and readme formatting requirements.
- Optional: use `10up/action-wordpress-plugin-deploy` in `.github/workflows/deploy-wporg.yml`.

## Private distribution
- Ensure update mechanism is secure (signed updates / authenticated endpoints).
- Avoid leaking secrets in update metadata.

## Post-release
- Monitor error logs, support tickets, and user reports.
- If telemetry exists: ensure consent and data minimization.
