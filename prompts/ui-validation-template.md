# UI Validation Template

## Supported invocation

The invocation format is exact and contains only three configuration values:

```text
Use prompts/ui-validation-template.md

PROCESS_SLUG=<exact registry key>
SCREENSHOT_DIR=validation/ui/pi-1.9.3/<exact registry key>/screenshots/
PIXINSIGHT_VERSION=1.9.3
```

Do not accept `DOC_FILE`, `PROCESS_NAME`, `VALIDATION_DIR` or `PROCESS_ALIASES` as input. `PROCESS_SLUG` is a case-sensitive registry key, not free text.

## Mandatory registry preflight

Run every step below before inspecting screenshots, counting screenshots, creating validation directories, generating evidence or modifying any file.

### A. Registry existence

Verify that `prompts/process-registry.yml` exists.

- Missing: stop immediately, change no files and report **REGISTRY-NOT-FOUND**.

### B. Registry syntax

Parse the registry as YAML and verify that `processes` is a mapping.

- Invalid YAML or structure: stop immediately, change no files and report **REGISTRY-INVALID**.

### C. Exact slug lookup

Read `PROCESS_SLUG` exactly as supplied and compare it with keys under `processes`.

Matching is:

- exact key only;
- case-sensitive;
- no alias or display-name resolution;
- no normalization or fuzzy matching;
- no filename, heading, MkDocs navigation or internal-link search;
- no automatic canonical-document fallback.

If the key is absent, stop before screenshot inspection. Do not create directories/evidence, modify documentation, ROADMAP or CHANGELOG. Report **UNKNOWN-PROCESS-SLUG** with:

- supplied slug;
- up to five diagnostic close registry keys;
- instruction to inspect `prompts/process-registry.yml`;
- confirmation that no files changed.

Suggestions are diagnostic only and must never be selected automatically.

### D. Load registry entry

For an exact match, load:

- `display_name` as `PROCESS_NAME`;
- `type` as `PROCESS_TYPE`;
- `canonical_doc` as `CANONICAL_DOC_FILE`;
- `aliases` as `PROCESS_ALIASES`;
- `mkdocs_nav_title`;
- `status`;
- `confidence`;
- `notes`.

Aliases are output metadata only; they are never accepted as slug input.

### E. Canonical document integrity

The registry `canonical_doc` must be a non-empty string that:

- begins with `docs/`;
- ends with `.md`;
- points to an existing file;
- resolves inside the repository and under `docs/`;
- does not point into `validation/`, `prompts/`, `site/`, `archive/`, `build/`, temporary or generated output.

Failure handling:

- null or empty: stop documentation work and report **DOC-REQUIRED**;
- missing file: stop and report **REGISTRY-CANONICAL-DOC-MISSING**;
- outside/invalid path: stop and report **REGISTRY-CANONICAL-DOC-INVALID**.

Do not guess, create, rename, relocate or duplicate a canonical page.

### F. Derived validation paths

After successful registry and canonical checks, derive:

```text
VALIDATION_DIR=validation/ui/<PIXINSIGHT_VERSION>/<PROCESS_SLUG>
EVIDENCE_MATRIX=<VALIDATION_DIR>/<PROCESS_SLUG>-evidence-matrix.md
UI_NOTES=<VALIDATION_DIR>/<PROCESS_SLUG>-ui-notes.md
VALIDATION_CHECKLIST=<VALIDATION_DIR>/<PROCESS_SLUG>-validation-checklist.md
EXPECTED_SCREENSHOT_DIR=validation/ui/<PIXINSIGHT_VERSION>/<PROCESS_SLUG>/screenshots/
```

### G. Screenshot directory integrity

Compare supplied `SCREENSHOT_DIR` with `EXPECTED_SCREENSHOT_DIR`. Normalize only one optional trailing slash for comparison.

Reject another slug/version, repository-wide path, external path or any location outside `validation/ui/`. On mismatch, stop before screenshot inspection or file changes and report **SCREENSHOT-DIR-MISMATCH** with supplied path, expected path and confirmation that no files changed.

After an exact match, verify the directory exists. If missing, stop without creating it and report the missing screenshot directory.

## Mandatory preflight report

Show this report before validation work:

| Registry preflight | Value |
|---|---|
| Registry file | `prompts/process-registry.yml` |
| Registry status | {{VALID_OR_ERROR}} |
| Supplied slug | `{{PROCESS_SLUG}}` |
| Exact registry match | {{YES_NO}} |
| Display name | {{DISPLAY_NAME_OR_NA}} |
| Process type | {{TYPE_OR_NA}} |
| Canonical document | {{PATH_OR_NA}} |
| Canonical document exists | {{YES_NO_NA}} |
| Expected screenshot directory | {{EXPECTED_PATH}} |
| Supplied screenshot directory | {{SUPPLIED_PATH}} |
| Screenshot directory match | {{YES_NO_NA}} |
| PixInsight version | `{{PIXINSIGHT_VERSION}}` |
| Preflight result | **PASS** or **FAIL** |

On **FAIL**, stop immediately. Do not inspect screenshots and do not change files.

## Registry is authoritative

`prompts/process-registry.yml` is the only execution-time source for process and canonical-document resolution. Filename search, normalization, H1 matching, MkDocs navigation, internal links, aliases, candidate scoring and confidence thresholds may be used only by a separate registry inventory/maintenance sprint. They are prohibited as UI-validation execution fallback.

## Screenshot evidence rules

After preflight passes:

- use only screenshots inside the exact supplied `SCREENSHOT_DIR`;
- do not search the repository for alternatives;
- keep one verifiable fact per evidence row;
- do not guess unreadable text;
- do not infer hidden dropdown values;
- record checkbox state only for the screenshot moment;
- do not call a value default without explicit reset/default evidence;
- do not infer behavior, fallback, algorithm or input acceptance from static screenshots;
- mark invisible tooltip, console or version information as **Okunamadı**.

## Evidence classes

- **UI-VERIFIED:** label, menu, visible option or control type is directly readable.
- **UI-PARTIAL:** information is partly readable or lacks context.
- **UI-OBSERVED:** current value/state is visible; default or behavior is not proven.
- **UI-UNVERIFIED:** UI evidence is insufficient.
- **DATA-REQUIRED:** controlled data test is required.
- **DOC-REQUIRED:** primary documentation is required.

Confidence: `Yüksek`, `Orta`, `Düşük`. Do not transfer low-confidence information to canonical documentation.

## Evidence matrix

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| {{ID}} | {{SCREENSHOT_PATH}} | {{SECTION}} | {{FACT}} | {{TYPE}} | {{STATE}} | {{CLASS}} | {{CONFIDENCE}} | {{YES_PARTIAL_NO}} | {{NOTE}} |

## Change scope after PASS

Validation outputs are limited to the three derived files. Documentation updates are limited to:

- registry-provided `CANONICAL_DOC_FILE`;
- `REVIEW_REPORT.md`;
- `ROADMAP.md`;
- `CHANGELOG.md`.

Do not modify another process page.

## Validation checklist

- [ ] Registry preflight passed before screenshot inspection.
- [ ] Screenshot directory exactly matched the derived path.
- [ ] Evidence paths exist and remain inside SCREENSHOT_DIR.
- [ ] Existing values were not called defaults.
- [ ] Hidden dropdown values were not inferred.
- [ ] Static screenshots did not produce behavior claims.
- [ ] Markdown structure and links are valid.
- [ ] `mkdocs build --strict` passed.
- [ ] `git diff --check` passed.
- [ ] No commit or push occurred unless explicitly requested.

## Result report

Report the full registry preflight, screenshot/evidence counts, evidence-class counts, verified UI scope, default count, files changed, pending DATA/DOC records, build/diff results and unresolved issues.

