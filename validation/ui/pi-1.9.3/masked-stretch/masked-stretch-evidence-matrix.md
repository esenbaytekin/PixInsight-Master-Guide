# MaskedStretch UI Evidence Matrix

## Kapsam

- Process: `MaskedStretch`
- Registry anahtarı: `masked-stretch`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/masked-stretch/screenshots/`
- Canonical doküman: `docs/07-stretch/masked-stretch.md`

Görünen seçim ve değerler yalnız ekran anını gösterir; fabrika varsayılanı oldukları iddia edilmez.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| MS-EV-001 | `validation/ui/pi-1.9.3/masked-stretch/screenshots/07-process-menu-location.png` | Menü | Process > IntensityTransformations > MaskedStretch | Menü yolu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MS-EV-002 | `validation/ui/pi-1.9.3/masked-stretch/screenshots/01-full-interface.png` | Pencere | MaskedStretch | Process başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MS-EV-003 | `validation/ui/pi-1.9.3/masked-stretch/screenshots/01-full-interface.png` | Kontrol | Target background | Sayısal kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MS-EV-004 | `validation/ui/pi-1.9.3/masked-stretch/screenshots/01-full-interface.png` | Kontrol | Iterations | Sayısal kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MS-EV-005 | `validation/ui/pi-1.9.3/masked-stretch/screenshots/01-full-interface.png` | Kontrol | Clipping fraction | Sayısal kontrol | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MS-EV-006 | `validation/ui/pi-1.9.3/masked-stretch/screenshots/01-full-interface.png` | Kontrol | Color mask type | ComboBox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MS-EV-007 | `validation/ui/pi-1.9.3/masked-stretch/screenshots/01-full-interface.png` | Kontrol | Background reference | View selector | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MS-EV-008 | `validation/ui/pi-1.9.3/masked-stretch/screenshots/01-full-interface.png` | Kontrol | Lower limit ve Upper limit | Sayısal kontroller | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MS-EV-009 | `validation/ui/pi-1.9.3/masked-stretch/screenshots/01-full-interface.png` | Section | Region of Interest | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MS-EV-010 | `validation/ui/pi-1.9.3/masked-stretch/screenshots/Color-mask-type.png` | Color mask type | HSI Intensity | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MS-EV-011 | `validation/ui/pi-1.9.3/masked-stretch/screenshots/Color-mask-type.png` | Color mask type | HSV Value | Açık liste seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| MS-EV-012 | `validation/ui/pi-1.9.3/masked-stretch/screenshots/01-full-interface.png` | Genel | Görünen seçim ve sayısal değerler | Mevcut durum | Ekran anındaki durum | UI-OBSERVED | Yüksek | Evet | Default değildir |
| MS-EV-013 | `validation/ui/pi-1.9.3/masked-stretch/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| MS-EV-014 | `validation/ui/pi-1.9.3/masked-stretch/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/default state kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır |  |
| MS-EV-015 | `validation/ui/pi-1.9.3/masked-stretch/screenshots/01-full-interface.png` | Davranış | Process çıktısı ve parametre etkileri | Çalıştırma sonucu | Statik görsel açıklamıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü veri testi gerekir |
| MS-EV-016 | `validation/ui/pi-1.9.3/masked-stretch/screenshots/01-full-interface.png` | Algoritma | Kontrollerin algoritmik anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç

Menü yolu ve görünür kontrol/section adları **UI-VERIFIED** kapsamındadır. Process davranışı için **DATA-REQUIRED**, algoritmik açıklamalar için **DOC-REQUIRED** kaydı korunmuştur. Doğrulanan default sayısı: **0**.
