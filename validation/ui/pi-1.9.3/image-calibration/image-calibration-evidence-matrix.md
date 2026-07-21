# ImageCalibration UI Evidence Matrix

## Kapsam

- Process: `ImageCalibration`
- Registry anahtarı: `image-calibration`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/image-calibration/screenshots/`
- Canonical doküman: `docs/03-kalibrasyon/image-calibration.md`

Görünen seçim ve değerler yalnız ekran anını gösterir; fabrika varsayılanı oldukları iddia edilmez.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| IC-EV-001 | `validation/ui/pi-1.9.3/image-calibration/screenshots/07-process-menu-location.png` | Menü | Process > ImageCalibration > ImageCalibration | Menü yolu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| IC-EV-002 | `validation/ui/pi-1.9.3/image-calibration/screenshots/01-full-interface.png` | Pencere | ImageCalibration | Process başlığı | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| IC-EV-003 | `validation/ui/pi-1.9.3/image-calibration/screenshots/01-full-interface.png` | Section | Target Frames, Format Hints, Output Files | Section başlıkları | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| IC-EV-004 | `validation/ui/pi-1.9.3/image-calibration/screenshots/01-full-interface.png` | Section | Signal Evaluation, Noise Evaluation, Input Pedestal | Section başlıkları | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| IC-EV-005 | `validation/ui/pi-1.9.3/image-calibration/screenshots/01-full-interface.png` | Section | Overscan, Cosmetic Correction, Master Bias, Master Dark, Master Flat | Section başlıkları | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| IC-EV-006 | `validation/ui/pi-1.9.3/image-calibration/screenshots/CFA-mosaic-pattern.png` | CFA mosaic pattern | Auto, RGGB, BGGR, GBRG, GRBG, GRGB, GBGR, RGBG, BGRG | Açık liste seçenekleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| IC-EV-007 | `validation/ui/pi-1.9.3/image-calibration/screenshots/Sample-format.png` | Sample format | 16-bit integer, 32-bit integer, 32-bit floating point, 64-bit floating point | Açık liste seçenekleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| IC-EV-008 | `validation/ui/pi-1.9.3/image-calibration/screenshots/Output-pedestal-mode.png` | Output pedestal mode | Literal value ve Automatic | Açık liste seçenekleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| IC-EV-009 | `validation/ui/pi-1.9.3/image-calibration/screenshots/On-error.png` | On error | Continue, Abort, Ask User | Açık liste seçenekleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| IC-EV-010 | `validation/ui/pi-1.9.3/image-calibration/screenshots/Evaluation-algorithm.png` | Evaluation algorithm | Iterative k-sigma clipping, Multiresolution support, N* robust noise estimator | Açık liste seçenekleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| IC-EV-011 | `validation/ui/pi-1.9.3/image-calibration/screenshots/PSF-type.png` | PSF type | Gaussian, Moffat beta 1.5/4/6/8/10, Auto | Açık liste seçenekleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| IC-EV-012 | `validation/ui/pi-1.9.3/image-calibration/screenshots/Pedestal-mode.png` | Pedestal mode | Literal value, Default FITS keyword (PEDESTAL), Custom FITS keyword | Açık liste seçenekleri | Doğrudan okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| IC-EV-013 | `validation/ui/pi-1.9.3/image-calibration/screenshots/01-full-interface.png` | Genel | Görünen seçim ve sayısal değerler | Mevcut durum | Ekran anındaki durum | UI-OBSERVED | Yüksek | Evet | Default değildir |
| IC-EV-014 | `validation/ui/pi-1.9.3/image-calibration/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| IC-EV-015 | `validation/ui/pi-1.9.3/image-calibration/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/default state kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır |  |
| IC-EV-016 | `validation/ui/pi-1.9.3/image-calibration/screenshots/01-full-interface.png` | Davranış | Process çıktısı ve parametre etkileri | Çalıştırma sonucu | Statik görsel açıklamıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü veri testi gerekir |
| IC-EV-017 | `validation/ui/pi-1.9.3/image-calibration/screenshots/01-full-interface.png` | Algoritma | Kontrollerin algoritmik anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç

Menü yolu ve görünür kontrol/section adları **UI-VERIFIED** kapsamındadır. Process davranışı için **DATA-REQUIRED**, algoritmik açıklamalar için **DOC-REQUIRED** kaydı korunmuştur. Doğrulanan default sayısı: **0**.
