# CleAN-oNE TIME — Biuret V4

A Windows batch script that combines process shutdown, temporary-file cleanup, Explorer restart, and network maintenance commands.

[العربية](README.ar.md) · [Known issues](KNOWN_ISSUES.md) · [Contributing](CONTRIBUTING.md) · [Changelog](CHANGELOG.md)

> **Legacy script — review before use.** V4 contains destructive operations and known control-flow problems. It can delete files and Windows event logs, interrupt networking, and attempt to reset firewall settings. It has not been runtime-tested for this publication. Do not run it on a primary or production computer.

## What is included

`CleAN-oNE TIME [Biuret] V4.bat` is the supplied V4 script with its filename and console title renamed to Biuret. Its commands and behavior are otherwise unchanged.

The source contains commands to:

- Force-stop selected emulator-related processes, `adb.exe`, and `RuntimeBroker.exe`, and stop the `aow_drv` and `Tensafe` services.
- Restart Windows Explorer and release/renew the DHCP lease.
- Delete temporary files and Prefetch contents, with additional legacy cleanup targets.
- Enumerate and attempt to clear Windows event logs.
- Reset network components, firewall settings, and selected adapters to DHCP in a later section whose execution depends on broken administrator-detection/control flow.

These are descriptions of the source, not guarantees that every command works or executes. See [KNOWN_ISSUES.md](KNOWN_ISSUES.md) before considering execution.

## Requirements and evaluation

The script targets Windows Command Prompt (`cmd.exe`) and invokes built-in Windows utilities. Several commands require administrator privileges; some legacy commands are unavailable on modern Windows. No Windows version is currently certified as supported.

1. Download the repository using **Code → Download ZIP**, or clone it:

   ```text
   git clone https://github.com/Biuret7/clean-one-time-biuret.git
   ```

2. Open the `.bat` file in a text editor and review every operation. Opening it by double-clicking executes it.
3. Read the known issues. If evaluating behavior, use a disposable Windows virtual machine with a snapshot, no personal data, and no dependency on its network connection.

There is no installation, dry-run mode, selective cleanup menu, backup mechanism, or undo feature in this version. Publishing the source does not establish cleanup effectiveness, performance gains, or compatibility.

## Repository contents

| File | Purpose |
| --- | --- |
| `CleAN-oNE TIME [Biuret] V4.bat` | V4 batch source with Biuret branding |
| `README.ar.md` | Arabic project documentation |
| `KNOWN_ISSUES.md` | Source-level limitations and operational risks |
| `CONTRIBUTING.md` | Scope, reporting, and testing guidance |
| `CHANGELOG.md` | Publication changes |
| `.gitignore` | Excludes local logs, temporary files, and editor settings |
| `.gitattributes` | Preserves the batch file's bytes and standardizes documentation line endings |

## Verification status

The publication review inspected the source, documentation links, and branding-only changes. The script was **not executed**. There is no automated runtime test suite or CI execution of cleanup commands.

## License

No license has been selected for this repository. No open-source license grant is included.
