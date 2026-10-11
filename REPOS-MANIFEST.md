# REPOS-MANIFEST — full push-state sweep

Sweep: 2026-10-10 ~19:0x AKDT, machine proart-wsl (this backup's source).
Scope: every git repo under ~/projects/* plus ~/agent-inbox. Method: per-repo
`git rev-parse HEAD` / `remote get-url origin` / `status --porcelain` /
`rev-list --count` both directions against upstream.

## Summary
- Git repos: 178 (of which 2 are this backup pair, first commit lands with this file)
- Git worktrees (linked to a parent repo, .git is a file): 21
- Non-git directories: 17 (classified below)
- Working-tree status: ALL repos clean (zero dirty files anywhere)
- Push status: ALL repos synced with their remotes

## Fixes applied during this sweep
- quilt-research-canons: was 24 commits BEHIND origin/main -> fast-forwarded, now synced (d78eaf1257)
- pie-minimax (a1-closure-receipt): verified the A1 closure receipt commit 7d662e3 is ALREADY on origin (remote branch exists; local had no upstream tracking configured, which made it look ahead of origin/main). `git push` confirms Everything up-to-date.
- spread (main) and the-tap (detached HEAD @ 78fdaeb8d9): verified local tips are contained in origin branches - nothing unpushed
- A2A-native-notebookLM: repaired earlier this day (corrupted 0-byte git objects since Oct 2; broken .git archived to workspace/_archive, fresh clone-reset from origin). HEAD 04209e2881 == origin/scratchpaper. Zero local work was lost.

## Full repo table

| repo | branch | HEAD | remote | dirty | ahead/behind |
|---|---|---|---|---|---|
| agent-inbox | main | 356aec8bf2 | gh:SuperInstance/agent-inbox | 0 | 0/0 |
| A2A-native-notebookLM | scratchpaper | 04209e2881 | gh:SuperInstance/A2A-native-notebookLM.git | 0 | 0/0 |
| AgentGossip | main | 30ad0d3206 | gh:SuperInstance/AgentGossip.git | 0 | 0/0 |
| Scrapcraft | main | 04e9903f47 | gh:SuperInstance/Scrapcraft.git | 0 | 0/0 |
| ai-writings | main | 5454eaf9f5 | gh:SuperInstance/AI-Writings.git | 0 | 0/0 |
| autoclaw | master | 07bf1313a6 | gh:SuperInstance/autoclaw.git | 0 | 0/0 |
| bare-metal-plato | main | 726950a0eb | gh:SuperInstance/bare-metal-plato.git | 0 | 0/0 |
| cargo-line-tycoon | main | 595f6f3201 | gh:SuperInstance/cargo-line-tycoon.git | 0 | 0/0 |
| cf-native-backend | b4-web | 3a1e9b446b | gh:SuperInstance/cf-native-backend.git | 0 | 0/0 |
| chiaroscuro-embedding | master | 1fff15eb21 | gh:SuperInstance/chiaroscuro-embedding.git | 0 | 0/0 |
| chiaroscuro | reland8 | 4f7d4ccfa8 | gh:SuperInstance/chiaroscuro.git | 0 | 0/0 |
| coev-audit-study | main | bed862b6fc | gh:SuperInstance/coev.git | 0 | 0/0 |
| conservation-spectral-mojo | main | 88e2cfb296 | gh:SuperInstance/conservation-spectral-mojo.git | 0 | 0/0 |
| constraint-theory-mojo | main | fd2aaa0d26 | gh:SuperInstance/constraint-theory-mojo.git | 0 | 0/0 |
| crab-traps | main | d3dfe900ad | gh:SuperInstance/crab-traps.git | 0 | 0/0 |
| dicebear-quilt | 11.x | 0f23eb4692 | gh:SuperInstance/dicebear-quilt.git | 0 | 0/0 |
| ec2mud | main | ac869683fa | gh:SuperInstance/ec2mud.git | 0 | 0/0 |
| eisenstein | main | 4bf37aaf9c | gh:SuperInstance/eisenstein.git | 0 | 0/0 |
| elephant | main | 44e7363d30 | gh:SuperInstance/elephant.git | 0 | 0/0 |
| eos-seed | main | f96e8a6e6c | gh:SuperInstance/eos-seed.git | 0 | 0/0 |
| exocortex-embed-mojo | main | 663d96c33e | gh:SuperInstance/exocortex-embed-mojo.git | 0 | 0/0 |
| exoj | main | f0aa6ea39c | gh:SuperInstance/exoj | 0 | 0/0 |
| experiment-wheel | master | 9fcdadf19f | gh:SuperInstance/experiment-wheel.git | 0 | 0/0 |
| fleet-gateway | main | 5b2285b722 | gh:SuperInstance/fleet-gateway.git | 0 | 0/0 |
| fleet-inventory | master | c9d61e1594 | gh:SuperInstance/fleet-inventory.git | 0 | 0/0 |
| fleet-memory | main | 78315e362e | gh:SuperInstance/fleet-memory.git | 0 | 0/0 |
| fleet-radio | main | ba41d566b8 | gh:SuperInstance/fleet-radio.git | 0 | 0/0 |
| fleet-seeds | main | 5d9782d048 | gh:SuperInstance/fleet-seeds.git | 0 | 0/0 |
| fleet-static-host | master | c9811c4b54 | gh:SuperInstance/fleet-static-host.git | 0 | 0/0 |
| fleet-triage | main | d7aca917c6 | gh:SuperInstance/fleet-triage.git | 0 | 0/0 |
| fleet-twin | main | 501b9a5935 | gh:SuperInstance/fleet-twin.git | 0 | 0/0 |
| fleet-witness | integration-sim | 2eabe6a8eb | gh:SuperInstance/fleet-witness.git | 0 | 0/0 |
| flux-genome-rs | main | 5f78585c47 | gh:SuperInstance/flux-genome-rs.git | 0 | 0/0 |
| forge-portal | main | 2fa13e95e6 | gh:SuperInstance/forge-portal.git | 0 | 0/0 |
| glyphcast | main | 1493eba5c6 | gh:SuperInstance/glyphcast | 0 | 0/0 |
| glyphspace | main | c596000461 | gh:SuperInstance/glyphspace | 0 | 0/0 |
| grand-pattern-mojo | main | a3ac640ddf | gh:SuperInstance/grand-pattern-mojo.git | 0 | 0/0 |
| intuition | main | f5296b7e09 | gh:SuperInstance/intuition.git | 0 | 0/0 |
| jev-gan | main | b4a5f5c7ca | gh:SuperInstance/jev-gan | 0 | 0/0 |
| jev-paint-quilt | master | 78aadccdec | gh:SuperInstance/jev-paint-quilt.git | 0 | 0/0 |
| jev-quilt | main | 64780f215d | gh:SuperInstance/jev-quilt.git | 0 | 0/0 |
| jeviter | main | fe7683fa8f | gh:SuperInstance/jeviter.git | 0 | 0/0 |
| kev-substrate-mojo | main | c3583a1474 | gh:SuperInstance/kev-substrate-mojo.git | 0 | 0/0 |
| lever-runner | main | fbf447a8a0 | gh:SuperInstance/lever-runner.git | 0 | 0/0 |
| lucid | dpo-1 | 74f5b33fad | gh:SuperInstance/lucid.git | 0 | 0/0 |
| lucineer-relay | main | 5f7e3c8c17 | gh:SuperInstance/lucineer-relay.git | 0 | 0/0 |
| lucineer-system | main | 5682211dd2 | gh:SuperInstance/lucineer-system.git | 0 | 0/0 |
| micrograd-quilt | master | 83c3171b9e | gh:SuperInstance/micrograd-quilt.git | 0 | 0/0 |
| micromoth-quilt | pr43-fresh | 4268849255 | gh:SuperInstance/micromoth-quilt.git | 0 | 0/0 |
| mud-arena | main | d8eace10eb | gh:SuperInstance/mud-arena | 0 | 0/0 |
| mud2scummvm | main | 02456d6036 | gh:SuperInstance/mud2scummvm.git | 0 | 0/0 |
| musician-soul | master | 7eff512e76 | gh:SuperInstance/musician-soul | 0 | 0/0 |
| nb-sp-verify | scratchpaper | 04209e2881 | gh:SuperInstance/A2A-native-notebookLM.git | 0 | 0/0 |
| nmea-quilt-cell | main | 19797849fe | gh:SuperInstance/nmea-quilt-cell.git | 0 | 0/0 |
| openclaw-config | EMPTY-NO-COMMITS |  |  |  |  |
| pie-minimax-readonly | main | 902700c53d | gh:SuperInstance/pie-minimax.git | 0 | 0/0 |
| pie-minimax | a1-closure-receipt | 7d662e3ccb | gh:SuperInstance/pie-minimax | 0 | -/- |
| plato-sdk | main | f389059b53 | gh:SuperInstance/plato-sdk | 0 | 0/0 |
| plato-stable-early-version | main | 9a72234006 | gh:SuperInstance/plato-stable-early-version | 0 | 0/0 |
| polln | main | e57a327f03 | gh:SuperInstance/polln.git | 0 | 0/0 |
| pong-quilt | playtest-round-86 | 62732aa437 | gh:SuperInstance/pong-quilt.git | 0 | 0/0 |
| pr-wave-micromoth | view-receipt-cells | 92cbf77c45 | gh:SuperInstance/MicroMoth-quilt.git | 0 | 0/0 |
| proart-wsl-backup | EMPTY-NO-COMMITS |  |  |  |  |
| qthe-codec | main | 62aa818a9a | gh:SuperInstance/qthe-codec.git | 0 | 0/0 |
| qthe | main | 37f616b38e | gh:SuperInstance/qthe.git | 0 | 0/0 |
| quilt-arcade | main | c3813fcf51 | gh:SuperInstance/quilt-arcade | 0 | 0/0 |
| quilt-atlas | main | 08fe552d9d | gh:SuperInstance/quilt-atlas.git | 0 | 0/0 |
| quilt-canvas-tui-readonly | main | 5a546903c6 | gh:SuperInstance/quilt-canvas-tui.git | 0 | 0/0 |
| quilt-canvas-tui | main | e4f887dfa0 | gh:SuperInstance/quilt-canvas-tui.git | 0 | 0/0 |
| quilt-cloudflare | main | 5baf03471d | gh:SuperInstance/quilt-cloudflare.git | 0 | 0/0 |
| quilt-deck | main | e35124a57c | gh:SuperInstance/quilt-deck.git | 0 | 0/0 |
| quilt-dpcpp | main | f5d747d744 | gh:SuperInstance/quilt-dpcpp.git | 0 | 0/0 |
| quilt-esp32 | main | c851b7ded3 | gh:SuperInstance/quilt-esp32.git | 0 | 0/0 |
| quilt-ewitness-readonly | main | 61b9e0403f | gh:SuperInstance/quilt-ewitness | 0 | 0/0 |
| quilt-ewitness | main | fc0b3d67d6 | gh:SuperInstance/quilt-ewitness.git | 0 | 0/0 |
| quilt-fleet | master | aba8ac2117 | gh:SuperInstance/quilt-fleet | 0 | 0/0 |
| quilt-gpu-lab | main | 26a5f451ff | gh:SuperInstance/quilt-gpu-lab.git | 0 | 0/0 |
| quilt-i2i | main | a729ce983e | gh:SuperInstance/quilt-i2i.git | 0 | 0/0 |
| quilt-jepa | main | 6a2804b326 | gh:SuperInstance/quilt-jepa | 0 | 0/0 |
| quilt-llvm | r4-conception | 1d844fec32 | gh:SuperInstance/quilt-llvm.git | 0 | 0/0 |
| quilt-loom | main | de4247e891 | gh:SuperInstance/quilt-loom.git | 0 | 0/0 |
| quilt-mhs-playtest | main | 26c8523650 | gh:SuperInstance/quilt-mhs.git | 0 | 0/0 |
| quilt-mhs | main | 26c8523650 | gh:SuperInstance/quilt-mhs.git | 0 | 0/0 |
| quilt-mojo-lab | main | 0d8efa85df | gh:SuperInstance/quilt-mojo-lab.git | 0 | 0/0 |
| quilt-mojo | main | b9b84e54a2 | gh:SuperInstance/quilt-mojo.git | 0 | 0/0 |
| quilt-neudecide | main | 7786718919 | gh:SuperInstance/quilt-neudecide.git | 0 | 0/0 |
| quilt-pincher | docs/exoj-citation-provenance | 2dc380e263 | gh:SuperInstance/quilt-pincher.git | 0 | 0/0 |
| quilt-quant | main | c7150bd28d | gh:SuperInstance/quilt-quant.git | 0 | 0/0 |
| quilt-research-canons | main | d78eaf1257 | gh:SuperInstance/quilt-research-canons | 0 | 0/0 |
| quilt-rust | main | ef3c379904 | gh:SuperInstance/quilt-rust.git | 0 | 0/0 |
| quilt-tools | champion-audit | aedf7e3cd2 | gh:SuperInstance/quilt-tools | 0 | 0/0 |
| quilt-tournament | master | 2f6daf2182 | gh:SuperInstance/quilt-tournament.git | 0 | 0/0 |
| quilt-verilog | g3-kinduction | f3478e3124 | gh:SuperInstance/quilt-verilog.git | 0 | 0/0 |
| quilt-vm-haskell | master | 3334871fb1 | gh:SuperInstance/quilt-vm-haskell.git | 0 | 0/0 |
| quilt-vm-typescript | master | 5dffa421de | gh:SuperInstance/quilt-vm-typescript | 0 | 0/0 |
| quilt | quilt-jupyter-conception | 6df30bc45b | gh:SuperInstance/quilt.git | 0 | 0/0 |
| rd | main | 4b22562f2c | gh:SuperInstance/rd.git | 0 | 0/0 |
| roblox-world-scanner | main | 799376fda4 | gh:SuperInstance/roblox-world-scanner.git | 0 | 0/0 |
| room-render | main | e64633b181 | gh:SuperInstance/room-render.git | 0 | 0/0 |
| saddle | main | 00323cf926 | gh:SuperInstance/saddle.git | 0 | 0/0 |
| scrap-quilt | main | 1e404c1c3b | gh:SuperInstance/scrap-quilt.git | 0 | 0/0 |
| scrap-spark | main | 4709f2dd4f | gh:SuperInstance/scrap-spark.git | 0 | 0/0 |
| scrap-voice | master | b1117d8fd7 | gh:SuperInstance/scrap-voice.git | 0 | 0/0 |
| scrapcraft-roblox-bible | main | f16cdefc5c | gh:SuperInstance/scrapcraft-roblox-bible.git | 0 | 0/0 |
| scrapcraft-roblox | main | cdad539284 | gh:SuperInstance/scrapcraft-roblox.git | 0 | 0/0 |
| scrapcraft-world | main | fb0b55d8ae | gh:SuperInstance/scrapcraft-world.git | 0 | 0/0 |
| screen-agent | main | 2858338c8c | gh:SuperInstance/screen-agent.git | 0 | 0/0 |
| scummvm-arcade | main | 63b83ba78d | gh:SuperInstance/scummvm-arcade.git | 0 | 0/0 |
| scummvm-gui-design | master | 50788da857 | gh:SuperInstance/scummvm-gui-design.git | 0 | 0/0 |
| scummvm-prototype | main | f7298fa898 | gh:SuperInstance/scummvm-prototype.git | 0 | 0/0 |
| selectlib-readonly | main | 8a73ed0e07 | gh:SuperInstance/selectlib.git | 0 | 0/0 |
| selectlib | main | f5785ff392 | gh:SuperInstance/selectlib.git | 0 | 0/0 |
| sensor-bridge | main | b7df51494d | gh:SuperInstance/sensor-bridge.git | 0 | 0/0 |
| shoal | main | f130cac286 | gh:SuperInstance/shoal.git | 0 | 0/0 |
| si-papers-new | main | 60d8f73420 | gh:SuperInstance/si-papers-new.git | 0 | 0/0 |
| signal-chain | master | 7267c38cd5 | gh:SuperInstance/signal-chain.git | 0 | 0/0 |
| silence-map | main | f4c157a7d7 | gh:SuperInstance/silence-map.git | 0 | 0/0 |
| slackwater-art-spectrum | main | e047b1265c | gh:SuperInstance/slackwater-art-spectrum.git | 0 | 0/0 |
| slackwater-cognition | master | 876cd4faeb | gh:SuperInstance/slackwater-cognition.git | 0 | 0/0 |
| slackwater-forge | main | a6ff4eb052 | gh:SuperInstance/slackwater-forge.git | 0 | 0/0 |
| slackwater-harmony | main | d684afa99f | gh:SuperInstance/slackwater-harmony.git | 0 | 0/0 |
| slackwater-lattice | main | 697da52abb | gh:SuperInstance/slackwater-lattice.git | 0 | 0/0 |
| slackwater-perception | main | 5075e31fe8 | gh:SuperInstance/slackwater-perception.git | 0 | 0/0 |
| slackwater-rust | main | d37fc0d70d | gh:SuperInstance/slackwater-rust.git | 0 | 0/0 |
| slackwater-tempo | main | de33f2068d | gh:SuperInstance/slackwater-tempo.git | 0 | 0/0 |
| slackwater-tminus | main | cdcf35bd27 | gh:SuperInstance/slackwater-tminus.git | 0 | 0/0 |
| slackwater-tools | main | 77916fb5cb | gh:SuperInstance/slackwater-tools.git | 0 | 0/0 |
| smp-notebook | master | 23660ef3fb | gh:SuperInstance/smp-notebook.git | 0 | 0/0 |
| sonar-vision | main | 6bad026ba2 | gh:SuperInstance/sonar-vision.git | 0 | 0/0 |
| spatial-registry | master | 346dd32982 | gh:SuperInstance/spatial-registry.git | 0 | 0/0 |
| spread | main | 3bf9ad38d8 | gh:SuperInstance/spread.git | 0 | -/- |
| starship-jetsonclaw1 | main | f333841f52 | gh:SuperInstance/starship-jetsonclaw1.git | 0 | 0/0 |
| stigmergy | main | dedbb8c123 | gh:SuperInstance/stigmergy.git | 0 | 0/0 |
| stock-screener | main | 8b27ca6b5d | gh:SuperInstance/stock-screener.git | 0 | 0/0 |
| sunset-ecosystem | main | aa8c52c85c | gh:SuperInstance/sunset-ecosystem | 0 | 0/0 |
| superinstance-ai | master | 213405b276 | gh:SuperInstance/superinstance-ai.git | 0 | 0/0 |
| superinstance-api | master | 213f5fbda5 | gh:SuperInstance/superinstance-api.git | 0 | 0/0 |
| superinstance-design-system | main | c97d3d0ade | gh:SuperInstance/superinstance-design-system.git | 0 | 0/0 |
| superinstance-profile | main | fd15697ff8 | gh:SuperInstance/SuperInstance.git | 0 | 0/0 |
| superinstance-website | master | 59ea86be64 | gh:SuperInstance/superinstance-website.git | 0 | 0/0 |
| superinstance | main | 24faac8135 | gh:SuperInstance/superinstance.git | 0 | 0/0 |
| svelte-quilt | main | 03d0ba3bbf | gh:SuperInstance/svelte-quilt.git | 0 | 0/0 |
| sweep | master | 5233ceba92 | gh:SuperInstance/sweep.git | 0 | 0/0 |
| tap-frontend | master | 8a63168142 | gh:SuperInstance/tap-frontend.git | 0 | 0/0 |
| tap-gamenight | master | d7e89555c9 | gh:SuperInstance/tap-gamenight.git | 0 | 0/0 |
| tapscript-studio | master | 653eba2d21 | gh:SuperInstance/tapscript-studio.git | 0 | 0/0 |
| tapscript-worker | main | d1c3196ef3 | gh:SuperInstance/plainsong-worker.git | 0 | 0/0 |
| technician | master | a852131a84 | gh:SuperInstance/technician.git | 0 | 0/0 |
| tensor-midi | pulse-eye | a10af1df11 | gh:SuperInstance/tensor-midi.git | 0 | 0/0 |
| ternary-rom | master | 5f16d6c66c | gh:SuperInstance/ternary-rom.git | 0 | 0/0 |
| ternary-tenforward | master | f4753026e4 | gh:SuperInstance/ternary-tenforward | 0 | 0/0 |
| terrain | main | 3404433586 | gh:SuperInstance/terrain.git | 0 | 0/0 |
| tessera | main | be63e542bb | gh:SuperInstance/tessera.git | 0 | 0/0 |
| the-listeners-ear | master | 004da02827 | gh:SuperInstance/the-listeners-ear.git | 0 | 0/0 |
| the-living-minds | master | 5a46d9a0ea | gh:SuperInstance/the-living-minds.git | 0 | 0/0 |
| the-relay | main | 4e08fd218e | gh:SuperInstance/the-relay.git | 0 | 0/0 |
| the-tap | HEAD | 78fdaeb8d9 | gh:SuperInstance/the-tap.git | 0 | -/- |
| thought-amplifier | master | 4e393ffee5 | gh:SuperInstance/thought-amplifier.git | 0 | 0/0 |
| tile-memory-early-version | main | d76f2bbd9a | gh:SuperInstance/tile-memory-early-version | 0 | 0/0 |
| tit-quilt | main | 342611f481 | gh:SuperInstance/tit-quilt.git | 0 | 0/0 |
| tit_quilt_elixir | main | a50f44d95a | gh:SuperInstance/tit_quilt_elixir.git | 0 | 0/0 |
| tmux-quilt-readonly | main | 2252e9d5f1 | gh:SuperInstance/tmux-quilt.git | 0 | 0/0 |
| vessel-agent-system | master | 9fdecdb861 | gh:SuperInstance/vessel-agent-system.git | 0 | 0/0 |
| vessel-room-navigator | main | 72c9c89bf1 | gh:SuperInstance/vessel-room-navigator.git | 0 | 0/0 |
| vibe-protocol | main | 4a7edc20da | gh:SuperInstance/vibe-protocol.git | 0 | 0/0 |
| vibe-world | master | 727a4781f4 | gh:SuperInstance/vibe-world.git | 0 | 0/0 |
| voice-reflex-gate | main | b4eae57b47 | gh:SuperInstance/voice-reflex-gate.git | 0 | 0/0 |
| voxel-logic | main | 670acfec2e | gh:SuperInstance/voxel-logic.git | 0 | 0/0 |
| webgpu-profiler | main | 530ba037a3 | gh:SuperInstance/webgpu-profiler.git | 0 | 0/0 |
| wesley-cns-adapter | master | b827c53e33 | gh:SuperInstance/wesley-cns-adapter.git | 0 | 0/0 |
| wesley-curriculum | master | 97a5ee8ede | gh:SuperInstance/wesley-curriculum.git | 0 | 0/0 |
| wesley-holodeck | master | 59369513a8 | gh:SuperInstance/wesley-holodeck.git | 0 | 0/0 |
| wesley-journal | master | f0baf34a79 | gh:SuperInstance/wesley-journal.git | 0 | 0/0 |
| wesley | master | b9990d35b5 | gh:SuperInstance/wesley.git | 0 | 0/0 |
| wesleys-imagination | main | 7fa4b120ba | gh:SuperInstance/wesleys-imagination.git | 0 | 0/0 |
| zai-router | main | 592913503b | gh:SuperInstance/zai-router.git | 0 | 0/0 |
| zeroclaw-dissertation | master | 79e13ccae9 | gh:SuperInstance/zeroclaw-dissertation.git | 0 | 0/0 |
| zeroclaw | main | 51d22ead3c | gh:SuperInstance/zeroclaw.git | 0 | 0/0 |

## Git worktrees (not independent repos - content tracked via parent)

mist-lab-work, quilt-cosim-wt, quilt-llvm-wt-cocapn, quilt-llvm-wt-gacorpus, quilt-llvm-wt-merkle, quilt-llvm-wt-mutants, quilt-llvm-wt-r3lane1, quilt-llvm-wt-r3lane3, quilt-llvm-wt-r4lane1, quilt-llvm-wt-region, quilt-llvm-wt-rivalry, quilt-llvm-wt-shape, quilt-llvm-wt-tombstone, quilt-llvm-wt-usetables, quilt-r27, quilt-rust-selfimprove, quilt-verilog-gpu, qv-head, qvw-r27, saddle-ft, saddle-v3

## Non-git directories in ~/projects (deliberately not pushed)

- SuperInstance
- _archive
- dlss-lab
- fleet-mirror
- fleet-reactions
- midi-corpus
- mist-art-qc
- music
- plato-cf
- pr-wave-pong
- readme-art-drafts
- researchlocal
- sd-fleet
- shoal-opencode.archived-20260824-loses-tournament
- si-arena
- wesley-holodeck-archived
- zeroclaw-knowledge

Reasons: data corpora (midi-corpus, music, researchlocal), scratch/lab dirs
(mist-*, sd-fleet, si-arena, saddle-ft/v3, qv-head, qvw-r27, quilt-r27,
pr-wave-pong, plato-cf, fleet-mirror, fleet-reactions, dlss-lab), draft dirs
(readme-art-drafts), archives (shoal-opencode.archived-20260824-loses-tournament,
wesley-holodeck-archived, _archive, zeroclaw-knowledge), and the SuperInstance
profile dir. None contain git history; recoverable content lives in the repos above.
