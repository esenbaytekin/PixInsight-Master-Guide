# GradientCorrection UI Evidence Matrix

## Preflight

| Alan | Değer |
|---|---|
| PROCESS_SLUG | `gradient-correction` |
| PIXINSIGHT_VERSION | `1.9.3` |
| SCREENSHOT_DIR | `validation/ui/pi-1.9.3/gradient-correction/screenshots/` |
| VALIDATION_DIR | `validation/ui/pi-1.9.3/gradient-correction` |
| CANONICAL_DOC_FILE | `docs/04-gradient/gradient-correction.md` |
| Screenshot folder | Mevcut |
| Screenshot sayısı | 2 |

Canonical sayfa tek exact filename eşleşmesiyle bulundu; MkDocs navigation, H1 ve iç bağlantılar aynı hedefi doğruladı.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| GC-EV-001 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/07-process-menu-location.png` | Process menu | GradientCorrection | Process adı | Görünür | UI-VERIFIED | Yüksek | Evet |  |
| GC-EV-002 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/07-process-menu-location.png` | Process menu | Process → GradientCorrection → GradientCorrection | Menü yolu | Menü açık | UI-VERIFIED | Yüksek | Evet |  |
| GC-EV-003 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | Model Generation | Section başlığı | Görünür | UI-VERIFIED | Yüksek | Evet |  |
| GC-EV-004 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Simplified Model | Simplified Model | Section başlığı | Görünür | UI-VERIFIED | Yüksek | Evet |  |
| GC-EV-005 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Structure Protection | Structure Protection | Section başlığı | Görünür | UI-VERIFIED | Yüksek | Evet |  |
| GC-EV-006 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | Low threshold | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| GC-EV-007 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | Low tolerance | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| GC-EV-008 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | High threshold | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| GC-EV-009 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | High tolerance | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| GC-EV-010 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | Scale | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| GC-EV-011 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | Smoothness | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| GC-EV-012 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | Automatic convergence | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| GC-EV-013 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | Generate gradient model | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| GC-EV-014 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Simplified Model | Simplified Model | Section enable checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| GC-EV-015 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Simplified Model | Model degree | Numeric alan | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| GC-EV-016 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Simplified Model | Generate simplified model | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| GC-EV-017 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Structure Protection | Structure Protection | Section enable checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| GC-EV-018 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Structure Protection | Protection threshold | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| GC-EV-019 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Structure Protection | Protection amount | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| GC-EV-020 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Structure Protection | Generate protection masks | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| GC-EV-021 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | Low threshold | Numeric | 0.20 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| GC-EV-022 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | Low tolerance | Numeric | 0.50 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| GC-EV-023 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | High threshold | Numeric | 0.05 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| GC-EV-024 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | High tolerance | Numeric | 0.00 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| GC-EV-025 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | Scale | Numeric | 5.00 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| GC-EV-026 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | Smoothness | Numeric | 0.40 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| GC-EV-027 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | Automatic convergence | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| GC-EV-028 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Model Generation | Generate gradient model | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| GC-EV-029 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Simplified Model | Simplified Model | Section checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| GC-EV-030 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Simplified Model | Model degree | Numeric | 1; pasif | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| GC-EV-031 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Simplified Model | Generate simplified model | Checkbox | İşaretsiz; pasif | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| GC-EV-032 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Structure Protection | Structure Protection | Section checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| GC-EV-033 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Structure Protection | Protection threshold | Numeric | 0.10 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| GC-EV-034 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Structure Protection | Protection amount | Numeric | 0.50 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| GC-EV-035 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Structure Protection | Generate protection masks | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| GC-EV-036 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Klasör adı tek başına görsel kanıt değildir |
| GC-EV-037 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/yeni instance kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır | Mevcut değerler default sayılamaz |
| GC-EV-038 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Genel | Tooltip metinleri | Tooltip | Tooltip açık değil | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| GC-EV-039 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Genel | Console/log metni | Console | Console görünmüyor | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| GC-EV-040 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Genel | Model, protection ve output davranışı | Davranış | Process çalıştırılmıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü test gerekir |
| GC-EV-041 | `validation/ui/pi-1.9.3/gradient-correction/screenshots/01-full-interface.png` | Genel | Parametrelerin algoritmik anlamı | Dokümantasyon | Görsel algoritmayı açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | Birincil kaynak gerekir |

## Yanlış okuma denetimi

- [x] Ondalık değerler yeniden okundu.
- [x] Aktif/pasif kontroller kaydedildi.
- [x] Mevcut değerler default olarak sunulmadı.
- [x] Statik görselden davranış çıkarılmadı.
- [x] Kanıtlar yalnız SCREENSHOT_DIR içinden kullanıldı.

## Sonuç özeti

| Ölçüt | Sonuç |
|---|---:|
| İncelenen görsel | 2 |
| UI-VERIFIED | 20 |
| UI-PARTIAL | 1 |
| UI-OBSERVED | 15 |
| UI-UNVERIFIED | 3 |
| DATA-REQUIRED | 1 |
| DOC-REQUIRED | 1 |
| Doğrulanan default | 0 |

## Karar

- Yayına taşınabilecek bilgiler: process adı, menü yolu, üç section ve 15 kontrol etiketi/tipi.
- Bekleyen kanıtlar: ekran içi sürüm, reset/default state, tooltip, console/log, model/protection/output davranışı ve algoritmik anlam.
- Hazırlık durumu: **Kısmen hazır**.

