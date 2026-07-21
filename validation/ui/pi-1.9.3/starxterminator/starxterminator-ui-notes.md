# StarXTerminator UI Notes

## Preflight

| Alan | Sonuç |
|---|---|
| Registry | `prompts/process-registry.yml` — geçerli |
| PROCESS_SLUG | `starxterminator` — exact match |
| PROCESS_NAME | `StarXTerminator` |
| PROCESS_TYPE | `plugin` |
| PIXINSIGHT_VERSION | `1.9.3` |
| SCREENSHOT_DIR | `validation/ui/pi-1.9.3/starxterminator/screenshots/` |
| VALIDATION_DIR | `validation/ui/pi-1.9.3/starxterminator` |
| CANONICAL_DOC_FILE | `docs/06-ai-eklentileri/starxterminator.md` |
| Screenshot dizini | Mevcut ve expected path ile eşleşiyor |
| Screenshot sayısı | 3 |
| Preflight sonucu | **PASS** |

## Doğrudan doğrulanan UI

- Pencere başlığı: `RC-Astro StarXTerminator`.
- Plugin sürüm metni: `StarXTerminator version 2.4.11. AI version 11.`
- Menü yolu: `Process > ObjectRecognition > StarXTerminator`.
- Ana kontroller: `Select AI`, `Generate Star Image`, `Unscreen Stars`, `Large Overlap`, `Process Batch`.
- Batch penceresi: `StarXTerminator Batch Processing`.
- Batch kontrolleri: `Output starless files to`, `Output star files to`, `Invert`, `Mask`, `Unscreen Stars`, `Add Suffixes`, `Select Input Files and Execute`, `Cancel`.

## Yalnız gözlenen durumlar

Ana pencerede `Generate Star Image` ve `Unscreen Stars` işaretli, `Large Overlap` işaretsizdir. Batch penceresinde iki output seçeneği, `Unscreen Stars` ve `Add Suffixes` işaretli; `Invert` işaretsiz ve Mask alanında `<No View Available>` görünür. Bunlar default değildir.

## Sürüm ayrımı

Görsel plugin sürümünü `2.4.11`, AI sürümünü `11` olarak gösterir. PixInsight host sürümü ekran içinde görünmez; `PIXINSIGHT_VERSION=1.9.3` validation hedefidir.

## Doğrulanmayan alanlar

- PixInsight host sürümünün ekran içi kanıtı.
- Fabrika varsayılanları.
- Tooltip ve console/log metni.
- `Select AI` hidden seçenekleri.
- Star image, unscreen, overlap ve mask davranışı.
- Batch dosya üretimi, suffix ve error handling davranışı.

## Kanıt sınırı

Bu kayıt yalnız supplied screenshot dizinindeki üç görsele dayanır. Statik UI görsellerinden plugin veya batch davranışı çıkarılmamıştır.
