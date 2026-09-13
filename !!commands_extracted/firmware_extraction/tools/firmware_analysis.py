#!/usr/bin/env python3
"""Reproducible, offline-first analysis helpers for Xiaomi Yi firmware.

The tool deliberately does not execute firmware. It extracts evidence that can
be reviewed and used to design autoexec scripts.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import re
import shutil
import subprocess
from pathlib import Path
from typing import Iterable


PRINTABLE = set(range(32, 127)) | {9}
USAGE_RE = re.compile(
    r"(?i)^\s*(?:usage\s*:?\s*)?((?:t|poweroff|reboot)\s+\S.*)$"
)


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for block in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def extract_strings(path: Path, minimum: int = 4) -> list[str]:
    data = path.read_bytes()
    result: list[str] = []
    current = bytearray()
    for byte in data:
        if byte in PRINTABLE:
            current.append(byte)
        else:
            if len(current) >= minimum:
                result.append(current.decode("ascii", errors="replace").strip())
            current.clear()
    if len(current) >= minimum:
        result.append(current.decode("ascii", errors="replace").strip())
    return list(dict.fromkeys(line for line in result if line))


def inspect_elf(path: Path) -> list[dict[str, object]]:
    data = path.read_bytes()
    records: list[dict[str, object]] = []
    offset = 0
    while True:
        offset = data.find(b"\x7fELF", offset)
        if offset < 0:
            break
        record: dict[str, object] = {"offset": offset}
        if offset + 6 <= len(data):
            record["class"] = {1: "32-bit", 2: "64-bit"}.get(
                data[offset + 4], f"unknown ({data[offset + 4]})"
            )
            record["endianness"] = {1: "little", 2: "big"}.get(
                data[offset + 5], f"unknown ({data[offset + 5]})"
            )
        if offset + 20 <= len(data):
            machine = int.from_bytes(data[offset + 18 : offset + 20], "little")
            record["machine"] = {40: "ARM", 183: "AArch64"}.get(
                machine, f"unknown ({machine})"
            )
        records.append(record)
        offset += 4
    return records


def run_binwalk(path: Path, output_dir: Path) -> dict[str, object]:
    executable = shutil.which("binwalk")
    if not executable:
        return {"available": False, "reason": "binwalk was not found on PATH"}
    command = [executable, "--signature", "--quiet", str(path)]
    completed = subprocess.run(command, capture_output=True, text=True, check=False)
    return {
        "available": True,
        "command": command,
        "returncode": completed.returncode,
        "stdout": completed.stdout.splitlines(),
        "stderr": completed.stderr.splitlines(),
        "extraction_supported": False,
        "note": "Use binwalk -e manually after reviewing signatures.",
    }


def write_json(path: Path, value: object) -> None:
    path.write_text(json.dumps(value, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def extract_report(firmware: Path, output_dir: Path) -> None:
    if not firmware.is_file():
        raise SystemExit(f"Firmware file does not exist: {firmware}")
    output_dir.mkdir(parents=True, exist_ok=True)
    strings = extract_strings(firmware)
    (output_dir / "strings.txt").write_text("\n".join(strings) + "\n", encoding="utf-8")
    write_json(output_dir / "elf.json", inspect_elf(firmware))
    write_json(output_dir / "binwalk.json", run_binwalk(firmware, output_dir))
    write_json(
        output_dir / "manifest.json",
        {
            "input": str(firmware.resolve()),
            "filename": firmware.name,
            "size": firmware.stat().st_size,
            "sha256": sha256(firmware),
            "string_count": len(strings),
            "elf_count": len(inspect_elf(firmware)),
            "tool": "firmware_analysis.py",
        },
    )


def command_candidates(lines: Iterable[str]) -> list[dict[str, str]]:
    candidates = []
    for line in lines:
        match = USAGE_RE.match(line)
        if match:
            command = match.group(1).strip()
            candidates.append(
                {
                    "command": command,
                    "source": "strings",
                    "status": "unverified",
                    "notes": "",
                }
            )
    unique: dict[str, dict[str, str]] = {item["command"]: item for item in candidates}
    return [unique[key] for key in sorted(unique)]


def build_commands(strings_path: Path, output: Path) -> None:
    if not strings_path.is_file():
        raise SystemExit(f"Strings file does not exist: {strings_path}")
    entries = command_candidates(
        strings_path.read_text(encoding="utf-8", errors="replace").splitlines()
    )
    write_json(
        output,
        {
            "schema_version": 1,
            "source": str(strings_path.resolve()),
            "review_required": True,
            "commands": entries,
        },
    )


def diff_reports(first: Path, second: Path, output: Path | None) -> None:
    first_lines = set((first / "strings.txt").read_text(encoding="utf-8").splitlines())
    second_lines = set((second / "strings.txt").read_text(encoding="utf-8").splitlines())
    report = {
        "from": str(first.resolve()),
        "to": str(second.resolve()),
        "only_in_from": sorted(first_lines - second_lines),
        "only_in_to": sorted(second_lines - first_lines),
    }
    destination = output or second / "diff.json"
    write_json(destination, report)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    subparsers = parser.add_subparsers(dest="action", required=True)
    extract = subparsers.add_parser("extract", help="create an analysis report")
    extract.add_argument("firmware", type=Path)
    extract.add_argument("--output-dir", type=Path)
    diff = subparsers.add_parser("diff", help="compare two analysis reports")
    diff.add_argument("first", type=Path)
    diff.add_argument("second", type=Path)
    diff.add_argument("--output", type=Path)
    commands = subparsers.add_parser("commands", help="build a command database")
    commands.add_argument("strings", type=Path)
    commands.add_argument("--output", type=Path)
    args = parser.parse_args()
    if args.action == "extract":
        output_dir = args.output_dir or args.firmware.with_suffix(".analysis")
        extract_report(args.firmware, output_dir)
    elif args.action == "diff":
        diff_reports(args.first, args.second, args.output)
    else:
        build_commands(
            args.strings,
            args.output or args.strings.with_name("command_database.json"),
        )


if __name__ == "__main__":
    main()
