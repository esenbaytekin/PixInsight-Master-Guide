# NoiseXTerminator UI Notes

## Preflight

| Alan | Sonuç |
|---|---|
| Registry | `prompts/process-registry.yml` — geçerli |
| PROCESS_SLUG | `noisexterminator` — exact match |
| PROCESS_NAME | `NoiseXTerminator` |
| PROCESS_TYPE | `plugin` |
| PIXINSIGHT_VERSION | `1.9.3` |
| SCREENSHOT_DIR | `validation/ui/pi-1.9.3/noisexterminator/screenshots/` |
| VALIDATION_DIR | `validation/ui/pi-1.9.3/noisexterminator` |
| CANONICAL_DOC_FILE | `docs/06-ai-eklentileri/noisexterminator.md` |
| Screenshot dizini | Mevcut ve expected path ile eşleşiyor |
| Screenshot sayısı | 2 |
| Preflight sonucu | **PASS** |

## Doğrudan doğrulanan UI

- Pencere başlığı: `RC Astro NoiseXTerminator`.
- Plugin sürüm metni: `NoiseXTerminator version 2.3.3. AI version 3.`
- Menü yolu: `Process > NoiseReduction > NoiseXTerminator`.
- Kontroller: `Select AI`, `Intensity/color separation`, `Frequency separation`, `Denoise HF Intensity`, `Denoise HF Color`, `Denoise LF Intensity`, `Denoise LF Color`, `HF/LF Scale (pixels)`, `Iterations`.

## Yalnız gözlenen durumlar

Ana arayüzde iki separation checkbox'ı işaretli; sırasıyla `0.75`, `0.60`, `0.35`, `0.30`, `5.0` ve `2` değerleri görünür. Reset veya new instance kanıtı bulunmadığından bunlar default değildir.

## Sürüm ayrımı

Görsel plugin sürümünü `2.3.3`, AI sürümünü `3` olarak doğrudan gösterir. PixInsight host sürüm numarası ekran içinde görünmez; `PIXINSIGHT_VERSION=1.9.3` yalnız validation hedefidir.

## Doğrulanmayan alanlar

- PixInsight host sürümünün ekran içi kanıtı.
- Fabrika varsayılanları.
- Tooltip ve console/log metni.
- `Select AI` seçenekleri ve seçim davranışı.
- HF/LF, intensity/color separation ve iterations algoritması.
- Denoise kalitesi, artefact riski ve output davranışı.

## Kanıt sınırı

Bu kayıt yalnız supplied screenshot dizinindeki iki görsele dayanır. Statik UI görsellerinden plugin davranışı veya parametrelerin algoritmik anlamı çıkarılmamıştır.
