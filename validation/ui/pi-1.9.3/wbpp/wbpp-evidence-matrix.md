# WeightedBatchPreprocessing UI Evidence Matrix

## Kapsam

- Process: `WeightedBatchPreprocessing`
- Registry anahtarı: `wbpp`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/wbpp/screenshots/`
- Canonical doküman: `docs/03-kalibrasyon/wbpp.md`

Görünen seçim ve değerler yalnız ekran anını gösterir; fabrika varsayılanı oldukları iddia edilmez.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| W-EV-001 | `validation/ui/pi-1.9.3/wbpp/screenshots/07-process-menu-location.png` | Menü | Script > Batch Processing > WeightedBatchPreprocessing | Menü yolu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| W-EV-002 | `validation/ui/pi-1.9.3/wbpp/screenshots/pipeline.png` | Pencere | Weighted Batch Preprocessing Script v2.9.1 | Script başlığı ve görünür sürüm | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| W-EV-003 | `validation/ui/pi-1.9.3/wbpp/screenshots/pipeline.png` | Sekmeler | Bias, Darks, Flats, Lights, Calibration, Post-Calibration, Pipeline | Sekme etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| W-EV-004 | `validation/ui/pi-1.9.3/wbpp/screenshots/pipeline.png` | Pipeline | Linear Defects Correction, Subframe Weighting, Image Registration, Local Normalization, Image Integration | Active Steps etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| W-EV-005 | `validation/ui/pi-1.9.3/wbpp/screenshots/bias.png` | Bias | Overscan ve Image Integration | Section başlıkları | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| W-EV-006 | `validation/ui/pi-1.9.3/wbpp/screenshots/dark.png` | Darks | Optimization threshold ve Exposure tolerance | Kontrol etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| W-EV-007 | `validation/ui/pi-1.9.3/wbpp/screenshots/flat.png` | Flats | Image Integration ve Large-scale pixel rejection | Kontrol etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| W-EV-008 | `validation/ui/pi-1.9.3/wbpp/screenshots/lights.png` | Lights | Subframe Weighting, Image Registration, Local Normalization, Image Integration, Astrometric Solution | Section başlıkları | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| W-EV-009 | `validation/ui/pi-1.9.3/wbpp/screenshots/calibration.png` | Calibration | Overscan Settings, Calibration Settings, Output Pedestal Settings, Cosmetic Correction, CFA Settings | Section başlıkları | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| W-EV-010 | `validation/ui/pi-1.9.3/wbpp/screenshots/post-calibration.png` | Post-Calibration | Channels configuration, Drizzle configuration, Fast Integration | Section başlıkları | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| W-EV-011 | `validation/ui/pi-1.9.3/wbpp/screenshots/custom-frames.png` | Custom Frames | Image type, Filter name, Binning, Exposure time (s) | Kontrol etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| W-EV-012 | `validation/ui/pi-1.9.3/wbpp/screenshots/pipeline.png` | Global Options | FITS orientation, Compact GUI, Detect masters from path, Generate rejection maps, Preserve white balance, Save groups on exit, Smart naming override | Kontrol etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| W-EV-013 | `validation/ui/pi-1.9.3/wbpp/screenshots/pipeline.png` | Registration Reference Image | Mode | ComboBox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| W-EV-014 | `validation/ui/pi-1.9.3/wbpp/screenshots/pipeline.png` | Output Directory | Output dizini selector | Kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| W-EV-015 | `validation/ui/pi-1.9.3/wbpp/screenshots/pipeline.png` | Genel | Görünen seçim ve sayısal değerler | Mevcut durum | Ekran anındaki durum | UI-OBSERVED | Yüksek | Evet | Default değildir |
| W-EV-016 | `validation/ui/pi-1.9.3/wbpp/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| W-EV-017 | `validation/ui/pi-1.9.3/wbpp/screenshots/pipeline.png` | Genel | Fabrika varsayılanları | Default | Reset/default state kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır |  |
| W-EV-018 | `validation/ui/pi-1.9.3/wbpp/screenshots/pipeline.png` | Davranış | Process çıktısı ve parametre etkileri | Çalıştırma sonucu | Statik görsel açıklamıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü veri testi gerekir |
| W-EV-019 | `validation/ui/pi-1.9.3/wbpp/screenshots/pipeline.png` | Algoritma | Kontrollerin algoritmik anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç

Menü yolu ve görünür kontrol/section adları **UI-VERIFIED** kapsamındadır. Process davranışı için **DATA-REQUIRED**, algoritmik açıklamalar için **DOC-REQUIRED** kaydı korunmuştur. Doğrulanan default sayısı: **0**.
