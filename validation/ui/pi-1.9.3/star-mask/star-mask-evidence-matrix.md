# StarMask UI Evidence Matrix

## Kapsam

- Process: `StarMask`
- Registry anahtarı: `star-mask`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/star-mask/screenshots/`
- Canonical doküman: `docs/11-maskeler/star-mask.md`

Görünen seçim ve değerler yalnız ekran anını gösterir; fabrika varsayılanı oldukları iddia edilmez.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| SM-EV-001 | `validation/ui/pi-1.9.3/star-mask/screenshots/07-process-menu-location.png` | Menü | Process > MaskGeneration > StarMask | Menü yolu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SM-EV-002 | `validation/ui/pi-1.9.3/star-mask/screenshots/01-full-interface.png` | Pencere | StarMask | Process başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SM-EV-003 | `validation/ui/pi-1.9.3/star-mask/screenshots/01-full-interface.png` | Kontrol | Noise threshold | Sayısal kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SM-EV-004 | `validation/ui/pi-1.9.3/star-mask/screenshots/01-full-interface.png` | Kontrol | Working mode | ComboBox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SM-EV-005 | `validation/ui/pi-1.9.3/star-mask/screenshots/01-full-interface.png` | Kontrol | Scale | Sayısal kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SM-EV-006 | `validation/ui/pi-1.9.3/star-mask/screenshots/01-full-interface.png` | Section | Structure Growth | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SM-EV-007 | `validation/ui/pi-1.9.3/star-mask/screenshots/01-full-interface.png` | Section | Mask Generation | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SM-EV-008 | `validation/ui/pi-1.9.3/star-mask/screenshots/01-full-interface.png` | Section | Mask Preprocessing | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SM-EV-009 | `validation/ui/pi-1.9.3/star-mask/screenshots/working-mode.png` | Working mode | Star Mask | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SM-EV-010 | `validation/ui/pi-1.9.3/star-mask/screenshots/working-mode.png` | Working mode | Structure Detection | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SM-EV-011 | `validation/ui/pi-1.9.3/star-mask/screenshots/working-mode.png` | Working mode | Star Mask, Overlay | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SM-EV-012 | `validation/ui/pi-1.9.3/star-mask/screenshots/working-mode.png` | Working mode | Structure Detection, Overlay | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SM-EV-013 | `validation/ui/pi-1.9.3/star-mask/screenshots/01-full-interface.png` | Genel | Görünen seçim ve sayısal değerler | Mevcut durum | Ekran anındaki durum | UI-OBSERVED | Yüksek | Evet | Default değildir |
| SM-EV-014 | `validation/ui/pi-1.9.3/star-mask/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| SM-EV-015 | `validation/ui/pi-1.9.3/star-mask/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/default state kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır |  |
| SM-EV-016 | `validation/ui/pi-1.9.3/star-mask/screenshots/01-full-interface.png` | Davranış | Process çıktısı ve parametre etkileri | Çalıştırma sonucu | Statik görsel açıklamıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü veri testi gerekir |
| SM-EV-017 | `validation/ui/pi-1.9.3/star-mask/screenshots/01-full-interface.png` | Algoritma | Kontrollerin algoritmik anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç

Menü yolu ve görünür kontrol/section adları **UI-VERIFIED** kapsamındadır. Process davranışı için **DATA-REQUIRED**, algoritmik açıklamalar için **DOC-REQUIRED** kaydı korunmuştur. Doğrulanan default sayısı: **0**.
