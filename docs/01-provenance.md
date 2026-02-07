
# 1) Acquire the plugin and establish provenance

## 1.1 Get exact input
- Preferred: GitHub repo URL + commit hash/tag.
- Alternative: plugin zip + checksum.

## 1.2 Verify integrity
- Look for unexpected binaries/obfuscation.
- Check for suspicious files (e.g., PHP in "uploads-like" directories).
- Run repository-wide searches for `base64_decode`, `eval`, `gzinflate`, `shell_exec`, `passthru`, `proc_open`.

Use scripts in `scripts/` as a starter.

## 1.3 Licensing and dependency hygiene
- Confirm license headers and compatibility (WordPress ecosystem expects GPL-compatible licensing).
- Confirm dependencies are properly attributed and shipped.

## 1.4 Entry points
- Main plugin file header.
- MU plugins / drop-ins / additional loaders.

## 1.5 Inventory dependencies
- Composer deps (`vendor/`), npm deps, external SDKs, bundled libs.
- Identify whether built assets are committed vs generated.

## 1.6 “Phone home” behavior
- Find uses of WP HTTP API (or raw cURL/file_get_contents).
- Confirm consent and privacy posture.
