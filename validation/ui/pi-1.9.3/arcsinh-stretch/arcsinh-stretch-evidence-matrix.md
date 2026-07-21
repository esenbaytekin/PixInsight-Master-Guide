# ArcsinhStretch UI Evidence Matrix

## Kapsam

- Process: `ArcsinhStretch`
- Registry anahtarı: `arcsinh-stretch`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/arcsinh-stretch/screenshots/`
- Canonical doküman: `docs/07-stretch/arcsinh-stretch.md`

Görünen seçim ve değerler yalnız ekran anını gösterir; fabrika varsayılanı oldukları iddia edilmez.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| AS-EV-001 | `validation/ui/pi-1.9.3/arcsinh-stretch/screenshots/07-process-menu-location.png` | Menü | Process > IntensityTransformations > ArcsinhStretch | Menü yolu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| AS-EV-002 | `validation/ui/pi-1.9.3/arcsinh-stretch/screenshots/01-full-interface.png` | Pencere | ArcsinhStretch | Process başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| AS-EV-003 | `validation/ui/pi-1.9.3/arcsinh-stretch/screenshots/01-full-interface.png` | Kontrol | Stretch factor | Sayısal kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| AS-EV-004 | `validation/ui/pi-1.9.3/arcsinh-stretch/screenshots/01-full-interface.png` | Kontrol | Black point | Sayısal kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| AS-EV-005 | `validation/ui/pi-1.9.3/arcsinh-stretch/screenshots/01-full-interface.png` | Kontrol | Protect highlights | Checkbox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| AS-EV-006 | `validation/ui/pi-1.9.3/arcsinh-stretch/screenshots/01-full-interface.png` | Kontrol | Use RGB working space | Checkbox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| AS-EV-007 | `validation/ui/pi-1.9.3/arcsinh-stretch/screenshots/01-full-interface.png` | Section | Real-Time Preview | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| AS-EV-008 | `validation/ui/pi-1.9.3/arcsinh-stretch/screenshots/01-full-interface.png` | Kontrol | Estimate Black Point | Buton | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| AS-EV-009 | `validation/ui/pi-1.9.3/arcsinh-stretch/screenshots/01-full-interface.png` | Kontrol | Highlight values clipped to zero | Checkbox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| AS-EV-010 | `validation/ui/pi-1.9.3/arcsinh-stretch/screenshots/01-full-interface.png` | Genel | Görünen seçim ve sayısal değerler | Mevcut durum | Ekran anındaki durum | UI-OBSERVED | Yüksek | Evet | Default değildir |
| AS-EV-011 | `validation/ui/pi-1.9.3/arcsinh-stretch/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| AS-EV-012 | `validation/ui/pi-1.9.3/arcsinh-stretch/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/default state kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır |  |
| AS-EV-013 | `validation/ui/pi-1.9.3/arcsinh-stretch/screenshots/01-full-interface.png` | Davranış | Process çıktısı ve parametre etkileri | Çalıştırma sonucu | Statik görsel açıklamıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü veri testi gerekir |
| AS-EV-014 | `validation/ui/pi-1.9.3/arcsinh-stretch/screenshots/01-full-interface.png` | Algoritma | Kontrollerin algoritmik anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç

Menü yolu ve görünür kontrol/section adları **UI-VERIFIED** kapsamındadır. Process davranışı için **DATA-REQUIRED**, algoritmik açıklamalar için **DOC-REQUIRED** kaydı korunmuştur. Doğrulanan default sayısı: **0**.
