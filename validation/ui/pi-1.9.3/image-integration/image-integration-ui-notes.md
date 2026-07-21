# ImageIntegration UI Notes

## Preflight

| Alan | Sonuç |
|---|---|
| Registry | `prompts/process-registry.yml` — geçerli |
| PROCESS_SLUG | `image-integration` — exact match |
| PROCESS_NAME | `ImageIntegration` |
| PROCESS_TYPE | `core-process` |
| PIXINSIGHT_VERSION | `1.9.3` |
| SCREENSHOT_DIR | `validation/ui/pi-1.9.3/image-integration/screenshots/` |
| VALIDATION_DIR | `validation/ui/pi-1.9.3/image-integration` |
| CANONICAL_DOC_FILE | `docs/03-kalibrasyon/image-integration.md` |
| Screenshot dizini | Mevcut ve expected path ile eşleşiyor |
| Screenshot sayısı | 8 |
| Preflight sonucu | **PASS** |

## Doğrudan doğrulanan UI

- Menü yolu: `Process > ImageIntegration > ImageIntegration`.
- Sekiz section başlığı ve altı temel selector etiketi.
- Açık listeler: `Combination`, `PSF type`, `Noise estimator`, `Normalization`, `Rejection algorithm`, `Weights`.
- Açık listelerde toplam 40 görünür seçenek evidence matrix içinde tekil kaydedildi.

## Yalnız gözlenen durumlar

Ana arayüzde görünen seçim ve checkbox durumları `UI-OBSERVED` olarak tutuldu. `No rejection` seçili olduğu halde bazı rejection kontrollerinin pasif/işaretli görünmesi yalnız ekran anının kaydıdır; behavior veya default kanıtı değildir.

## Doğrulanmayan alanlar

- Ekran içinde PixInsight sürümü ve reset/default state.
- Tooltip ve console/log metni.
- Combination, normalization, weighting, estimator ve rejection algoritmalarının anlamı.
- Master, rejection maps, noise evaluation ve ROI output davranışı.

## Kanıt sınırı

Bu kayıt yalnız supplied screenshot dizinindeki sekiz görsele dayanır. Static UI, integration algorithm veya output behavior kanıtı olarak kullanılmamıştır.
