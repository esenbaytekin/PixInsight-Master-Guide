# LinearFit UI Notları

## Preflight ve discovery

- PROCESS_SLUG: `linear-fit`
- Normalized identifier: `linearfit`
- Aliases used: `linear-fit`, `LinearFit`, `Linear Fit`, `linearfit`
- PIXINSIGHT_VERSION: `1.9.3`
- SCREENSHOT_DIR: `validation/ui/pi-1.9.3/linear-fit/screenshots/`
- VALIDATION_DIR: `validation/ui/pi-1.9.3/linear-fit`
- CANONICAL_DOC_FILE: bulunamadı — **DOC-REQUIRED**
- Registry: `canonical_doc: null`
- Automatic candidates: yok
- Selection reason: hiçbir aday 80 puan eşiğine ulaşmadı
- Screenshot: 2; klasör mevcut

Registry → automatic fallback sırası uygulandı. Exact/normalized filename, exact/normalized H1, MkDocs navigation, internal links ve prominent process identifier sinyallerinden hiçbiri canonical aday üretmedi.

## Doğrulanan UI

- Process: `LinearFit`.
- Menü: `Process → ColorCalibration → LinearFit`.
- Etiketler: `Reference image`, `Reject low`, `Reject high`.
- Kontrol tipleri: image reference alanı; numeric alan ve slider.

Kanıtlar: `screenshots/01-full-interface.png` ve `screenshots/07-process-menu-location.png`.

## UI-OBSERVED

- `Reference image`: boş.
- `Reject low`: `0.000000`.
- `Reject high`: `0.920000`.

Bunlar default değildir. Reset/yeni instance kanıtı yoktur.

## Bekleyenler

- Ekran içi sürüm: **UI-PARTIAL**.
- Default, tooltip ve console: **UI-UNVERIFIED**.
- Fit/rejection/output davranışı: **DATA-REQUIRED**.
- Canonical sayfa ve algoritmik anlam: **DOC-REQUIRED**.
