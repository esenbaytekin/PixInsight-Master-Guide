# LocalHistogramEqualization UI Notes

## Preflight

| Alan | Sonuç |
|---|---|
| Registry | `prompts/process-registry.yml` — geçerli |
| PROCESS_SLUG | `local-histogram-equalization` — exact match |
| PROCESS_NAME | `LocalHistogramEqualization` |
| PROCESS_TYPE | `core-process` |
| PIXINSIGHT_VERSION | `1.9.3` |
| SCREENSHOT_DIR | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/` |
| VALIDATION_DIR | `validation/ui/pi-1.9.3/local-histogram-equalization` |
| CANONICAL_DOC_FILE | `docs/12-detay-ve-kontrast/local-histogram-equalization.md` |
| Screenshot dizini | Mevcut ve expected path ile eşleşiyor |
| Screenshot sayısı | 3 |
| Preflight sonucu | **PASS** |

## Doğrudan doğrulanan UI

- Process başlığı: `LocalHistogramEqualization`.
- Menü yolu: `Process > IntensityTransformations > LocalHistogramEqualization`.
- Ana kontroller: `Kernel Radius`, `Contrast Limit`, `Amount`, `Histogram Resolution`, `Circular Kernel`.
- Açık `Histogram Resolution` seçenekleri: `8-bit (256)`, `10-bit (1024)`, `12-bit (4096)`.

## Yalnız gözlenen durumlar

Ana arayüz karesinde `Kernel Radius 64`, `Contrast Limit 2.0`, `Amount 1.000`, seçili `8-bit (256)` ve işaretli `Circular Kernel` görünür. Reset veya yeni instance kanıtı bulunmadığından bunlar default değildir.

## Doğrulanmayan alanlar

- Ekran içinde PixInsight sürüm numarası.
- Fabrika varsayılanları.
- Tooltip ve console/log metni.
- Parametrelerin algoritmik anlamı ve birbiriyle ilişkisi.
- Kernel şekli, histogram çözünürlüğü ve local contrast üzerindeki gerçek etki.
- Process output davranışı ve artefact sınırları.

## Kanıt sınırı

Bu kayıt yalnız supplied screenshot dizinindeki üç görsele dayanır. Statik UI görsellerinden algoritma veya output davranışı çıkarılmamıştır.
