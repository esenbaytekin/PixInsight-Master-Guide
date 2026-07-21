# ScreenTransferFunction UI Evidence Matrix

## Kapsam

- Process: `ScreenTransferFunction`
- Registry anahtarı: `screen-transfer-function`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/`
- Canonical doküman: `docs/02-pixinsight-temelleri/stf.md`

**UI-VERIFIED** doğrudan okunabilen etiketi veya menü yolunu, **UI-OBSERVED** yalnızca ekran anındaki görünümü ifade eder. Statik görseller default veya process davranışı kanıtı olarak kullanılmamıştır.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| STF-EV-001 | `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/01-full-interface.png` | Pencere | ScreenTransferFunction | Process başlığı | Net okunuyor | UI-VERIFIED | Yüksek | Evet | Process adı doğrulandı |
| STF-EV-002 | `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/01-full-interface.png` | Kanallar | R | Kanal etiketi | Net okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| STF-EV-003 | `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/01-full-interface.png` | Kanallar | G | Kanal etiketi | Net okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| STF-EV-004 | `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/01-full-interface.png` | Kanallar | B | Kanal etiketi | Net okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| STF-EV-005 | `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/01-full-interface.png` | Kanallar | L | Kanal etiketi | Net okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| STF-EV-006 | `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/07-process-menu-location.png` | Process menu | IntensityTransformations | Menü grubu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| STF-EV-007 | `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/07-process-menu-location.png` | Process menu | ScreenTransferFunction | Menü öğesi | Açık menüde seçili ve okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| STF-EV-008 | `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/07-process-menu-location.png` | Process menu | Process → IntensityTransformations → ScreenTransferFunction | Menü yolu | Tam yol görünür | UI-VERIFIED | Yüksek | Evet |  |
| STF-EV-009 | `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/01-full-interface.png` | Kanallar | R, G, B ve L transfer grafikleri | Grafik kontrolleri | Dört satır görünür | UI-OBSERVED | Yüksek | Evet | Sayısal değer veya default kanıtı değildir |
| STF-EV-010 | `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/01-full-interface.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin sınıflandırması görsel kanıt değildir |
| STF-EV-011 | `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset veya yeni instance kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır | Görünen kontrol konumları default sayılamaz |
| STF-EV-012 | `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/01-full-interface.png` | Genel | Toolbar icon işlevleri | Icon | Tooltip görünmüyor | UI-UNVERIFIED | Yüksek | Hayır | İkon işlevleri görselden adlandırılmadı |
| STF-EV-013 | `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/01-full-interface.png` | Genel | Tooltip ve console metni | Yardım/çıktı | Görünmüyor | UI-UNVERIFIED | Yüksek | Hayır | Ek kanıt gerekir |
| STF-EV-014 | `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/01-full-interface.png` | Davranış | Display-only etki, kanal bağlantısı ve Auto STF sonucu | Process davranışı | Process çalıştırılmıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü before/after veri testi gerekir |
| STF-EV-015 | `validation/ui/pi-1.9.3/screen-transfer-function/screenshots/01-full-interface.png` | Algoritma | MTF, Auto STF hesabı ve kontrol anlamları | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç özeti

| Ölçüt | Sonuç |
|---|---:|
| İncelenen görsel | 2 |
| UI-VERIFIED | 8 |
| UI-PARTIAL | 1 |
| UI-OBSERVED | 1 |
| UI-UNVERIFIED | 3 |
| DATA-REQUIRED | 1 |
| DOC-REQUIRED | 1 |
| Doğrulanan default | 0 |

## Karar

Process adı, dört kanal etiketi ve menü yolu canonical dokümana güvenle taşınabilir. PixInsight sürümü, kontrol ikonlarının adları, default değerler, tooltip metinleri ve process davranışı bu iki ekran görüntüsüyle doğrulanmamıştır.
