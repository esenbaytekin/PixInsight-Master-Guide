# PixelMath UI Evidence Matrix

## Kapsam

- Process: `PixelMath`
- Registry anahtarı: `pixelmath`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/pixelmath/screenshots/`
- Canonical doküman: `docs/10-pixelmath/index.md`

Görünen seçim ve değerler yalnız ekran anını gösterir; fabrika varsayılanı oldukları iddia edilmez.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| P-EV-001 | `validation/ui/pi-1.9.3/pixelmath/screenshots/07-process-menu-location.png` | Menü | Process > PixelMath > PixelMath | Menü yolu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| P-EV-002 | `validation/ui/pi-1.9.3/pixelmath/screenshots/01-full-interface.png` | Pencere | PixelMath | Process başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| P-EV-003 | `validation/ui/pi-1.9.3/pixelmath/screenshots/01-full-interface.png` | Section | Expressions | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| P-EV-004 | `validation/ui/pi-1.9.3/pixelmath/screenshots/01-full-interface.png` | Expressions | RGB/K, G, B, A, Symbols, Summary | Sekme etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| P-EV-005 | `validation/ui/pi-1.9.3/pixelmath/screenshots/01-full-interface.png` | Expressions | Use a single RGB/K expression | Checkbox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| P-EV-006 | `validation/ui/pi-1.9.3/pixelmath/screenshots/01-full-interface.png` | Expressions | Expression Editor | Buton | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| P-EV-007 | `validation/ui/pi-1.9.3/pixelmath/screenshots/01-full-interface.png` | Section | Destination | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| P-EV-008 | `validation/ui/pi-1.9.3/pixelmath/screenshots/01-full-interface.png` | Destination | Generate output, Cache generated images, Single threaded, Code optimization, Use 64-bit working images, Rescale result | Checkbox etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| P-EV-009 | `validation/ui/pi-1.9.3/pixelmath/screenshots/01-full-interface.png` | Destination | Replace target image ve Create new image | Radio seçenekleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| P-EV-010 | `validation/ui/pi-1.9.3/pixelmath/screenshots/01-full-interface.png` | Destination | Image Id, Image width, Image height, Color space, Alpha channel, Sample format | Kontrol etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| P-EV-011 | `validation/ui/pi-1.9.3/pixelmath/screenshots/01-full-interface.png` | Genel | Görünen seçim ve sayısal değerler | Mevcut durum | Ekran anındaki durum | UI-OBSERVED | Yüksek | Evet | Default değildir |
| P-EV-012 | `validation/ui/pi-1.9.3/pixelmath/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| P-EV-013 | `validation/ui/pi-1.9.3/pixelmath/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/default state kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır |  |
| P-EV-014 | `validation/ui/pi-1.9.3/pixelmath/screenshots/01-full-interface.png` | Davranış | Process çıktısı ve parametre etkileri | Çalıştırma sonucu | Statik görsel açıklamıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü veri testi gerekir |
| P-EV-015 | `validation/ui/pi-1.9.3/pixelmath/screenshots/01-full-interface.png` | Algoritma | Kontrollerin algoritmik anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç

Menü yolu ve görünür kontrol/section adları **UI-VERIFIED** kapsamındadır. Process davranışı için **DATA-REQUIRED**, algoritmik açıklamalar için **DOC-REQUIRED** kaydı korunmuştur. Doğrulanan default sayısı: **0**.
