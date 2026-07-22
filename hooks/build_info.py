"""Release ve Git revision bilgisini MkDocs theme context'ine aktarır."""

from __future__ import annotations

import os
import subprocess
from pathlib import Path


REPOSITORY_ROOT = Path(__file__).resolve().parent.parent
VERSION_FILE = REPOSITORY_ROOT / "VERSION"


def _git_value(*arguments: str, fallback: str) -> str:
    try:
        return subprocess.run(
            ["git", *arguments],
            cwd=REPOSITORY_ROOT,
            check=True,
            capture_output=True,
            text=True,
        ).stdout.strip()
    except (FileNotFoundError, subprocess.CalledProcessError):
        return fallback


def on_config(config):
    """Build ortamı değerlerini tercih eder, local build'de Git'e geri döner."""

    configured_version = (
        VERSION_FILE.read_text(encoding="utf-8").strip()
        if VERSION_FILE.is_file()
        else ""
    )
    version = os.getenv("DOC_VERSION") or configured_version or _git_value(
        "describe", "--tags", "--abbrev=0", fallback="unversioned"
    )
    commit = os.getenv("DOC_COMMIT") or _git_value(
        "rev-parse", "--short=7", "HEAD", fallback="unknown"
    )
    config.extra["release_version"] = version
    config.extra["release_commit"] = commit
    return config
