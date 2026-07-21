# GraXpert UI Evidence Matrix

## Kapsam

- Process: `GraXpert`
- Registry anahtarı: `graxpert`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/graxpert/screenshots/`
- Canonical doküman: `docs/04-gradient/graxpert.md`

Görünen seçim ve değerler yalnız ekran anını gösterir; fabrika varsayılanı oldukları iddia edilmez.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| G-EV-001 | `validation/ui/pi-1.9.3/graxpert/screenshots/07-process-menu-location.png` | Menü | Script > Toolbox > GraXpert | Menü yolu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| G-EV-002 | `validation/ui/pi-1.9.3/graxpert/screenshots/01-full-interface.png` | Pencere | GraXpert Script | Script başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| G-EV-003 | `validation/ui/pi-1.9.3/graxpert/screenshots/01-full-interface.png` | Açıklama | GraXpert Script v1.5 | Görünür script sürümü | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| G-EV-004 | `validation/ui/pi-1.9.3/graxpert/screenshots/01-full-interface.png` | Açıklama | GraXpert release: Ariel (v2.2.0) | Görünür release metni | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| G-EV-005 | `validation/ui/pi-1.9.3/graxpert/screenshots/01-full-interface.png` | Kontrol | Image | View selector | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| G-EV-006 | `validation/ui/pi-1.9.3/graxpert/screenshots/01-full-interface.png` | Kontrol | Correction | ComboBox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| G-EV-007 | `validation/ui/pi-1.9.3/graxpert/screenshots/01-full-interface.png` | Kontrol | Smoothing | Sayısal kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| G-EV-008 | `validation/ui/pi-1.9.3/graxpert/screenshots/01-full-interface.png` | Kontrol | Show background model | Checkbox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| G-EV-009 | `validation/ui/pi-1.9.3/graxpert/screenshots/01-full-interface.png` | Kontrol | Replace the target view | Checkbox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| G-EV-010 | `validation/ui/pi-1.9.3/graxpert/screenshots/correction.png` | Correction | Subtraction | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| G-EV-011 | `validation/ui/pi-1.9.3/graxpert/screenshots/correction.png` | Correction | Division | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| G-EV-012 | `validation/ui/pi-1.9.3/graxpert/screenshots/01-full-interface.png` | Genel | Görünen seçim ve sayısal değerler | Mevcut durum | Ekran anındaki durum | UI-OBSERVED | Yüksek | Evet | Default değildir |
| G-EV-013 | `validation/ui/pi-1.9.3/graxpert/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| G-EV-014 | `validation/ui/pi-1.9.3/graxpert/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/default state kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır |  |
| G-EV-015 | `validation/ui/pi-1.9.3/graxpert/screenshots/01-full-interface.png` | Davranış | Process çıktısı ve parametre etkileri | Çalıştırma sonucu | Statik görsel açıklamıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü veri testi gerekir |
| G-EV-016 | `validation/ui/pi-1.9.3/graxpert/screenshots/01-full-interface.png` | Algoritma | Kontrollerin algoritmik anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç

Menü yolu ve görünür kontrol/section adları **UI-VERIFIED** kapsamındadır. Process davranışı için **DATA-REQUIRED**, algoritmik açıklamalar için **DOC-REQUIRED** kaydı korunmuştur. Doğrulanan default sayısı: **0**.
