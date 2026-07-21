# LinearFit UI Evidence Matrix

## Preflight

| Alan | Değer |
|---|---|
| PROCESS_SLUG | `linear-fit` |
| Normalized identifier | `linearfit` |
| Aliases used | `linear-fit`, `LinearFit`, `Linear Fit`, `linearfit` |
| PIXINSIGHT_VERSION | `1.9.3` |
| SCREENSHOT_DIR | `validation/ui/pi-1.9.3/linear-fit/screenshots/` |
| VALIDATION_DIR | `validation/ui/pi-1.9.3/linear-fit` |
| CANONICAL_DOC_FILE | Bulunamadı — DOC-REQUIRED |
| Registry result | `linear-fit.canonical_doc: null` |
| Candidate files and scores | Yok |
| Selection reason | Hiçbir aday 80 puan eşiğine ulaşmadı |
| Screenshot folder | Mevcut |
| Screenshot sayısı | 2 |

Registry kaydı process kimliğini ve aliases listesini doğruladı ancak canonical hedefi `null` bıraktı. Normalized filename, H1, MkDocs navigation, internal link ve prominent process-name fallback araması puanlanabilir aday bulmadı. Yeni canonical sayfa oluşturulmadı ve process dokümantasyonu değiştirilmedi.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| LF-EV-001 | `validation/ui/pi-1.9.3/linear-fit/screenshots/07-process-menu-location.png` | Process menu | LinearFit | Process adı | Görünür | UI-VERIFIED | Yüksek | Evet |  |
| LF-EV-002 | `validation/ui/pi-1.9.3/linear-fit/screenshots/07-process-menu-location.png` | Process menu | Process → ColorCalibration → LinearFit | Menü yolu | Menü açık | UI-VERIFIED | Yüksek | Evet |  |
| LF-EV-003 | `validation/ui/pi-1.9.3/linear-fit/screenshots/01-full-interface.png` | Main | Reference image | Image reference alanı | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet |  |
| LF-EV-004 | `validation/ui/pi-1.9.3/linear-fit/screenshots/01-full-interface.png` | Main | Reject low | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet |  |
| LF-EV-005 | `validation/ui/pi-1.9.3/linear-fit/screenshots/01-full-interface.png` | Main | Reject high | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet |  |
| LF-EV-006 | `validation/ui/pi-1.9.3/linear-fit/screenshots/01-full-interface.png` | Main | Reference image | Image reference alanı | Boş | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| LF-EV-007 | `validation/ui/pi-1.9.3/linear-fit/screenshots/01-full-interface.png` | Main | Reject low | Numeric alan | 0.000000 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| LF-EV-008 | `validation/ui/pi-1.9.3/linear-fit/screenshots/01-full-interface.png` | Main | Reject high | Numeric alan | 0.920000 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| LF-EV-009 | `validation/ui/pi-1.9.3/linear-fit/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Klasör adı tek başına görsel kanıt değildir |
| LF-EV-010 | `validation/ui/pi-1.9.3/linear-fit/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/yeni instance kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır | Mevcut değerler default sayılamaz |
| LF-EV-011 | `validation/ui/pi-1.9.3/linear-fit/screenshots/01-full-interface.png` | Genel | Tooltip metinleri | Tooltip | Tooltip açık değil | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| LF-EV-012 | `validation/ui/pi-1.9.3/linear-fit/screenshots/01-full-interface.png` | Genel | Console/log metni | Console | Console görünmüyor | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| LF-EV-013 | `validation/ui/pi-1.9.3/linear-fit/screenshots/01-full-interface.png` | Genel | Fit, rejection ve output davranışı | Davranış | Process çalıştırılmıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü gerçek veri testi gerekir |
| LF-EV-014 | `validation/ui/pi-1.9.3/linear-fit/screenshots/01-full-interface.png` | Canonical discovery | Canonical process page | Dokümantasyon hedefi | Bulunamadı | DOC-REQUIRED | Yüksek | Hayır | Yeni canonical sayfa oluşturulmadı |
| LF-EV-015 | `validation/ui/pi-1.9.3/linear-fit/screenshots/01-full-interface.png` | Genel | Linear fit ve rejection parametre anlamı | Dokümantasyon | Görsel algoritmayı açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | Birincil kaynak gerekir |

## Yanlış okuma denetimi

- [x] `0.000000` ve `0.920000` ondalıkları yeniden okundu.
- [x] Mevcut değerler default olarak sunulmadı.
- [x] Statik screenshot'tan behavior çıkarılmadı.
- [x] Yalnız SCREENSHOT_DIR içindeki iki görsel kullanıldı.

## Sonuç özeti

| Ölçüt | Sonuç |
|---|---:|
| İncelenen görsel | 2 |
| UI-VERIFIED | 5 |
| UI-PARTIAL | 1 |
| UI-OBSERVED | 3 |
| UI-UNVERIFIED | 3 |
| DATA-REQUIRED | 1 |
| DOC-REQUIRED | 2 |
| Doğrulanan default | 0 |

## Karar

- Yayına taşınabilecek UI bilgileri: process adı, menü yolu ve üç kontrol etiketi/tipi.
- Dokümantasyon update: canonical sayfa bulunamadığı için durduruldu.
- Hazırlık durumu: **Evidence hazır; dokümantasyon hedefi DOC-REQUIRED**.
