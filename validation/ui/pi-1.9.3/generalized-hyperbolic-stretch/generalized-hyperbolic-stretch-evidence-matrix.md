# Generalized Hyperbolic Stretch UI Evidence Matrix

## Kapsam

- Process: `Generalized Hyperbolic Stretch`
- Registry anahtarı: `generalized-hyperbolic-stretch`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/`
- Canonical doküman: `docs/07-stretch/generalized-hyperbolic-stretch.md`

Görünen seçim ve değerler yalnız ekran anını gösterir; fabrika varsayılanı oldukları iddia edilmez.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| GHS-EV-001 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/07-process-menu-location.png` | Menü | Process > IntensityTransformations > GeneralizedHyperbolicStretch | Menü yolu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| GHS-EV-002 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/01-full-interface.png` | Pencere | GeneralizedHyperbolicStretch | Process başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| GHS-EV-003 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/01-full-interface.png` | Section | Graph | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| GHS-EV-004 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/01-full-interface.png` | Section | Readout Data | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| GHS-EV-005 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/01-full-interface.png` | Section | Colour Options | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| GHS-EV-006 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/01-full-interface.png` | Section | Transformation | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| GHS-EV-007 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/01-full-interface.png` | Section | Fine adjustment | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| GHS-EV-008 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/transformation-type.png` | Transformation type | Generalised Hyperbolic | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| GHS-EV-009 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/transformation-type.png` | Transformation type | Midtone Transfer | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| GHS-EV-010 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/transformation-type.png` | Transformation type | Arcsinh | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| GHS-EV-011 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/transformation-type.png` | Transformation type | Power Law | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| GHS-EV-012 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/transformation-type.png` | Transformation type | Linear | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| GHS-EV-013 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/adjust-parameter.png` | Adjust parameter | D, b, SP, LP, HP | Açık liste seçenekleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| GHS-EV-014 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/colour-optinos > Mode.png` | Mode | Red, Green, Blue, RGB, Lightness, Saturation, Colour | Açık liste seçenekleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| GHS-EV-015 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/01-full-interface.png` | Genel | Görünen seçim ve sayısal değerler | Mevcut durum | Ekran anındaki durum | UI-OBSERVED | Yüksek | Evet | Default değildir |
| GHS-EV-016 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| GHS-EV-017 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/default state kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır |  |
| GHS-EV-018 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/01-full-interface.png` | Davranış | Process çıktısı ve parametre etkileri | Çalıştırma sonucu | Statik görsel açıklamıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü veri testi gerekir |
| GHS-EV-019 | `validation/ui/pi-1.9.3/generalized-hyperbolic-stretch/screenshots/01-full-interface.png` | Algoritma | Kontrollerin algoritmik anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç

Menü yolu ve görünür kontrol/section adları **UI-VERIFIED** kapsamındadır. Process davranışı için **DATA-REQUIRED**, algoritmik açıklamalar için **DOC-REQUIRED** kaydı korunmuştur. Doğrulanan default sayısı: **0**.
