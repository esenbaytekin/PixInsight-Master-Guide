# HistogramTransformation UI Notes

## Preflight

| Alan | Sonuç |
|---|---|
| Registry | `prompts/process-registry.yml` — geçerli |
| PROCESS_SLUG | `histogram-transformation` — exact match |
| PROCESS_NAME | `HistogramTransformation` |
| PROCESS_TYPE | `core-process` |
| PIXINSIGHT_VERSION | `1.9.3` |
| SCREENSHOT_DIR | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/` |
| VALIDATION_DIR | `validation/ui/pi-1.9.3/histogram-transformation` |
| CANONICAL_DOC_FILE | `docs/07-stretch/histogram-transformation.md` |
| Screenshot dizini | Mevcut ve expected path ile eşleşiyor |
| Screenshot sayısı | 4 |
| Preflight sonucu | **PASS** |

## Doğrudan doğrulanan UI

- Process başlığı ve `Process > IntensityTransformations > HistogramTransformation` yolu.
- `R`, `G`, `B`, `RGB/K` ve `A` kanal seçicileri.
- `Shadows`, `Highlights`, `Midtones` ve `Auto Clip Setup` etiketleri.
- Graph style seçenekleri: `Lines`, `Area`, `Bars`, `Dots`.
- Plot resolution seçenekleri: `6-bit (64)`, `7-bit (128)`, `8-bit (256)`, `9-bit (512)`, `10-bit (1024)`, `12-bit (4096)`, `14-bit (16K)`, `16-bit (64K)`, `100 levels`, `1000 levels`, `10000 levels`.

## Yalnız gözlenen durumlar

Ana arayüz karesinde `8-bit (256)`, `Lines`, `<No View Available>`, `Shadows 0.00000000`, `Highlights 1.00000000` ve `Midtones 0.50000000` görünür. Reset veya yeni instance kanıtı bulunmadığından bunlar default değildir.

## Doğrulanmayan alanlar

- Ekran içinde PixInsight sürüm numarası.
- Fabrika varsayılanları.
- Tooltip ve console metni.
- İkonların adları ve davranışları.
- Kanal seçicilerin, transfer parametrelerinin ve `Auto Clip Setup` düğmesinin algoritmik etkisi.
- Image data değişimi, clipping ve output davranışı.

## Kanıt sınırı

Bu kayıt yalnızca supplied screenshot dizinindeki dört görsele dayanır. Statik UI kanıtı, process davranışını veya matematiksel parametre anlamını doğrulamak için kullanılmamıştır.
