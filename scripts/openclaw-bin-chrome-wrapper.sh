#!/usr/bin/env bash
# OpenClaw browser hands — absolute paths so a stripped spawn env can't break exec
export LD_LIBRARY_PATH="/home/eileen/.openclaw/lib/nss${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
exec /home/eileen/.cache/ms-playwright/chromium-1148/chrome-linux/chrome "$@"
