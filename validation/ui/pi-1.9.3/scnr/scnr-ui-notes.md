# SCNR UI Notes

## Preflight

| Alan | Sonuç |
|---|---|
| Registry | `prompts/process-registry.yml` — geçerli |
| PROCESS_SLUG | `scnr` — exact match |
| PROCESS_NAME | `SCNR` |
| PROCESS_TYPE | `core-process` |
| PIXINSIGHT_VERSION | `1.9.3` |
| SCREENSHOT_DIR | `validation/ui/pi-1.9.3/scnr/screenshots/` |
| VALIDATION_DIR | `validation/ui/pi-1.9.3/scnr` |
| CANONICAL_DOC_FILE | `docs/13-final/scnr.md` |
| Screenshot dizini | Mevcut ve expected path ile eşleşiyor |
| Screenshot sayısı | 4 |
| Preflight sonucu | **PASS** |

## Doğrudan doğrulanan UI

- Process başlığı: `SCNR`.
- Menü yolu: `Process > NoiseReduction > SCNR`.
- Ana kontroller: `Color to remove`, `Protection method`, `Amount`, `Preserve lightness`.
- `Color to remove` seçenekleri: `Red`, `Green`, `Blue`.
- `Protection method` seçenekleri: `Maximum Mask`, `Additive Mask`, `Average Neutral`, `Maximum Neutral`, `Minimum Neutral`.

## Yalnız gözlenen durumlar

Ana arayüz karesinde `Green`, `Average Neutral`, `Amount 1.00` ve işaretli `Preserve lightness` görünür. Reset veya yeni instance kanıtı bulunmadığından bunlar default değildir.

## Doğrulanmayan alanlar

- Ekran içinde PixInsight sürüm numarası.
- Fabrika varsayılanları.
- Tooltip ve console/log metni.
- Renk giderme ve `Preserve lightness` davranışı.
- Protection yöntemlerinin algoritmik farkları.
- `Amount` değerinin output üzerindeki nicel etkisi.

## Kanıt sınırı

Bu kayıt yalnızca supplied screenshot dizinindeki dört görsele dayanır. Statik UI görsellerinden process davranışı veya algoritmik anlam çıkarılmamıştır.
