# DarkStructureEnhance UI Evidence Matrix

## Kapsam

- Process: `DarkStructureEnhance`
- Registry anahtarı: `dark-structure-enhance`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/`
- Canonical doküman: `docs/12-detay-ve-kontrast/dark-structure-enhance.md`

Görünen seçim ve değerler yalnız ekran anını gösterir; fabrika varsayılanı oldukları iddia edilmez.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| DSE-EV-001 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/07-process-menu-location.png` | Menü | Script > Utilities > DarkStructureEnhance | Menü yolu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| DSE-EV-002 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/01-full-interface.png` | Pencere | DarkStructureEnhance Script | Script başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| DSE-EV-003 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/01-full-interface.png` | Açıklama | DarkStructureEnhance v1.1 | Görünür sürüm metni | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| DSE-EV-004 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/01-full-interface.png` | Kontrol | Target image | View selector | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| DSE-EV-005 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/01-full-interface.png` | Section | Mask Parameters | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| DSE-EV-006 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/01-full-interface.png` | Mask Parameters | Layers to remove | Sayısal kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| DSE-EV-007 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/01-full-interface.png` | Mask Parameters | Extract mask | Checkbox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| DSE-EV-008 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/01-full-interface.png` | Mask Parameters | Scaling function | ComboBox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| DSE-EV-009 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/01-full-interface.png` | Section | DSE Parameters | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| DSE-EV-010 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/01-full-interface.png` | DSE Parameters | Amount ve Iterations | Kontrol etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| DSE-EV-011 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/scaling-function.png` | Scaling function | 3x3 Linear Interpolation | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| DSE-EV-012 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/scaling-function.png` | Scaling function | 5x5 B3 Spline | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| DSE-EV-013 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/01-full-interface.png` | Genel | Görünen seçim ve sayısal değerler | Mevcut durum | Ekran anındaki durum | UI-OBSERVED | Yüksek | Evet | Default değildir |
| DSE-EV-014 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| DSE-EV-015 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/default state kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır |  |
| DSE-EV-016 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/01-full-interface.png` | Davranış | Process çıktısı ve parametre etkileri | Çalıştırma sonucu | Statik görsel açıklamıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü veri testi gerekir |
| DSE-EV-017 | `validation/ui/pi-1.9.3/dark-structure-enhance/screenshots/01-full-interface.png` | Algoritma | Kontrollerin algoritmik anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç

Menü yolu ve görünür kontrol/section adları **UI-VERIFIED** kapsamındadır. Process davranışı için **DATA-REQUIRED**, algoritmik açıklamalar için **DOC-REQUIRED** kaydı korunmuştur. Doğrulanan default sayısı: **0**.
