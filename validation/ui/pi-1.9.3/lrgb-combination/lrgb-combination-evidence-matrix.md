# LRGBCombination UI Evidence Matrix

## Kapsam

- Process: `LRGBCombination`
- Registry anahtarı: `lrgb-combination`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/lrgb-combination/screenshots/`
- Canonical doküman: `docs/08-lrgb/lrgb-combination.md`

Görünen seçim ve değerler yalnız ekran anını gösterir; fabrika varsayılanı oldukları iddia edilmez.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| LC-EV-001 | `validation/ui/pi-1.9.3/lrgb-combination/screenshots/07-process-menu-location.png` | Menü | Process > ColorSpaces > LRGBCombination | Menü yolu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| LC-EV-002 | `validation/ui/pi-1.9.3/lrgb-combination/screenshots/01-full-interface.png` | Pencere | LRGBCombination | Process başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| LC-EV-003 | `validation/ui/pi-1.9.3/lrgb-combination/screenshots/01-full-interface.png` | Section | Channels / Source Images | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| LC-EV-004 | `validation/ui/pi-1.9.3/lrgb-combination/screenshots/01-full-interface.png` | Channels | L, R, G ve B | Kanal etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| LC-EV-005 | `validation/ui/pi-1.9.3/lrgb-combination/screenshots/01-full-interface.png` | Channels | Inherit astrometric solution | Checkbox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| LC-EV-006 | `validation/ui/pi-1.9.3/lrgb-combination/screenshots/01-full-interface.png` | Section | Channel Weights | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| LC-EV-007 | `validation/ui/pi-1.9.3/lrgb-combination/screenshots/01-full-interface.png` | Channel Weights | Uniform RGB dynamic ranges | Checkbox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| LC-EV-008 | `validation/ui/pi-1.9.3/lrgb-combination/screenshots/01-full-interface.png` | Section | Transfer Functions | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| LC-EV-009 | `validation/ui/pi-1.9.3/lrgb-combination/screenshots/01-full-interface.png` | Transfer Functions | Lightness ve Saturation | Kontrol etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| LC-EV-010 | `validation/ui/pi-1.9.3/lrgb-combination/screenshots/01-full-interface.png` | Section | Chrominance Noise Reduction | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| LC-EV-011 | `validation/ui/pi-1.9.3/lrgb-combination/screenshots/01-full-interface.png` | Chrominance Noise Reduction | Smoothed wavelet layers ve Protected wavelet layers | Kontrol etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| LC-EV-012 | `validation/ui/pi-1.9.3/lrgb-combination/screenshots/01-full-interface.png` | Genel | Görünen seçim ve sayısal değerler | Mevcut durum | Ekran anındaki durum | UI-OBSERVED | Yüksek | Evet | Default değildir |
| LC-EV-013 | `validation/ui/pi-1.9.3/lrgb-combination/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| LC-EV-014 | `validation/ui/pi-1.9.3/lrgb-combination/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/default state kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır |  |
| LC-EV-015 | `validation/ui/pi-1.9.3/lrgb-combination/screenshots/01-full-interface.png` | Davranış | Process çıktısı ve parametre etkileri | Çalıştırma sonucu | Statik görsel açıklamıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü veri testi gerekir |
| LC-EV-016 | `validation/ui/pi-1.9.3/lrgb-combination/screenshots/01-full-interface.png` | Algoritma | Kontrollerin algoritmik anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç

Menü yolu ve görünür kontrol/section adları **UI-VERIFIED** kapsamındadır. Process davranışı için **DATA-REQUIRED**, algoritmik açıklamalar için **DOC-REQUIRED** kaydı korunmuştur. Doğrulanan default sayısı: **0**.
