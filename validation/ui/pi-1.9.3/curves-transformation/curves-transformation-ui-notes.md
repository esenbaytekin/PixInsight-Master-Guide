# CurvesTransformation UI Notes

## Preflight

| Alan | Sonuç |
|---|---|
| Registry | `prompts/process-registry.yml` — geçerli |
| PROCESS_SLUG | `curves-transformation` — exact match |
| PROCESS_NAME | `CurvesTransformation` |
| PROCESS_TYPE | `core-process` |
| PIXINSIGHT_VERSION | `1.9.3` |
| SCREENSHOT_DIR | `validation/ui/pi-1.9.3/curves-transformation/screenshots/` |
| VALIDATION_DIR | `validation/ui/pi-1.9.3/curves-transformation` |
| CANONICAL_DOC_FILE | `docs/13-final/curves-transformation.md` |
| Screenshot dizini | Mevcut ve expected path ile eşleşiyor |
| Screenshot sayısı | 2 |
| Preflight sonucu | **PASS** |

## Doğrudan doğrulanan UI

- Process başlığı: `CurvesTransformation`.
- Menü yolu: `Process > IntensityTransformations > CurvesTransformation`.
- Kanal etiketleri: `R`, `G`, `B`, `RGB/K`, `A`, `L`, `a`, `b`, `c`, `H`, `S`.
- Curve point alanları: `Input` ve `Output`.

## Yalnız gözlenen durumlar

Ana arayüz karesinde `Input 0.00000`, `Output 0.00000` ve sol alttan sağ üste uzanan düz bir çizgi görünür. Reset veya yeni instance kanıtı bulunmadığından bu durumlar default ya da identity curve olarak sınıflandırılmamıştır.

## Doğrulanmayan alanlar

- Ekran içinde PixInsight sürüm numarası.
- Fabrika varsayılanları.
- Tooltip, icon işlevi ve console/log metni.
- Kanal kısaltmalarının teknik anlamları.
- Curve point ekleme/silme, interpolasyon ve output davranışı.
- Curve uygulamasının image data ve kanallar üzerindeki etkisi.

## Kanıt sınırı

Bu kayıt yalnızca supplied screenshot dizinindeki iki görsele dayanır. Statik UI görünümü, algoritma veya process davranışı kanıtı olarak kullanılmamıştır.
