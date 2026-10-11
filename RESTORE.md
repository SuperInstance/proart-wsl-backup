# RESTORE.md — proart-wsl → fresh WSL, step by step

Tested-path restore for the machine this backup came from (ASUS ProArt PX13, WSL2
Ubuntu, OpenClaw gateway + agent fleet). Snapshot date: 2026-10-10.

## 0. Preconditions (do these BEFORE wiping the old WSL)

- Confirm `C:\Users\casey\key.txt` is current on the Windows side. It survives the
  wipe; it is the master store. **As of 2026-10-10 19:4x it also holds the four real
  openclaw.json-only secrets** (OPENCLAW_TELEGRAM_BOT_TOKEN, OPENCLAW_GATEWAY_AUTH_TOKEN,
  GOOGLE_WEBSEARCH_API_KEY, MOONSHOT_WEBSEARCH_API_KEY — appended with Casey's
  approval). The fifth field (ollama apiKey) is just the env-var NAME "OLLAMA_API_KEY"
  in the config — not a secret. No config rescue from the old WSL is needed.
- Still grab from the old WSL: `~/.config/i2i/i2i-token`,
  `~/.openclaw/credentials/browser-extension-relay.secret`, `~/.ssh/id_ed25519` +
  `wsl-tunnel.key`, and the bashrc CIVITAI/GROQ/ELEVENLABS values. None of these are in
  this repo or key.txt by design.

## 1. Base stack

1. Install WSL2 Ubuntu, then inside it: git, build-essential, node 22 (nodesource),
   python3-venv, ffmpeg, gh (`apt install gh` or its apt repo).
2. `gh auth login` — paste the gh oauth_token saved in step 0 (or re-auth via browser).
3. SSH for GitHub: restore `~/.ssh/id_ed25519` (+chmod 600) or generate a new key and
   add the .pub to the SuperInstance account. Verify: `ssh -T git@github.com`.

## 2. OpenClaw config

1. Install OpenClaw (npm global, same version family as the old box).
2. `mkdir -p ~/.openclaw && cp openclaw/openclaw.json.sanitized.json ~/.openclaw/openclaw.json`
3. Fill the six `REDACTED-BY-BACKUP` fields — five from key.txt, one literal:
   - `plugins.entries.minimax.config.webSearch.apiKey` ← `MINIMAX_KEY`
   - telegram botToken ← `OPENCLAW_TELEGRAM_BOT_TOKEN`
   - `gateway.auth.token` ← `OPENCLAW_GATEWAY_AUTH_TOKEN`
   - google webSearch ← `GOOGLE_WEBSEARCH_API_KEY`
   - moonshot webSearch ← `MOONSHOT_WEBSEARCH_API_KEY`
   - ollama apiKey ← copy the original literal value `OLLAMA_API_KEY` (an env-var
     name, not a secret — the sanitized config already holds it)
4. Recreate working-copy token files:
   - `mkdir -p ~/.config/{deepinfra,typesafe,deepseek,i2i}`
   - key.txt DEEPINFRA_KEY → `~/.config/deepinfra/token` (chmod 600)
   - TYPESAFE_AI_KEY → `~/.config/typesafe/token`
   - DEEPSEEK_KEY → `~/.config/deepseek/token`
   - saved i2i token → `~/.config/i2i/i2i-token`
   - rebuild `~/.config/lab-keys.env` from TYPESAFE_AI_KEY + MOTHQUANTUM_COM_KEY

## 3. Dotfiles + scripts

1. Copy `dotfiles/bashrc.sanitized` → `~/.bashrc`; fill the REDACTED export values
   (DEEPSEEK from key.txt; CIVITAI/GROQ/ELEVENLABS from step 0; DEEPINFRA old key can
   stay redacted — it is dead).
2. `dotfiles/profile.copied` → `~/.profile`, `dotfiles/gitconfig.copied` → `~/.gitconfig`.
3. `scripts/local-bin/` → `~/.local/bin/` (chmod +x). The full original inventory
   (154 entries incl. pip-installed CLIs) is in `scripts/local-bin-INVENTORY.txt` —
   reinstall heavy tools (futhark, ffmpeg wrappers, claude CLI, edge-tts) from their
   sources as needed.

## 4. Repos (the fleet)

- `REPOS-MANIFEST.md` lists all 178 repos with remote + HEAD + branch. Bulk-reclone:
  `git clone git@github.com:SuperInstance/<name>.git ~/projects/<name>` for each row.
- 21 entries are git worktrees of their parent repos (listed in the manifest) —
  recreate with `git worktree add` from the parent if needed.
- `~/agent-inbox` is its own repo: `git clone git@github.com:SuperInstance/agent-inbox.git ~/agent-inbox`.

## 5. Cron fleet

- `cron/cron-jobs-2026-10-10.json` holds all 12 jobs (name, schedule, payload, delivery,
  model routing). Re-add each with the cron tool (`action=add`) after the gateway is up.
  Payload texts reference absolute paths — they match this restore layout.

## 6. Verify

1. `openclaw gateway status` (or start), then Telegram: message the bot — it should
   answer (that exercises telegram botToken + gateway.auth.token).
2. Smoke the providers: one DeepInfra call, one Z.ai call, one typesafe call.
3. `cd ~/projects/quilt-gpu-lab && python3 tools/receipt_manifest.py --check` after the
   repos are cloned (manifest digests assume the same tree).
