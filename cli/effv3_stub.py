#!/usr/bin/env python3
"""EFFV3 Public Use CLI stub.

This stub validates that an example config can be read and then stops before live execution.
"""

import argparse
import sys
from pathlib import Path


def parse_simple_yaml(path: Path) -> dict:
    data = {}
    current = None
    for raw in path.read_text(encoding="utf-8").splitlines():
        line = raw.rstrip()
        if not line or line.lstrip().startswith("#"):
            continue
        if not line.startswith(" ") and line.endswith(":"):
            current = line[:-1]
            data[current] = {}
        elif current and ":" in line:
            key, value = line.strip().split(":", 1)
            data[current][key.strip()] = value.strip()
    return data


def main() -> int:
    parser = argparse.ArgumentParser(description="EFFV3 public skeleton CLI")
    parser.add_argument("--config", required=True)
    parser.add_argument("--prompt", required=True)
    args = parser.parse_args()

    config_path = Path(args.config)
    if not config_path.exists():
        print(f"[EFFV3 Public Stub] Config not found: {config_path}")
        return 2

    config = parse_simple_yaml(config_path)
    print("[EFFV3 Public Stub] Configuration parsed.")
    print(f"[EFFV3 Public Stub] Sections: {', '.join(sorted(config.keys()))}")
    print("[EFFV3 Public Stub] Request received for review.")
    print("[EFFV3 Public Stub] Live execution not included in this public skeleton.")
    return 3


if __name__ == "__main__":
    sys.exit(main())
