# PCC UI Evidence Matrix

## Kapsam

- Process: `PhotometricColorCalibration` (PCC)
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/pcc/screenshots/`
- Canonical doküman: `docs/05-color-calibration/pcc.md`
- Commit/push: yapılmayacak

**UI-VERIFIED** doğrudan okunan etiket, menü veya açık liste seçeneğini; **UI-OBSERVED** yalnız ekran anındaki değer/durumu ifade eder. UI-OBSERVED kayıtları default veya davranış kanıtı değildir.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| PCC-EV-001 | `validation/ui/pi-1.9.3/pcc/screenshots/07-spcc-process-menu-location.png` | Process menu | PhotometricColorCalibration | Process adı | Görünür | UI-VERIFIED | Yüksek | Evet |  |
| PCC-EV-002 | `validation/ui/pi-1.9.3/pcc/screenshots/07-spcc-process-menu-location.png` | Process menu | Process → ColorCalibration → PhotometricColorCalibration | Menü yolu | Menü açık | UI-VERIFIED | Yüksek | Evet |  |
| PCC-EV-003 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Calibration | Calibration | Section başlığı | Görünür | UI-VERIFIED | Yüksek | Evet |  |
| PCC-EV-004 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Catalog Search | Catalog Search | Section başlığı | Görünür | UI-VERIFIED | Yüksek | Evet |  |
| PCC-EV-005 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Signal Evaluation | Section başlığı | Görünür | UI-VERIFIED | Yüksek | Evet |  |
| PCC-EV-006 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Background Neutralization | Background Neutralization | Section başlığı | Görünür | UI-VERIFIED | Yüksek | Evet |  |
| PCC-EV-007 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Region of Interest | Region of Interest | Section başlığı | Görünür | UI-VERIFIED | Yüksek | Evet |  |
| PCC-EV-008 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Calibration | White reference | ComboBox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-009 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Calibration | Generate graphs | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-010 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Calibration | Generate star maps | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-011 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Calibration | Generate text files | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-012 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Calibration | Output directory | Directory alanı | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-013 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Calibration | Apply color calibration | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-014 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Catalog Search | Automatic catalog | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-015 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Catalog Search | Catalog | ComboBox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-016 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Catalog Search | VizieR server | ComboBox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-017 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Catalog Search | Automatic limit magnitude | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-018 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Catalog Search | Limit magnitude | Numeric alan | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-019 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Detection scales | Numeric alan | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-020 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Saturation threshold | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-021 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Relative saturation threshold | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-022 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Noise scales | Numeric alan | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-023 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Minimum structure size | Seçim alanı | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-024 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Hot pixel removal | Numeric alan | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-025 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Noise reduction | Numeric alan | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-026 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Minimum detection SNR | Numeric alan | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-027 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | PSF type | ComboBox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-028 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Growth factor | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-029 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Maximum stars | Numeric alan | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-030 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Allow clustered sources | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-031 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Background Neutralization | Background Neutralization | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-032 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Background Neutralization | Lower limit | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-033 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Background Neutralization | Upper limit | Numeric alan ve slider | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-034 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Region of Interest | Region of Interest | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-035 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Region of Interest | Left | Numeric alan | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-036 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Region of Interest | Top | Numeric alan | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-037 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Region of Interest | Width | Numeric alan | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-038 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Region of Interest | Height | Numeric alan | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-039 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Region of Interest | From Preview | Button | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| PCC-EV-040 | `validation/ui/pi-1.9.3/pcc/screenshots/04-dropdown-open.png` | Catalog Search | CDS Strasbourg, France | VizieR server seçeneği | Açık listede görünür | UI-VERIFIED | Yüksek | Evet |  |
| PCC-EV-041 | `validation/ui/pi-1.9.3/pcc/screenshots/04-dropdown-open.png` | Catalog Search | ADAC Tokyo, Japan | VizieR server seçeneği | Açık listede görünür | UI-VERIFIED | Yüksek | Evet |  |
| PCC-EV-042 | `validation/ui/pi-1.9.3/pcc/screenshots/04-dropdown-open.png` | Catalog Search | IUCAA Pune, India | VizieR server seçeneği | Açık listede görünür | UI-VERIFIED | Yüksek | Evet |  |
| PCC-EV-043 | `validation/ui/pi-1.9.3/pcc/screenshots/04-dropdown-open.png` | Catalog Search | INASAN Moscow, Russia | VizieR server seçeneği | Açık listede görünür | UI-VERIFIED | Yüksek | Evet |  |
| PCC-EV-044 | `validation/ui/pi-1.9.3/pcc/screenshots/04-dropdown-open.png` | Catalog Search | NAOC Beijing, China | VizieR server seçeneği | Açık listede görünür | UI-VERIFIED | Yüksek | Evet |  |
| PCC-EV-045 | `validation/ui/pi-1.9.3/pcc/screenshots/04-dropdown-open.png` | Catalog Search | CFA Harvard, Cambridge, USA | VizieR server seçeneği | Açık listede görünür | UI-VERIFIED | Yüksek | Evet |  |
| PCC-EV-046 | `validation/ui/pi-1.9.3/pcc/screenshots/04-dropdown-open.png` | Catalog Search | IDIA, South Africa | VizieR server seçeneği | Açık listede görünür | UI-VERIFIED | Yüksek | Evet |  |
| PCC-EV-047 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Calibration | White reference | ComboBox | Average Spiral Galaxy | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-048 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Calibration | Generate graphs | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-049 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Calibration | Generate star maps | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-050 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Calibration | Generate text files | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-051 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Calibration | Output directory | Directory alanı | <system-temp-dir> | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-052 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Calibration | Apply color calibration | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-053 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Catalog Search | Automatic catalog | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-054 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Catalog Search | Catalog | ComboBox | APASS DR9 (VizieR); pasif | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-055 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Catalog Search | VizieR server | ComboBox | CDS Strasbourg, France | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-056 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Catalog Search | Automatic limit magnitude | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-057 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Catalog Search | Limit magnitude | Numeric alan | 12.0; pasif | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-058 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Detection scales | Numeric alan | 5 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-059 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Saturation threshold | Numeric alan | 0.74 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-060 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Relative saturation threshold | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-061 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Noise scales | Numeric alan | 1 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-062 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Minimum structure size | Seçim alanı | <Auto> | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-063 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Hot pixel removal | Numeric alan | 1 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-064 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Noise reduction | Numeric alan | 0 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-065 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Minimum detection SNR | Numeric alan | 40.0 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-066 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | PSF type | ComboBox | Auto | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-067 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Growth factor | Numeric alan | 1.25 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-068 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Maximum stars | Numeric alan | 24576 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-069 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Signal Evaluation | Allow clustered sources | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-070 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Background Neutralization | Background Neutralization | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-071 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Background Neutralization | Lower limit | Numeric alan | -2.80 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-072 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Background Neutralization | Upper limit | Numeric alan | +2.00 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-073 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Region of Interest | Region of Interest | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-074 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Region of Interest | Left | Numeric alan | 0; pasif | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-075 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Region of Interest | Top | Numeric alan | 0; pasif | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-076 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Region of Interest | Width | Numeric alan | 0; pasif | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-077 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Region of Interest | Height | Numeric alan | 0; pasif | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-078 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Region of Interest | From Preview | Button | Pasif | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| PCC-EV-079 | `validation/ui/pi-1.9.3/pcc/screenshots/07-spcc-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Klasör sınıflandırması görsel kanıt değildir |
| PCC-EV-080 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/yeni instance kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır | Mevcut değerler default sayılamaz |
| PCC-EV-081 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Genel | Tooltip metinleri | Tooltip | Tooltip açık değil | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| PCC-EV-082 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Genel | Console/log metni | Console | Console görünmüyor | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| PCC-EV-083 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Genel | Process davranışı ve output | Davranış | Process çalıştırılmıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü gerçek veri testi gerekir |
| PCC-EV-084 | `validation/ui/pi-1.9.3/pcc/screenshots/01-full-interface.png` | Genel | Kontrol anlamı ve algoritmik davranış | Dokümantasyon | Görsel davranışı açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | Birincil kaynak gerekir |

## Yanlış okuma denetimi

- [x] `0/O` ve `1/l/I` ayrımı kontrol edildi.
- [x] Negatif/pozitif işaretleri ve ondalık basamaklar kontrol edildi.
- [x] Aktif/pasif kontroller kaydedildi.
- [x] Mevcut değerler default olarak sunulmadı.
- [x] Yalnız açık VizieR server listesindeki seçenekler kaydedildi.
- [x] UI etiketi, tooltip ve davranış ayrımı korundu.

## Sonuç özeti

| Ölçüt | Sonuç |
|---|---:|
| İncelenen görsel | 3 |
| UI-VERIFIED | 46 |
| UI-PARTIAL | 1 |
| UI-OBSERVED | 32 |
| UI-UNVERIFIED | 3 |
| DATA-REQUIRED | 1 |
| DOC-REQUIRED | 1 |
| Doğrulanan default | 0 |

## Karar

- Yayına taşınabilecek bilgiler: process adı, menü yolu, beş section, 32 kontrol etiketi/tipi ve yedi açık VizieR server seçeneği.
- Bekleyen kanıtlar: ekran içi sürüm, resetlenmiş instance defaults, tooltip, console/log ve kontrollü process davranışı.
- Hazırlık durumu: **Kısmen hazır**.

