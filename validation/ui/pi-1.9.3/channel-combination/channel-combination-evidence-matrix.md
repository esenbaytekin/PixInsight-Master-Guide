# ChannelCombination UI Evidence Matrix

## Kapsam

- Process: `ChannelCombination`
- Registry anahtarı: `channel-combination`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/channel-combination/screenshots/`
- Canonical doküman: `docs/08-lrgb/channel-combination.md`

Görünen seçim ve değerler yalnız ekran anını gösterir; fabrika varsayılanı oldukları iddia edilmez.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| CC-EV-001 | `validation/ui/pi-1.9.3/channel-combination/screenshots/07-process-menu-location.png` | Menü | Process > ChannelManagement > ChannelCombination | Menü yolu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-002 | `validation/ui/pi-1.9.3/channel-combination/screenshots/01-full-interface.png` | Pencere | ChannelCombination | Process başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-003 | `validation/ui/pi-1.9.3/channel-combination/screenshots/01-full-interface.png` | Section | Color Space | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-004 | `validation/ui/pi-1.9.3/channel-combination/screenshots/01-full-interface.png` | Color Space | RGB | Radio seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-005 | `validation/ui/pi-1.9.3/channel-combination/screenshots/01-full-interface.png` | Color Space | CIE XYZ | Radio seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-006 | `validation/ui/pi-1.9.3/channel-combination/screenshots/01-full-interface.png` | Color Space | HSV | Radio seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-007 | `validation/ui/pi-1.9.3/channel-combination/screenshots/01-full-interface.png` | Color Space | CIE L*a*b* | Radio seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-008 | `validation/ui/pi-1.9.3/channel-combination/screenshots/01-full-interface.png` | Color Space | HSI | Radio seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-009 | `validation/ui/pi-1.9.3/channel-combination/screenshots/01-full-interface.png` | Color Space | CIE L*c*h* | Radio seçeneği | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-010 | `validation/ui/pi-1.9.3/channel-combination/screenshots/01-full-interface.png` | Section | Channels / Source Images | Section başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-011 | `validation/ui/pi-1.9.3/channel-combination/screenshots/01-full-interface.png` | Channels | R, G ve B | Kanal etiketleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-012 | `validation/ui/pi-1.9.3/channel-combination/screenshots/01-full-interface.png` | Channels | Inherit astrometric solution | Checkbox | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CC-EV-013 | `validation/ui/pi-1.9.3/channel-combination/screenshots/01-full-interface.png` | Genel | Görünen seçim ve sayısal değerler | Mevcut durum | Ekran anındaki durum | UI-OBSERVED | Yüksek | Evet | Default değildir |
| CC-EV-014 | `validation/ui/pi-1.9.3/channel-combination/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| CC-EV-015 | `validation/ui/pi-1.9.3/channel-combination/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/default state kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır |  |
| CC-EV-016 | `validation/ui/pi-1.9.3/channel-combination/screenshots/01-full-interface.png` | Davranış | Process çıktısı ve parametre etkileri | Çalıştırma sonucu | Statik görsel açıklamıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü veri testi gerekir |
| CC-EV-017 | `validation/ui/pi-1.9.3/channel-combination/screenshots/01-full-interface.png` | Algoritma | Kontrollerin algoritmik anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç

Menü yolu ve görünür kontrol/section adları **UI-VERIFIED** kapsamındadır. Process davranışı için **DATA-REQUIRED**, algoritmik açıklamalar için **DOC-REQUIRED** kaydı korunmuştur. Doğrulanan default sayısı: **0**.
