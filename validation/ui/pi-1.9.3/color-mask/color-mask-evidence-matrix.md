# ColorMask UI Evidence Matrix

## Kapsam

- Process: `ColorMask`
- Registry anahtarı: `color-mask`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/color-mask/screenshots/`
- Canonical doküman: `docs/11-maskeler/color-mask.md`

Görünen seçim ve değerler yalnız ekran anını gösterir; fabrika varsayılanı oldukları iddia edilmez.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| CM-EV-001 | `validation/ui/pi-1.9.3/color-mask/screenshots/07-process-menu-location.png` | Menü | Script > Utilities > ColorMask | Menü yolu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CM-EV-002 | `validation/ui/pi-1.9.3/color-mask/screenshots/01-full-interface.png` | Pencere | ColorMask Script | Script başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CM-EV-003 | `validation/ui/pi-1.9.3/color-mask/screenshots/01-full-interface.png` | Açıklama | ColorMask v1.0 | Görünür sürüm metni | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CM-EV-004 | `validation/ui/pi-1.9.3/color-mask/screenshots/01-full-interface.png` | Kontrol | Target image | View selector | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CM-EV-005 | `validation/ui/pi-1.9.3/color-mask/screenshots/01-full-interface.png` | Kontrol | Start Hue | Sayısal kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CM-EV-006 | `validation/ui/pi-1.9.3/color-mask/screenshots/01-full-interface.png` | Kontrol | End Hue | Sayısal kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CM-EV-007 | `validation/ui/pi-1.9.3/color-mask/screenshots/01-full-interface.png` | Preset | Red, Green, Blue, Cyan, Magenta, Yellow | Buton grubu | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CM-EV-008 | `validation/ui/pi-1.9.3/color-mask/screenshots/01-full-interface.png` | Mask type | Chrominance Mask | Radio seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CM-EV-009 | `validation/ui/pi-1.9.3/color-mask/screenshots/01-full-interface.png` | Mask type | Lightness Mask | Radio seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CM-EV-010 | `validation/ui/pi-1.9.3/color-mask/screenshots/01-full-interface.png` | Mask type | Linear Mask | Radio seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CM-EV-011 | `validation/ui/pi-1.9.3/color-mask/screenshots/01-full-interface.png` | Kontrol | Mask Strength | Sayısal kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CM-EV-012 | `validation/ui/pi-1.9.3/color-mask/screenshots/01-full-interface.png` | Kontrol | Mask blur: layers to remove | Sayısal kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CM-EV-013 | `validation/ui/pi-1.9.3/color-mask/screenshots/target-image.png` | Target image | <No View Selected> ve RGB | Açık liste seçenekleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CM-EV-014 | `validation/ui/pi-1.9.3/color-mask/screenshots/01-full-interface.png` | Genel | Görünen seçim ve sayısal değerler | Mevcut durum | Ekran anındaki durum | UI-OBSERVED | Yüksek | Evet | Default değildir |
| CM-EV-015 | `validation/ui/pi-1.9.3/color-mask/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| CM-EV-016 | `validation/ui/pi-1.9.3/color-mask/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/default state kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır |  |
| CM-EV-017 | `validation/ui/pi-1.9.3/color-mask/screenshots/01-full-interface.png` | Davranış | Process çıktısı ve parametre etkileri | Çalıştırma sonucu | Statik görsel açıklamıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü veri testi gerekir |
| CM-EV-018 | `validation/ui/pi-1.9.3/color-mask/screenshots/01-full-interface.png` | Algoritma | Kontrollerin algoritmik anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç

Menü yolu ve görünür kontrol/section adları **UI-VERIFIED** kapsamındadır. Process davranışı için **DATA-REQUIRED**, algoritmik açıklamalar için **DOC-REQUIRED** kaydı korunmuştur. Doğrulanan default sayısı: **0**.
