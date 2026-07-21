# BackgroundNeutralization UI Evidence Matrix

## Kapsam

- Process: `BackgroundNeutralization`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/background-neutralization/screenshots/`
- Canonical doküman: `docs/05-color-calibration/background-neutralization-process.md`
- Commit/push: yapılmayacak

**UI-VERIFIED** doğrudan okunan etiket, menü veya açık liste seçeneğini; **UI-OBSERVED** yalnız ekran anındaki değer/durumu ifade eder. İki karedeki farklı `Reference image` görünümleri ayrı gözlemlerdir ve default/behavior kanıtı değildir.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| BN-EV-001 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/03-spcc-middle-section.png` | Process menu | BackgroundNeutralization | Process adı | Görünür | UI-VERIFIED | Yüksek | Evet |  |
| BN-EV-002 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/03-spcc-middle-section.png` | Process menu | Process → ColorCalibration → BackgroundNeutralization | Menü yolu | Menü açık | UI-VERIFIED | Yüksek | Evet |  |
| BN-EV-003 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Region of Interest | Region of Interest | Section başlığı | Görünür | UI-VERIFIED | Yüksek | Evet |  |
| BN-EV-004 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Main | Reference image | Image reference alanı | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| BN-EV-005 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Main | Lower limit | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| BN-EV-006 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Main | Upper limit | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| BN-EV-007 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Main | Working mode | ComboBox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| BN-EV-008 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Main | Target background | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| BN-EV-009 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Region of Interest | Region of Interest | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| BN-EV-010 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Region of Interest | Left | Numeric alan | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| BN-EV-011 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Region of Interest | Top | Numeric alan | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| BN-EV-012 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Region of Interest | Width | Numeric alan | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| BN-EV-013 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Region of Interest | Height | Numeric alan | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| BN-EV-014 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Region of Interest | From Preview | Button | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| BN-EV-015 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/07-spcc-process-menu-location.png` | Main | Target Background | Working mode seçeneği | Açık listede görünür | UI-VERIFIED | Yüksek | Evet |  |
| BN-EV-016 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/07-spcc-process-menu-location.png` | Main | Rescale | Working mode seçeneği | Açık listede görünür | UI-VERIFIED | Yüksek | Evet |  |
| BN-EV-017 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/07-spcc-process-menu-location.png` | Main | Rescale as needed | Working mode seçeneği | Açık listede görünür | UI-VERIFIED | Yüksek | Evet |  |
| BN-EV-018 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/07-spcc-process-menu-location.png` | Main | Truncate | Working mode seçeneği | Açık listede görünür | UI-VERIFIED | Yüksek | Evet |  |
| BN-EV-019 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/07-spcc-process-menu-location.png` | Main | Reference image | Image reference alanı | <target image> | UI-OBSERVED | Yüksek | Evet | Farklı ekran anı; default değildir |
| BN-EV-020 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Main | Reference image | Image reference alanı | Boş | UI-OBSERVED | Yüksek | Evet | Farklı ekran anı; default değildir |
| BN-EV-021 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Main | Lower limit | Numeric alan | 0.0000000 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| BN-EV-022 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Main | Upper limit | Numeric alan | 0.1000000 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| BN-EV-023 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Main | Working mode | ComboBox | Rescale as needed | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| BN-EV-024 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Main | Target background | Numeric alan | 0.0010000; pasif | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| BN-EV-025 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Region of Interest | Region of Interest | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| BN-EV-026 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Region of Interest | Left | Numeric alan | 0; pasif | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| BN-EV-027 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Region of Interest | Top | Numeric alan | 0; pasif | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| BN-EV-028 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Region of Interest | Width | Numeric alan | 0; pasif | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| BN-EV-029 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Region of Interest | Height | Numeric alan | 0; pasif | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| BN-EV-030 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Region of Interest | From Preview | Button | Pasif | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| BN-EV-031 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/03-spcc-middle-section.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Klasör sınıflandırması görsel kanıt değildir |
| BN-EV-032 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/yeni instance kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır | Mevcut değerler default sayılamaz |
| BN-EV-033 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Genel | Tooltip metinleri | Tooltip | Tooltip açık değil | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| BN-EV-034 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Genel | Console/log metni | Console | Console görünmüyor | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| BN-EV-035 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Genel | Neutralization, range, clipping ve output davranışı | Davranış | Process çalıştırılmıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü gerçek veri testi gerekir |
| BN-EV-036 | `validation/ui/pi-1.9.3/background-neutralization/screenshots/01-spcc-full-interface.png` | Genel | İstatistik yöntemi ve mode anlamları | Dokümantasyon | Görsel algoritmayı açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | Birincil kaynak gerekir |

## Yanlış okuma denetimi

- [x] `0/O` ve `1/l/I` ayrımı kontrol edildi.
- [x] Yedi ondalık basamak ve pozitif değerler tekrar okundu.
- [x] Aktif/pasif kontroller kaydedildi.
- [x] Farklı ekran anları birleştirilmedi.
- [x] Mevcut değerler default olarak sunulmadı.
- [x] Yalnız açık `Working mode` listesindeki seçenekler kaydedildi.
- [x] UI etiketi, tooltip ve davranış ayrımı korundu.

## Sonuç özeti

| Ölçüt | Sonuç |
|---|---:|
| İncelenen görsel | 3 |
| UI-VERIFIED | 18 |
| UI-PARTIAL | 1 |
| UI-OBSERVED | 12 |
| UI-UNVERIFIED | 3 |
| DATA-REQUIRED | 1 |
| DOC-REQUIRED | 1 |
| Doğrulanan default | 0 |

## Karar

- Yayına taşınabilecek bilgiler: process adı, menü yolu, `Region of Interest` section, 11 kontrol etiketi/tipi ve dört açık `Working mode` seçeneği.
- Bekleyen kanıtlar: ekran içi sürüm, resetlenmiş instance defaults, tooltip, console/log, exact statistics ve kontrollü process davranışı.
- Hazırlık durumu: **Kısmen hazır**.

