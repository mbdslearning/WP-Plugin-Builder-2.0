
# 10) Activation/Deactivation/Uninstall handling

Checklist:
- Activation: create tables/options, schedule cron, set defaults.
- Deactivation: unschedule cron, remove temporary states.
- Uninstall: delete data only if user opted-in or policy states so.
- Multisite: network activation behavior must be correct.

Implement uninstall via `uninstall.php` when appropriate.
