
---
name: Release checklist
about: Checklist for shipping a new version
title: "[Release]: "
labels: ["release"]
---

- [ ] Version bumped (plugin header + readme.txt stable tag)
- [ ] Changelog updated
- [ ] All CI checks green
- [ ] Built assets updated (if applicable)
- [ ] Final package audit (no secrets, no node_modules/vendor unless intended)
- [ ] Git tag created
- [ ] GitHub Release created
- [ ] (Optional) WP.org deploy executed
