# SPCC Görsel Kanıt Matrisi

## Kapsam ve sınıflandırma

Bu matris beş SPCC ekran görüntüsündeki tekil, doğrudan gözlemleri kaydeder. **UI-VERIFIED** etiket veya kontrol tipini; **UI-OBSERVED** ekran anındaki seçili değer/durumu ifade eder. UI-OBSERVED kayıtları default veya process davranışı kanıtı değildir.

| Kanıt ID | Görsel dosyası | UI bölümü | UI etiketi veya değer | Kontrol tipi | Görülen durum | Güven | Kanıt yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|
| SPCC-EV-001 | `validation/ui/pi-1.9.3/spcc/screenshots/07-spcc-process-menu-location.png` | Process menu | SpectrophotometricColorCalibration | Process adı | Görünür | Yüksek | Evet | UI-VERIFIED: Metin doğrudan okunuyor |
| SPCC-EV-002 | `validation/ui/pi-1.9.3/spcc/screenshots/07-spcc-process-menu-location.png` | Process menu | Process → ColorCalibration → SpectrophotometricColorCalibration | Menü yolu | Menü açık | Yüksek | Evet | UI-VERIFIED: Üç seviye aynı karede görünür |
| SPCC-EV-003 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Calibration | Section başlığı | Görünür | Yüksek | Evet | UI-VERIFIED: Başlık net |
| SPCC-EV-004 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Catalog Search | Catalog Search | Section başlığı | Görünür | Yüksek | Evet | UI-VERIFIED: Başlık net |
| SPCC-EV-005 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Signal Evaluation | Section başlığı | Görünür | Yüksek | Evet | UI-VERIFIED: Başlık net |
| SPCC-EV-006 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Background Neutralization | Background Neutralization | Section başlığı | Görünür | Yüksek | Evet | UI-VERIFIED: Başlık net |
| SPCC-EV-007 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Region of Interest | Region of Interest | Section başlığı | Görünür | Yüksek | Evet | UI-VERIFIED: Başlık net |
| SPCC-EV-008 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | White reference | ComboBox | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-009 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | QE curve | ComboBox | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-010 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Red filter | ComboBox | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-011 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Green filter | ComboBox | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-012 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Blue filter | ComboBox | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-013 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Narrowband filters mode | Checkbox | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-014 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Generate graphs | Checkbox | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-015 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Generate star maps | Checkbox | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-016 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Generate text files | Checkbox | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-017 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Output directory | Directory alanı | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-018 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Apply color calibration | Checkbox | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-019 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Catalog Search | Catalog | ComboBox | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-020 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Catalog Search | Automatic limit magnitude | Checkbox | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-021 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Catalog Search | Limit magnitude | Numeric alan | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-022 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Detection scales | Numeric alan | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-023 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Saturation threshold | Numeric alan ve slider | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-024 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Relative saturation threshold | Checkbox | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-025 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Noise scales | Numeric alan | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-026 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Minimum structure size | Seçim alanı | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-027 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Hot pixel removal | Numeric alan | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-028 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Noise reduction | Numeric alan | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-029 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Minimum detection SNR | Numeric alan | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-030 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | PSF type | ComboBox | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-031 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Growth factor | Numeric alan ve slider | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-032 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Maximum stars | Numeric alan | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-033 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Allow clustered sources | Checkbox | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-034 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Background Neutralization | Lower limit | Numeric alan ve slider | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-035 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Background Neutralization | Upper limit | Numeric alan ve slider | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-036 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Region of Interest | Region of Interest | Checkbox | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-037 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Region of Interest | Left | Numeric alan | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-038 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Region of Interest | Top | Numeric alan | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-039 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Region of Interest | Width | Numeric alan | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-040 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Region of Interest | Height | Numeric alan | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-041 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Region of Interest | From Preview | Button | Etiket ve kontrol görünür | Yüksek | Evet | UI-VERIFIED: Etiket/kontrol tipi kanıtlandı; davranış kanıtlanmadı |
| SPCC-EV-042 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | White reference | ComboBox | Average Spiral Galaxy | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-043 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | QE curve | ComboBox | Ideal QE curve | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-044 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Red filter | ComboBox | Sony Color Sensor R-UVIRcut | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-045 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Green filter | ComboBox | Sony Color Sensor G-UVIRcut | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-046 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Blue filter | ComboBox | Sony Color Sensor B-UVIRcut | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-047 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Output directory | Directory alanı | <system-temp-dir> | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-048 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Narrowband filters mode | Checkbox | İşaretsiz | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-049 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Generate graphs | Checkbox | İşaretli | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-050 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Generate star maps | Checkbox | İşaretsiz | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-051 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Generate text files | Checkbox | İşaretsiz | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-052 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Apply color calibration | Checkbox | İşaretli | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-053 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Catalog Search | Catalog | ComboBox | Gaia DR3/SP | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-054 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Catalog Search | Limit magnitude | Numeric alan | 12.0; pasif | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-055 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Detection scales | Numeric alan | 5 | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-056 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Saturation threshold | Numeric alan | 0.75 | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-057 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Noise scales | Numeric alan | 1 | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-058 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Minimum structure size | Seçim alanı | <Auto> | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-059 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Hot pixel removal | Numeric alan | 1 | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-060 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Noise reduction | Numeric alan | 0 | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-061 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Minimum detection SNR | Numeric alan | 40.0 | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-062 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | PSF type | ComboBox | Auto | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-063 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Growth factor | Numeric alan | 1.25 | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-064 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Maximum stars | Numeric alan | 24576 | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-065 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Catalog Search | Automatic limit magnitude | Checkbox | İşaretli | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-066 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Relative saturation threshold | Checkbox | İşaretli | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-067 | `validation/ui/pi-1.9.3/spcc/screenshots/03-spcc-middle-section.png` | Signal Evaluation | Allow clustered sources | Checkbox | İşaretli | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-068 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Background Neutralization | Lower limit | Numeric alan | -2.80 | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-069 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Background Neutralization | Upper limit | Numeric alan | +2.00 | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-070 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Region of Interest | Left | Numeric alan | 0; pasif | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-071 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Region of Interest | Top | Numeric alan | 0; pasif | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-072 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Region of Interest | Width | Numeric alan | 0; pasif | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-073 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Region of Interest | Height | Numeric alan | 0; pasif | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-074 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Background Neutralization | Background Neutralization | Checkbox | İşaretli | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-075 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Region of Interest | Region of Interest | Checkbox | İşaretsiz | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-076 | `validation/ui/pi-1.9.3/spcc/screenshots/04-spcc-lower-section.png` | Region of Interest | From Preview | Button | Pasif | Yüksek | Evet | UI-OBSERVED: Yalnız ekran anındaki mevcut durum; default değildir |
| SPCC-EV-077 | `validation/ui/pi-1.9.3/spcc/screenshots/07-spcc-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | Düşük | Kısmen | UI-PARTIAL: Klasör sınıflandırması tek başına görsel kanıt değildir |
| SPCC-EV-078 | `validation/ui/pi-1.9.3/spcc/screenshots/01-spcc-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/yeni instance kanıtı yok | Yüksek | Hayır | UI-UNVERIFIED: Mevcut değerler default sayılamaz |
| SPCC-EV-079 | `validation/ui/pi-1.9.3/spcc/screenshots/02-spcc-upper-section.png` | Calibration | Tüm dropdown seçenekleri | Seçenek listesi | Listeler kapalı | Yüksek | Hayır | UI-UNVERIFIED: Yalnız seçili değer görünür |
| SPCC-EV-080 | `validation/ui/pi-1.9.3/spcc/screenshots/01-spcc-full-interface.png` | Genel | Tooltip metinleri | Tooltip | Tooltip açık değil | Yüksek | Hayır | UI-UNVERIFIED: Kanıt yok |
| SPCC-EV-081 | `validation/ui/pi-1.9.3/spcc/screenshots/01-spcc-full-interface.png` | Genel | Console/log metni | Console | Console görünmüyor | Yüksek | Hayır | UI-UNVERIFIED: Kanıt yok |
| SPCC-EV-082 | `validation/ui/pi-1.9.3/spcc/screenshots/01-spcc-full-interface.png` | Genel | Process output ve başarı davranışı | Davranış | Process çalıştırılmıyor | Yüksek | Hayır | DATA-REQUIRED: Kontrollü gerçek veri testi gerekir |
| SPCC-EV-083 | `validation/ui/pi-1.9.3/spcc/screenshots/01-spcc-full-interface.png` | Genel | Default ve algoritmik kontrol anlamları | Dokümantasyon | Görsel davranışı açıklamıyor | Yüksek | Hayır | DOC-REQUIRED: Birincil process kaynağı gerekir |

## Sayım

| Sınıf | Sayı |
|---|---:|
| UI-VERIFIED | 41 |
| UI-PARTIAL | 1 |
| UI-OBSERVED | 35 |
| UI-UNVERIFIED | 4 |
| DATA-REQUIRED | 1 |
| DOC-REQUIRED | 1 |
| **Toplam** | **83** |

