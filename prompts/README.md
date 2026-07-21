# Validation Template Infrastructure

This directory contains reusable validation, review and release templates for the PixInsight Master Guide.

## Templates

| File | Purpose |
|---|---|
| [UI validation](ui-validation-template.md) | Registry-controlled screenshot evidence validation |
| [Process registry](process-registry.yml) | Authoritative process slug and canonical-document mapping |
| [Process inventory](process-inventory.md) | Repository-derived registry evidence |
| [Data validation](data-validation-template.md) | Controlled real-data tests |
| [Source validation](source-validation-template.md) | Primary-source claim review |
| [Sprint review](sprint-review-template.md) | Sprint readiness review |
| [Release checklist](release-checklist.md) | Release Go/No-Go decision |

## Single source of truth

`prompts/process-registry.yml` is mandatory and authoritative for UI validation.

- `PROCESS_SLUG` is not a free-text process name.
- Copy the key exactly from `processes:`; matching is case-sensitive.
- Display names and aliases cannot replace a registry key.
- UI validation cannot create missing canonical documentation.
- UI validation cannot repair, guess or override registry mappings.
- Registry maintenance is a separate infrastructure task.
- Unknown slugs fail before screenshot inspection or file creation.

## Before preparing screenshots

1. Open [process-registry.yml](process-registry.yml).
2. Find the exact process key.
3. Confirm that `canonical_doc` is non-null and points to the intended page.
4. Create screenshots only under `validation/ui/<version>/<exact-key>/screenshots/`.
5. Run the short invocation.

## Supported invocation

```text
Use prompts/ui-validation-template.md

PROCESS_SLUG=<exact registry key>
SCREENSHOT_DIR=validation/ui/pi-1.9.3/<exact registry key>/screenshots/
PIXINSIGHT_VERSION=1.9.3
```

No `DOC_FILE`, `PROCESS_NAME`, `VALIDATION_DIR` or `PROCESS_ALIASES` input is accepted.

## Valid examples

### DBE

```text
Use prompts/ui-validation-template.md

PROCESS_SLUG=dbe
SCREENSHOT_DIR=validation/ui/pi-1.9.3/dbe/screenshots/
PIXINSIGHT_VERSION=1.9.3
```

### BackgroundNeutralization

```text
Use prompts/ui-validation-template.md

PROCESS_SLUG=background-neutralization
SCREENSHOT_DIR=validation/ui/pi-1.9.3/background-neutralization/screenshots/
PIXINSIGHT_VERSION=1.9.3
```

## Invalid examples

### Unknown slug

```text
PROCESS_SLUG=linear-fit
SCREENSHOT_DIR=validation/ui/pi-1.9.3/linear-fit/screenshots/
PIXINSIGHT_VERSION=1.9.3
```

The current registry has no `linear-fit` key, so this must return **UNKNOWN-PROCESS-SLUG** before screenshot inspection or file changes. UI validation cannot create its missing canonical page.

### Display name instead of key

```text
PROCESS_SLUG=DynamicBackgroundExtraction
SCREENSHOT_DIR=validation/ui/pi-1.9.3/DynamicBackgroundExtraction/screenshots/
PIXINSIGHT_VERSION=1.9.3
```

This must return **UNKNOWN-PROCESS-SLUG**. The exact registry key is `dbe`; aliases and display names are not slug inputs.

## Preflight failure statuses

- **REGISTRY-NOT-FOUND**
- **REGISTRY-INVALID**
- **UNKNOWN-PROCESS-SLUG**
- **DOC-REQUIRED**
- **REGISTRY-CANONICAL-DOC-MISSING**
- **REGISTRY-CANONICAL-DOC-INVALID**
- **SCREENSHOT-DIR-MISMATCH**

Every failure stops before evidence generation or repository changes.

## Common evidence states

- **UI-VERIFIED:** directly readable UI fact.
- **UI-PARTIAL:** partly readable or context-limited fact.
- **UI-OBSERVED:** current screenshot state, not a default/behavior claim.
- **UI-UNVERIFIED:** insufficient UI evidence.
- **DATA-REQUIRED:** controlled real-data test needed.
- **DOC-REQUIRED:** primary documentation needed.

