# Known issues in V4

These observations come from reading the supplied batch source. They are not runtime test results. The publication changes branding only; the following issues remain unresolved.

| Area | Observation and consequence |
| --- | --- |
| Missing jump target | `goto theEnd` references a label that is absent. The normal path after the event-log loop cannot continue to a defined end section. |
| Administrator detection | The script parses `bcdedit` output and compares a token with the English word `Access`. This is fragile, locale-dependent, and occurs after many system-changing commands have already run. |
| Failure path | The `:noAdmin` section prints a warning and then falls through into network/firewall reset commands instead of safely exiting. |
| Invalid cleanup line | `/s /f /q c:\windows\temp\*.*` has no command name. It does not invoke `del`. |
| Legacy commands | Multiple `deltree` commands and paths such as `WIN386.SWP` are historical. Some `netsh` commands also require platform-specific validation. |
| Unsafe path handling | `%temp%` is expanded without quotes or validation. Several recursive operations target whole directories. Hard-coded `C:\Windows` paths assume a particular installation location. |
| Unexpected deletion targets | Commands target Prefetch and `C:\Windows\Fonts\Arial` contents in addition to temporary locations. These are not ordinary application-owned temporary files. |
| Diagnostic data loss | The script enumerates event-log channels and attempts to clear each one without exporting a backup. This removes troubleshooting and audit evidence when successful. |
| Network and firewall changes | The source includes resets and DHCP changes for literal adapter names, including `Ethernet`. Such changes may disrupt connectivity or remove custom settings if reached and successful. |
| Forced process shutdown | `taskkill /f` can interrupt applications and lose unsaved work. The process list includes `RuntimeBroker.exe`, and Explorer is restarted. |
| Error reporting | Most command results are not checked. Messages such as “Done refreshing” or “Event Logs have been cleared” do not prove success. |
| No recovery controls | No confirmation prompts precede the destructive operations, and no dry run, backup, rollback, or bounded target selection is provided. |

## Verification boundary

No cleanup, service, event-log, or network command was executed during repository preparation. Supported Windows versions, privilege behavior, correctness, and performance remain unverified. Runtime evaluation belongs in a disposable VM, with evidence recorded per operation rather than inferred from completion messages.
