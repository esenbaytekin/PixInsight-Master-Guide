# MultiscaleMedianTransform UI Evidence Matrix

## Kapsam

- Process: `MultiscaleMedianTransform`
- Registry anahtarı: `multiscale-median-transform`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/`
- Canonical doküman: `docs/12-detay-ve-kontrast/multiscale-median-transform.md`

Görünen seçim ve değerler yalnız ekran anını gösterir; fabrika varsayılanı oldukları iddia edilmez.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| MMT-EV-001 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/07-process-menu-location.png` | Menü | Process > MultiscaleProcessing > MultiscaleMedianTransform | Menü yolu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MMT-EV-002 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/01-full-interface.png` | Pencere | MultiscaleMedianTransform | Process başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MMT-EV-003 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/01-full-interface.png` | Kontrol | Algorithm | ComboBox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MMT-EV-004 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/01-full-interface.png` | Section | Layers | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MMT-EV-005 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/01-full-interface.png` | Section | Detail Layer 1/4 | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MMT-EV-006 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/01-full-interface.png` | Section | Noise Reduction | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MMT-EV-007 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/01-full-interface.png` | Section | Linear Mask | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MMT-EV-008 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/01-full-interface.png` | Section | Dynamic Range Extension | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MMT-EV-009 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/Algorithm.png` | Algorithm | Multiscale median transform | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MMT-EV-010 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/Algorithm.png` | Algorithm | Median-wavelet transform | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MMT-EV-011 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/target.png` | Target | Lightness (CIE L*), Luminance (CIE Y), Chrominance (restore CIE Y), RGB/K components | Açık liste seçenekleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MMT-EV-012 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/Layer-preview.png` | Layer Preview | No layer preview, All Changes, Increasing Pixels, Decreasing Pixels | Açık liste seçenekleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MMT-EV-013 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/01-full-interface.png` | Genel | Görünen seçim ve sayısal değerler | Mevcut durum | Ekran anındaki durum | UI-OBSERVED | Yüksek | Evet | Default değildir |
| MMT-EV-014 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| MMT-EV-015 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/default state kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır |  |
| MMT-EV-016 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/01-full-interface.png` | Davranış | Process çıktısı ve parametre etkileri | Çalıştırma sonucu | Statik görsel açıklamıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü veri testi gerekir |
| MMT-EV-017 | `validation/ui/pi-1.9.3/multiscale-median-transform/screenshots/01-full-interface.png` | Algoritma | Kontrollerin algoritmik anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç

Menü yolu ve görünür kontrol/section adları **UI-VERIFIED** kapsamındadır. Process davranışı için **DATA-REQUIRED**, algoritmik açıklamalar için **DOC-REQUIRED** kaydı korunmuştur. Doğrulanan default sayısı: **0**.
