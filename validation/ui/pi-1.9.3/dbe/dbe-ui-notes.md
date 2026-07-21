# DynamicBackgroundExtraction UI Notları

## Kimlik

- Process: `DynamicBackgroundExtraction` — **UI-VERIFIED**  
  Kanıt: `screenshots/07-spcc-process-menu-location.png`
- Menü: `Process → BackgroundModelization → DynamicBackgroundExtraction` — **UI-VERIFIED**  
  Kanıt: `screenshots/07-spcc-process-menu-location.png`
- PixInsight 1.9.3: ekran içinde sürüm yok — **UI-PARTIAL**.

## Preflight ve canonical discovery

| Alan | Değer |
|---|---|
| PROCESS_SLUG | `dbe` |
| PIXINSIGHT_VERSION | `1.9.3` |
| SCREENSHOT_DIR | `validation/ui/pi-1.9.3/dbe/screenshots/` |
| VALIDATION_DIR | `validation/ui/pi-1.9.3/dbe` |
| CANONICAL_DOC_FILE | `docs/04-gradient/dbe.md` |
| Screenshot folder | Mevcut |
| Screenshot sayısı | 4 |

Canonical sayfa tek `docs/**/dbe.md` eşleşmesiyle bulundu; `mkdocs.yml`, H1 ve gelen iç bağlantılar aynı hedefi destekledi.

## Section başlıkları

`No target view`, `Model Parameters (1)`, `Model Parameters (2)`, `Sample Generation`, `Model Image`, `Target Image Correction` başlıkları `screenshots/01-spcc-full-interface.png` içinde doğrudan okunur.

## Açık listelerde doğrulanan seçenekler

### Correction

- `None`
- `Subtraction`
- `Division`

Kanıt: `screenshots/correction.png`. Sınıf: **UI-VERIFIED**.

### Sample format

- `Same as target`
- `8-bit unsigned integer`
- `16-bit unsigned integer`
- `32-bit unsigned integer`
- `32-bit IEEE 754 floating point`
- `64-bit IEEE 754 floating point`

Kanıt: `screenshots/sample-format.png`. Sınıf: **UI-VERIFIED**.

## Görülen mevcut değerlerin sınırı

Ana arayüzdeki `Tolerance 0.500`, `Shadows relaxation 3.000`, `Smoothing factor 0.250`, `Default sample radius 5`, `Samples per row 10`, `Minimum sample weight 0.750`, `Downsample 2`, `Correction None` ve diğer kayıtlar **UI-OBSERVED** sınıfındadır. Process instance'ın yeni/resetlenmiş olduğu kanıtlanmadığından default değildir.

## Kanıtlanmayan bilgiler

- Default değerler, tooltip ve console/log: **UI-UNVERIFIED**.
- Sample generation, model üretimi, interpolation ve correction output davranışı: **DATA-REQUIRED**.
- Parametrelerin algoritmik anlamı ve model matematiği: **DOC-REQUIRED**.

## Doküman hedefi

Automatic canonical discovery sonucu `docs/04-gradient/dbe.md` kullanıldı. Yeni sayfa oluşturulmadı; mevcut sayfa taşınmadı veya yeniden adlandırılmadı.
