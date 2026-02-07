
# 15) Patch implementation process

Checklist:
1. Create dedicated branch for the fix.
2. Make minimal, surgical changes first; refactor second.
3. Secure-by-default:
   - validate inputs
   - capability checks
   - nonces
   - escape output
4. Maintain backwards compatibility unless intentionally breaking.
5. Preserve i18n strings (`__()`, `_e()`, etc.).
6. Hooks: add/adjust with care.
7. Update docs/comments where behavior changed.
