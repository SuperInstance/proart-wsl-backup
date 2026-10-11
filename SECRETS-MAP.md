# SECRETS-MAP — where every key lives on proart-wsl (names only, no values)

Snapshot: 2026-10-10. This file deliberately contains ZERO secret values.

## The plain answer

- **Master key store:** `/mnt/c/Users/casey/key.txt` (Windows side, survives any WSL wipe).
  Holds 13 keys: CF_API_TOKEN, CRATES_IO_KEY, DEEPINFRA_KEY, DEEPSEEK_KEY, GITHUB_TOKEN,
  KIMIAI_KEY, MINIMAX_KEY, MOTHQUANTUM_COM_KEY, NPMJS_KEY, PYPI_TOKEN, RUBYGEMS_KEY,
  TYPESAFE_AI_KEY, ZAI_KEY.
- **Five secrets exist ONLY inside `~/.openclaw/openclaw.json`** (and its 13 local `.bak`
  copies). They are NOT in key.txt and were NOT pushed anywhere:
  1. `channels.telegram.botToken` — the Telegram bot token (Lucineer's line to Casey)
  2. `gateway.auth.token` — OpenClaw gateway auth
  3. `plugins.entries.google.config.webSearch.apiKey`
  4. `plugins.entries.moonshot.config.webSearch.apiKey`
  5. `models.providers.ollama.apiKey`
  The sixth secret field, `plugins.entries.minimax.config.webSearch.apiKey`, equals
  key.txt `MINIMAX_KEY` (recoverable).
- **If the WSL home is wiped without copying those 5 out, they are gone.** Copy them to
  the Windows side (or into key.txt) BEFORE the wipe. This backup repo intentionally
  holds only REDACTED placeholders for them.

## Also ONLY on this machine (not in key.txt, not pushed)

| item | what it is |
|---|---|
| `~/.config/i2i/i2i-token` | bearer token for i2i-ledger worker (verified NOT equal to any key.txt entry) |
| `~/.config/gh/hosts.yml` oauth_token | gh CLI token (verified NOT equal to key.txt GITHUB_TOKEN — it is a distinct value) |
| `~/.openclaw/credentials/browser-extension-relay.secret` | browser extension relay |
| `~/.ssh/id_ed25519` (+ `.pub`) | the GitHub SSH identity for SuperInstance pushes |
| `~/.ssh/wsl-tunnel.key` | WSL tunnel key |
| `~/.bashrc` exports: `CIVITAI_API_KEY`, `GROQ_API_KEY`, `ELEVENLABS_API_KEY` | three API keys that never made it to key.txt |

## Recoverable from key.txt (working copies, re-create in seconds)

| file | source key |
|---|---|
| `~/.config/deepinfra/token` | DEEPINFRA_KEY |
| `~/.config/typesafe/token` | TYPESAFE_AI_KEY |
| `~/.config/deepseek/token` | DEEPSEEK_KEY |
| `~/.config/lab-keys.env` | TYPESAFE_AI_KEY + MOTHQUANTUM_COM_KEY |
| `~/.bashrc` `DEEPSEEK_API_KEY` | DEEPSEEK_KEY |
| `~/.bashrc` `DEEPINFRA_API_KEY` | (the OLD DEAD key, 401s — safe to drop) |

## Sanitization applied in this backup

- `openclaw/openclaw.json.sanitized.json`: all 6 secret fields replaced with
  `REDACTED-BY-BACKUP` placeholders naming the restore source.
- `dotfiles/bashrc.sanitized`: all 5 key-bearing export lines redacted with
  placeholders naming the restore source.
- Machine scan pre-push: every file in this repo was checked against the actual key
  values (key.txt + bashrc-only keys + gh token + i2i token + relay secret) and against
  token-shape regexes (telegram bot tokens, sk-/ghp_/AKIA/xox patterns, PEM blocks).
  Nothing matching was committed.

## OpenClaw internal state (names only, not copied here)

`~/.openclaw/identity/`, `~/.openclaw/crestodian/`, `~/.openclaw/devices/`,
`~/.openclaw/exec-approvals.json` — inspect on the old machine before wiping if unsure.
