"""MkDocs başlığını release ve Git revision bilgisiyle zenginleştirir."""

from __future__ import annotations

import os
import subprocess
from pathlib import Path


REPOSITORY_ROOT = Path(__file__).resolve().parent.parent


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

    version = os.getenv("DOC_VERSION") or _git_value(
        "describe", "--tags", "--abbrev=0", fallback="unversioned"
    )
    commit = os.getenv("DOC_COMMIT") or _git_value(
        "rev-parse", "--short=7", "HEAD", fallback="unknown"
    )
    config.site_name = f"PixInsight Master Guide · {version} · {commit}"
    return config
