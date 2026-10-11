# Secret locations on proart-wsl @ 2026-10-10 (NAMES ONLY - no values in this repo)

## Master store (survives WSL wipe - Windows side)
- /mnt/c/Users/casey/key.txt -- 13 keys: CF_API_TOKEN, CRATES_IO_KEY, DEEPINFRA_KEY, DEEPSEEK_KEY, GITHUB_TOKEN, KIMIAI_KEY, MINIMAX_KEY, MOTHQUANTUM_COM_KEY, NPMJS_KEY, PYPI_TOKEN, RUBYGEMS_KEY, TYPESAFE_AI_KEY, ZAI_KEY

## Inside ~/.openclaw/openclaw.json (6 secret fields)
- channels.telegram.botToken -- ONLY-IN-CONFIG
- gateway.auth.token -- ONLY-IN-CONFIG
- plugins.entries.google.config.webSearch.apiKey -- ONLY-IN-CONFIG
- plugins.entries.moonshot.config.webSearch.apiKey -- ONLY-IN-CONFIG
- models.providers.ollama.apiKey -- ONLY-IN-CONFIG
- plugins.entries.minimax.config.webSearch.apiKey -- == key.txt MINIMAX_KEY
- (13 openclaw.json.bak* files hold the same secrets; never pushed)

## Working-copy token files (re-creatable from key.txt)
- ~/.config/deepinfra/token  <- key.txt DEEPINFRA_KEY
- ~/.config/typesafe/token   <- key.txt TYPESAFE_AI_KEY
- ~/.config/deepseek/token   <- key.txt DEEPSEEK_KEY
- ~/.config/lab-keys.env     <- key.txt TYPESAFE_AI_KEY + MOTHQUANTUM_COM_KEY

## ONLY ON THIS MACHINE (copy before wipe or they are gone)
- ~/.openclaw/openclaw.json fields above (x5)
- ~/.config/i2i/i2i-token -- in key.txt? False
- ~/.openclaw/credentials/browser-extension-relay.secret
- ~/.ssh/id_ed25519 (+ .pub) -- GitHub SSH identity
- ~/.ssh/wsl-tunnel.key
- ~/.bashrc exports: CIVITAI_API_KEY, GROQ_API_KEY, ELEVENLABS_API_KEY
  (DEEPSEEK_API_KEY there == key.txt; DEEPINFRA_API_KEY there is the OLD DEAD key)

## gh CLI
- ~/.config/gh/hosts.yml oauth_token == key.txt:GITHUB_TOKEN ? NO (unique value!)

## OpenClaw internal state (inspect before wipe if unsure)
- ~/.openclaw/identity/, ~/.openclaw/crestodian/, ~/.openclaw/devices/,
  ~/.openclaw/exec-approvals.json (names only; not copied here)
