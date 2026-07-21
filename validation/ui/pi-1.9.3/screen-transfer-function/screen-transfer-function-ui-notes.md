# ScreenTransferFunction UI Notes

## Preflight

| Alan | Sonuç |
|---|---|
| Registry | `prompts/process-registry.yml` — geçerli |
| PROCESS_SLUG | `screen-transfer-function` — exact match |
| PROCESS_NAME | `ScreenTransferFunction` |
| PROCESS_TYPE | `core-process` |
| PIXINSIGHT_VERSION | `1.9.3` |
| SCREENSHOT_DIR | `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/` |
| VALIDATION_DIR | `validation/ui/pi-1.9.3/screen-transfer-function` |
| CANONICAL_DOC_FILE | `docs/02-pixinsight-temelleri/stf.md` |
| Screenshot dizini | Mevcut ve beklenen yolla eşleşiyor |
| Screenshot sayısı | 2 |
| Preflight sonucu | **PASS** |

## Doğrudan doğrulanan arayüz kapsamı

- Process penceresinin başlığı `ScreenTransferFunction`.
- Arayüzde `R`, `G`, `B` ve `L` kanal etiketleri bulunuyor.
- Menü yolu `Process > IntensityTransformations > ScreenTransferFunction`.
- Arayüzde dört kanal satırına karşılık gelen transfer grafikleri görünür.

## Yalnız gözlenen durum

`01-full-interface.png` içindeki kanal grafikleri tek bir ekran anını gösterir. İşaretçilerin konumu, ikonların etkinlik durumu ve kanal grafiği biçimi fabrika varsayılanı olarak yorumlanmamıştır.

## Doğrulanmayan alanlar

- PixInsight sürüm numarası ekran içinde görünmüyor.
- Resetlenmiş veya yeni instance durumu gösterilmiyor.
- Sayısal transfer değerleri okunmuyor.
- Tooltip ve console metni yok.
- İkonların işlev adları statik görselden çıkarılmadı.
- Auto STF hesabı, kanal bağlantısı, HistogramTransformation aktarımı ve image data üzerindeki etki statik ekran görüntülerinden kanıtlanamaz.

## Kanıt sınırı

Bu kayıt yalnızca belirtilen screenshot dizinindeki iki dosyaya dayanır. Başka repository görselleri veya dış kaynaklar UI kanıtı olarak kullanılmamıştır.
