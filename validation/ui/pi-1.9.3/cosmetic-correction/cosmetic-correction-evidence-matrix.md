# CosmeticCorrection UI Evidence Matrix

## Kapsam

- Process: `CosmeticCorrection`
- Registry anahtarı: `cosmetic-correction`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/`
- Canonical doküman: `docs/03-kalibrasyon/cosmetic-correction.md`

Görünen seçim ve değerler yalnız ekran anını gösterir; fabrika varsayılanı oldukları iddia edilmez.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| CC-EV-001 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/07-process-menu-location.png` | Menü | Process > ImageCalibration > CosmeticCorrection | Menü yolu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-002 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Pencere | CosmeticCorrection | Process başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-003 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Section | Target Frames | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-004 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Section | Output | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-005 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Section | Use Master Dark | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-006 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Section | Hot Pixels Threshold | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-007 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Section | Cold Pixels Threshold | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-008 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Section | Use Auto detect | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-009 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Section | Use Defect List | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-010 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Section | Real-Time Preview | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-011 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Output | CFA ve Overwrite | Checkbox etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-012 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Auto detect | Hot Sigma ve Cold Sigma | Kontrol etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-013 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Defect List | Row, Col ve Limit | Kontrol etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-014 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Preview | Show map ve Snapshot | Kontrol etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-015 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Genel | Görünen seçim ve sayısal değerler | Mevcut durum | Ekran anındaki durum | UI-OBSERVED | Yüksek | Evet | Default değildir |
| CC-EV-016 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| CC-EV-017 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/default state kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır |  |
| CC-EV-018 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Davranış | Process çıktısı ve parametre etkileri | Çalıştırma sonucu | Statik görsel açıklamıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü veri testi gerekir |
| CC-EV-019 | `validation/ui/pi-1.9.3/cosmetic-correction/screenshots/01-full-interface.png` | Algoritma | Kontrollerin algoritmik anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç

Menü yolu ve görünür kontrol/section adları **UI-VERIFIED** kapsamındadır. Process davranışı için **DATA-REQUIRED**, algoritmik açıklamalar için **DOC-REQUIRED** kaydı korunmuştur. Doğrulanan default sayısı: **0**.
