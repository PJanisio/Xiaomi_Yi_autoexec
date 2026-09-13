# Firmware research workspace

This directory contains analysis results and tools for the firmware stored in
the separate [Xiaomi_Yi_firmware](https://github.com/PJanisio/Xiaomi_Yi_firmware)
repository. Firmware binaries are intentionally not copied here: that
repository remains the source of truth and backup archive, while this one
contains reproducible research artifacts for `autoexec.ash` development.

## Layout

```text
!!commands_extracted/
├── 1.2.13/                 # historical, manually collected strings
├── firmware_extraction/
│   ├── database/            # generated and reviewed command metadata
│   ├── diffs/              # generated cross-firmware reports
│   ├── elf/                # ELF inspection results
│   ├── filesystem/         # extracted filesystem output (not committed)
│   ├── strings/             # generated strings output
│   └── tools/              # local, dependency-light analysis tools
└── README.md
```

## Quick start

Run from the repository root:

```text
python !!commands_extracted/firmware_extraction/tools/firmware_analysis.py extract path/to/firmware.bin
```

The command creates a report directory next to the input (or use
`--output-dir`) containing `manifest.json`, `strings.txt`, `elf.json`, and
optional `binwalk.json`/`filesystem/` output. It never modifies the input
firmware.

Compare two extracted reports:

```text
python !!commands_extracted/firmware_extraction/tools/firmware_analysis.py diff report-a report-b
```

Build a reviewable command database from extracted strings:

```text
python !!commands_extracted/firmware_extraction/tools/firmware_analysis.py commands report/strings.txt
```

`binwalk` is optional. Without it, raw strings and ELF signatures are still
analysed and the report explicitly records that filesystem extraction was not
available. Treat every discovered command as unverified until tested on the
matching camera and firmware revision.