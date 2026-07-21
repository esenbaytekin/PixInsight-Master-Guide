# HDRMultiscaleTransform UI Evidence Matrix

## Kapsam

- Process: `HDRMultiscaleTransform`
- Registry anahtarı: `hdr-multiscale-transform`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/`
- Canonical doküman: `docs/12-detay-ve-kontrast/hdr-multiscale-transform.md`

Görünen seçim ve değerler yalnız ekran anını gösterir; fabrika varsayılanı oldukları iddia edilmez.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| HMT-EV-001 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/07-process-menu-location.png` | Menü | Process > MultiscaleProcessing > HDRMultiscaleTransform | Menü yolu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HMT-EV-002 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/01-full-interface.png` | Pencere | HDRMultiscaleTransform | Process başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HMT-EV-003 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/01-full-interface.png` | Kontrol | Number of layers | Sayısal kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HMT-EV-004 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/01-full-interface.png` | Kontrol | Number of iterations | Sayısal kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HMT-EV-005 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/01-full-interface.png` | Kontrol | Inverted | Checkbox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HMT-EV-006 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/01-full-interface.png` | Kontrol | Overdrive | Sayısal kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HMT-EV-007 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/01-full-interface.png` | Kontrol | Median transform | Checkbox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HMT-EV-008 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/01-full-interface.png` | Kontrol | Scaling function | ComboBox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HMT-EV-009 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/01-full-interface.png` | Kontrol | To intensity, To lightness, Preserve hue, Lightness mask | Checkbox etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HMT-EV-010 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/01-full-interface.png` | Section | Deringing | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HMT-EV-011 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/01-full-interface.png` | Section | Midtones Balance | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HMT-EV-012 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/scaling-function.png` | Scaling function | Linear Interpolation (3), B3 Spline (5), Small Scale ve Gaussian seçenekleri | Açık liste | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HMT-EV-013 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/01-full-interface.png` | Genel | Görünen seçim ve sayısal değerler | Mevcut durum | Ekran anındaki durum | UI-OBSERVED | Yüksek | Evet | Default değildir |
| HMT-EV-014 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| HMT-EV-015 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/default state kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır |  |
| HMT-EV-016 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/01-full-interface.png` | Davranış | Process çıktısı ve parametre etkileri | Çalıştırma sonucu | Statik görsel açıklamıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü veri testi gerekir |
| HMT-EV-017 | `validation/ui/pi-1.9.3/hdr-multiscale-transform/screenshots/01-full-interface.png` | Algoritma | Kontrollerin algoritmik anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç

Menü yolu ve görünür kontrol/section adları **UI-VERIFIED** kapsamındadır. Process davranışı için **DATA-REQUIRED**, algoritmik açıklamalar için **DOC-REQUIRED** kaydı korunmuştur. Doğrulanan default sayısı: **0**.
