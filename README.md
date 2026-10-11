# proart-wsl-backup

Machine backup for the ASUS ProArt PX13 WSL2 box ("proart-wsl") — the OpenClaw host,
agent fleet home, and ship's computer. Snapshot: **2026-10-10 ~19:0x AKDT**.

**Zero secrets by construction.** Every secret field is a `REDACTED-BY-BACKUP`
placeholder naming its restore source. A pre-push machine scan verified no real key
value (key.txt, bashrc-only keys, gh token, i2i token, relay secret, SSH keys) appears
anywhere in this repo. See `SECRETS-MAP.md` for the full map and `RESTORE.md` for the
step-by-step fresh-WSL rebuild.

## Contents

- `SECRETS-MAP.md` — where every key lives: key.txt master store vs ONLY-on-machine items. **Read this before wiping anything.**
- `RESTORE.md` — fresh-WSL rebuild steps (stack, config, tokens, dotfiles, repos, cron, verify).
- `REPOS-MANIFEST.md` — full sweep of all 178 git repos (branch, HEAD sha, remote, clean status, ahead/behind) + 21 git worktrees + 17 non-git dirs with reasons.
- `openclaw/openclaw.json.sanitized.json` — the live config, 6 secret fields redacted.
- `cron/cron-jobs-2026-10-10.json` — all 12 gateway cron jobs (full payloads, schedules, delivery, model routing).
- `dotfiles/` — bashrc (sanitized), profile, gitconfig.
- `scripts/` — curated custom scripts from ~/.local/bin + full 154-entry inventory; openclaw-bin chrome-wrapper.
- `inbox/` — agent-inbox snapshot + note (live repo: SuperInstance/agent-inbox).
- `config-inventory/SECRET-LOCATIONS.md` — machine-side secret file inventory, names only.

## The one thing to understand before a wipe

Five secrets exist ONLY inside `~/.openclaw/openclaw.json` on the old machine
(telegram bot token, gateway auth token, google webSearch key, moonshot webSearch key,
ollama key). They are not in key.txt and not in this repo. Copy them out first —
see `SECRETS-MAP.md`.
