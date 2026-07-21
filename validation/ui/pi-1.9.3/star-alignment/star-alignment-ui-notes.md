# StarAlignment UI Notes

## Preflight

| Alan | Sonuç |
|---|---|
| Registry | `prompts/process-registry.yml` — geçerli |
| PROCESS_SLUG | `star-alignment` — exact match |
| PROCESS_NAME | `StarAlignment` |
| PROCESS_TYPE | `core-process` |
| PIXINSIGHT_VERSION | `1.9.3` |
| SCREENSHOT_DIR | `validation/ui/pi-1.9.3/star-alignment/screenshots/` |
| VALIDATION_DIR | `validation/ui/pi-1.9.3/star-alignment` |
| CANONICAL_DOC_FILE | `docs/03-kalibrasyon/star-alignment.md` |
| Screenshot dizini | Mevcut ve expected path ile eşleşiyor |
| Screenshot sayısı | 9 |
| Preflight sonucu | **PASS** |

## Doğrudan doğrulanan UI

- Menü yolu: `Process > ImageRegistration > StarAlignment`.
- Sections: `Target Images`, `Format Hints`, `Output Images`, `Star Detection`, `Star Matching`, `Interpolation`.
- Ana registration/model etiketleri ve generate seçenekleri.
- Açık listeler: `Compute intersections`, `Compute PSF fits`, `Descriptor type`, `Pixel interpolation`, `Registration model`, `Sample format`, `Working mode`.
- Evidence matrix içinde 41 açık liste seçeneği tekil satırlara ayrılmıştır.

## Yalnız gözlenen durumlar

Ana ekran seçimleri ve checkbox durumları `UI-OBSERVED` olarak kaydedildi. `Generate drizzle data` işaretli görünse de bu default veya output davranışı kanıtı değildir.

## Doğrulanmayan alanlar

- Ekran içinde PixInsight sürüm numarası ve reset/default state.
- Tooltip ve console/log metni.
- Model, descriptor ve interpolation algoritmalarının anlamı.
- Registration başarısı, distortion residuals, drizzle output ve resampling artefacts.

## Kanıt sınırı

Bu kayıt yalnız supplied screenshot dizinindeki dokuz görsele dayanır. Static UI, registration behavior veya algorithm kanıtı olarak kullanılmamıştır.
