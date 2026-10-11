# agent-inbox state

Live repo: https://github.com/SuperInstance/agent-inbox
Local clone: ~/agent-inbox (clean, main == origin/main)
HEAD at snapshot: 356aec8bf2d610034d5192ad8402391f90695633
Snapshot date: 2026-10-10

The repo IS the state (PROTOCOL.md, INSTALL.md, inbox/ tasks, queue docs).
Restore: git clone into ~/agent-inbox. The 5-min poll cron re-creates from
cron/cron-jobs-2026-10-10.json (job: agent-inbox poll).
