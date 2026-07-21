# BlurXTerminator UI Notes

## Preflight

| Alan | Sonuç |
|---|---|
| Registry | `prompts/process-registry.yml` — geçerli |
| PROCESS_SLUG | `blurxterminator` — exact match |
| PROCESS_NAME | `BlurXTerminator` |
| PROCESS_TYPE | `plugin` |
| PIXINSIGHT_VERSION | `1.9.3` |
| SCREENSHOT_DIR | `validation/ui/pi-1.9.3/blurxterminator/screenshots/` |
| VALIDATION_DIR | `validation/ui/pi-1.9.3/blurxterminator` |
| CANONICAL_DOC_FILE | `docs/06-ai-eklentileri/blurxterminator.md` |
| Screenshot dizini | Mevcut ve expected path ile eşleşiyor |
| Screenshot sayısı | 2 |
| Preflight sonucu | **PASS** |

## Doğrudan doğrulanan UI

- Pencere başlığı: `RC-Astro BlurXTerminator`.
- Plugin sürüm metni: `BlurXTerminator version 2.1.4. AI version 4.`
- Menü yolu: `Process > Deconvolution > BlurXTerminator`.
- Section başlıkları: `Stellar Adjustments`, `Nonstellar Adjustments`, `Options`.
- Kontroller: `Select AI`, `Sharpen Stars`, `Adjust Star Halos`, `Automatic PSF`, `PSF Diameter (pixels)`, `Sharpen Nonstellar`, `Correct Only`, `Correct First`, `Nonstellar then Stellar`, `Luminance Only`.

## Yalnız gözlenen durumlar

Ana arayüzde `Sharpen Stars 0.50`, `Adjust Star Halos 0.00`, işaretli `Automatic PSF`, pasif görünen `PSF Diameter (pixels) 0.00`, `Sharpen Nonstellar 0.50` ve işaretsiz dört Options checkbox'ı görünür. Reset veya new instance kanıtı bulunmadığından bunlar default değildir.

## Sürüm ayrımı

Görsel plugin sürümünü `2.1.4`, AI sürümünü `4` olarak doğrudan gösterir. PixInsight host sürüm numarası ekran içinde görünmez; `PIXINSIGHT_VERSION=1.9.3` validation hedefidir.

## Doğrulanmayan alanlar

- PixInsight host sürümünün ekran içi kanıtı.
- Fabrika varsayılanları.
- Tooltip ve console/log metni.
- `Select AI` hidden seçenekleri.
- Automatic/manual PSF davranışı ve option etkileşimleri.
- Stellar/nonstellar correction sonucu ve artefact sınırları.

## Kanıt sınırı

Bu kayıt yalnız supplied screenshot dizinindeki iki görsele dayanır. Statik UI görsellerinden plugin davranışı veya algoritmik anlam çıkarılmamıştır.
