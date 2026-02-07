
# Setup: Custom ChatGPT GPT (in ChatGPT)

You will create a Custom GPT specialized for auditing and shipping WordPress plugins.

## 1) Create the GPT

1. In ChatGPT: create a new GPT.
2. Name: `WP Plugin Auditor & Release Engineer` (or similar).
3. Paste `custom-gpt/INSTRUCTIONS.md` into the GPT instructions.
4. Upload the Knowledge Base files from `custom-gpt/knowledge/`.

## 2) Optional: add GitHub API Actions

If you want the GPT to read/write repo files and create PRs/issues via GitHub API:

1. Add an Action.
2. Import `custom-gpt/actions-openapi.yaml`.
3. Configure auth as API Key / Bearer token (GitHub personal access token with minimal scopes).
4. In GitHub, create a fine-grained token that can:
   - read repository contents,
   - create branches/commits,
   - open PRs/issues (only if you want automation).

If Actions aren't available, keep a manual flow:
- GPT produces diffs and commands.
- You apply them in GitHub and open PRs yourself.

## 3) Conversation starters

See `custom-gpt/CONVERSATION_STARTERS.md`.
