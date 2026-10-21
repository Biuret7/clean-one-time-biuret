# Contributing

Keep proposed changes focused and describe the behavior they change. The current V4 publication preserves the original command sequence; branding changes are recorded separately.

## Reporting a problem

Open a GitHub issue with the relevant command or section, Windows version, expected behavior, and observed result. Remove usernames, personal paths, IP addresses, credentials, and event-log contents from reports. Do not run the script on a real workstation just to reproduce a report.

## Proposing changes

1. Read [KNOWN_ISSUES.md](KNOWN_ISSUES.md).
2. Explain the exact targets, required privileges, failure handling, and recovery implications of a change.
3. Prefer explicit user choices, validated and quoted paths, and accurate exit/error reporting.
4. Keep destructive commands out of automated workflows and shared runners.
5. Evaluate system-changing behavior only in a disposable Windows VM with a restorable snapshot. Record what was actually tested; static inspection is not a runtime pass.
6. Update both README files when behavior changes. Keep the batch file's line endings intact.

Do not include machine-specific logs, private data, build archives, or unrelated projects in a pull request.
