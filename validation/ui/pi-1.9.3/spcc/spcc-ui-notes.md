# SPCC UI Notları — Görsel Kanıt İncelemesi

## Kanıt kapsamı

Beş ekran görüntüsü incelendi. Görseller process instance'ın resetlendiğini veya yeni açıldığını göstermediği için hiçbir görünen değer **default** olarak sınıflandırılmadı. Ana kayıt: [SPCC Görsel Kanıt Matrisi](spcc-evidence-matrix.md).

## PixInsight sürümü

- Görsellerin klasör sınıflandırması: `pi-1.9.3`.
- Ekran içinde okunabilen sürüm numarası: **Okunamadı**.
- Durum: **UI-PARTIAL**. Klasör adı, tek başına sürümün görsel kanıtı değildir.

## Process adı ve menü yolu

- Process adı: `SpectrophotometricColorCalibration`  
  Kanıt: `screenshots/07-spcc-process-menu-location.png`  
  Durum: **UI-VERIFIED**
- Menü yolu: `Process → ColorCalibration → SpectrophotometricColorCalibration`  
  Kanıt: `screenshots/07-spcc-process-menu-location.png`  
  Durum: **UI-VERIFIED**

## Ana bölüm başlıkları

| Bölüm | Kanıt | Durum |
|---|---|---|
| Calibration | `screenshots/02-spcc-upper-section.png` | UI-VERIFIED |
| Catalog Search | `screenshots/03-spcc-middle-section.png` | UI-VERIFIED |
| Signal Evaluation | `screenshots/03-spcc-middle-section.png` | UI-VERIFIED |
| Background Neutralization | `screenshots/04-spcc-lower-section.png` | UI-VERIFIED |
| Region of Interest | `screenshots/04-spcc-lower-section.png` | UI-VERIFIED |

## UI etiketleri ve kontrol tipleri

| Bölüm | UI etiketleri | Görülen kontrol tipleri | Kanıt | Durum |
|---|---|---|---|---|
| Calibration | White reference; QE curve; Red filter; Green filter; Blue filter | ComboBox | `screenshots/02-spcc-upper-section.png` | UI-VERIFIED |
| Calibration | Narrowband filters mode; Generate graphs; Generate star maps; Generate text files; Apply color calibration | Checkbox | `screenshots/02-spcc-upper-section.png` | UI-VERIFIED |
| Calibration | Output directory | Directory alanı | `screenshots/02-spcc-upper-section.png` | UI-VERIFIED |
| Catalog Search | Catalog; Automatic limit magnitude; Limit magnitude | ComboBox, Checkbox, Numeric alan | `screenshots/03-spcc-middle-section.png` | UI-VERIFIED |
| Signal Evaluation | Detection scales; Saturation threshold; Relative saturation threshold; Noise scales; Minimum structure size; Hot pixel removal; Noise reduction; Minimum detection SNR; PSF type; Growth factor; Maximum stars; Allow clustered sources | Numeric alan, slider, seçim alanı, ComboBox, Checkbox | `screenshots/03-spcc-middle-section.png` | UI-VERIFIED |
| Background Neutralization | Lower limit; Upper limit | Numeric alan ve slider | `screenshots/04-spcc-lower-section.png` | UI-VERIFIED |
| Region of Interest | Region of Interest; Left; Top; Width; Height; From Preview | Checkbox, Numeric alan, Button | `screenshots/04-spcc-lower-section.png` | UI-VERIFIED |

## Görülen mevcut değerler

!!! warning "Default değildir"
    Aşağıdaki değerler yalnız ekran görüntüsü alındığı andaki mevcut seçimlerdir. Yeni/resetlenmiş process instance kanıtı bulunmadığından fabrika varsayılanı olarak kullanılamaz.

| UI etiketi | Görülen mevcut değer veya durum | Kanıt | Durum |
|---|---|---|---|
| White reference | Average Spiral Galaxy | `screenshots/02-spcc-upper-section.png` | UI-OBSERVED |
| QE curve | Ideal QE curve | `screenshots/02-spcc-upper-section.png` | UI-OBSERVED |
| Red filter | Sony Color Sensor R-UVIRcut | `screenshots/02-spcc-upper-section.png` | UI-OBSERVED |
| Green filter | Sony Color Sensor G-UVIRcut | `screenshots/02-spcc-upper-section.png` | UI-OBSERVED |
| Blue filter | Sony Color Sensor B-UVIRcut | `screenshots/02-spcc-upper-section.png` | UI-OBSERVED |
| Output directory | &lt;system-temp-dir&gt; | `screenshots/02-spcc-upper-section.png` | UI-OBSERVED |
| Catalog | Gaia DR3/SP | `screenshots/03-spcc-middle-section.png` | UI-OBSERVED |
| Limit magnitude | 12.0; kontrol pasif | `screenshots/03-spcc-middle-section.png` | UI-OBSERVED |
| Detection scales | 5 | `screenshots/03-spcc-middle-section.png` | UI-OBSERVED |
| Saturation threshold | 0.75 | `screenshots/03-spcc-middle-section.png` | UI-OBSERVED |
| Noise scales | 1 | `screenshots/03-spcc-middle-section.png` | UI-OBSERVED |
| Minimum structure size | &lt;Auto&gt; | `screenshots/03-spcc-middle-section.png` | UI-OBSERVED |
| Hot pixel removal | 1 | `screenshots/03-spcc-middle-section.png` | UI-OBSERVED |
| Noise reduction | 0 | `screenshots/03-spcc-middle-section.png` | UI-OBSERVED |
| Minimum detection SNR | 40.0 | `screenshots/03-spcc-middle-section.png` | UI-OBSERVED |
| PSF type | Auto | `screenshots/03-spcc-middle-section.png` | UI-OBSERVED |
| Growth factor | 1.25 | `screenshots/03-spcc-middle-section.png` | UI-OBSERVED |
| Maximum stars | 24576 | `screenshots/03-spcc-middle-section.png` | UI-OBSERVED |
| Lower limit | -2.80 | `screenshots/04-spcc-lower-section.png` | UI-OBSERVED |
| Upper limit | +2.00 | `screenshots/04-spcc-lower-section.png` | UI-OBSERVED |
| ROI Left, Top, Width, Height | Her biri 0 ve pasif | `screenshots/04-spcc-lower-section.png` | UI-OBSERVED |

## Checkbox durumları

| Checkbox | Görülen durum | Kanıt | Sınıf |
|---|---|---|---|
| Narrowband filters mode | İşaretsiz | `screenshots/02-spcc-upper-section.png` | UI-OBSERVED |
| Generate graphs | İşaretli | `screenshots/02-spcc-upper-section.png` | UI-OBSERVED |
| Generate star maps | İşaretsiz | `screenshots/02-spcc-upper-section.png` | UI-OBSERVED |
| Generate text files | İşaretsiz | `screenshots/02-spcc-upper-section.png` | UI-OBSERVED |
| Apply color calibration | İşaretli | `screenshots/02-spcc-upper-section.png` | UI-OBSERVED |
| Automatic limit magnitude | İşaretli | `screenshots/03-spcc-middle-section.png` | UI-OBSERVED |
| Relative saturation threshold | İşaretli | `screenshots/03-spcc-middle-section.png` | UI-OBSERVED |
| Allow clustered sources | İşaretli | `screenshots/03-spcc-middle-section.png` | UI-OBSERVED |
| Background Neutralization | İşaretli | `screenshots/04-spcc-lower-section.png` | UI-OBSERVED |
| Region of Interest | İşaretsiz | `screenshots/04-spcc-lower-section.png` | UI-OBSERVED |

## Açılır listeler, butonlar, tooltip ve console

- Kapalı ComboBox alanlarında yalnız seçili mevcut değer görülür; seçeneklerin tamamı **UI-UNVERIFIED**.
- Görünen buton: `From Preview`; ekran anında pasif. Kanıt: `screenshots/04-spcc-lower-section.png`. Durum: **UI-OBSERVED**.
- Tooltip açık değildir: **UI-UNVERIFIED**.
- Console/log görünmüyor: **UI-UNVERIFIED**.
- Process davranışı bu ekranlardan çıkarılamaz: **DATA-REQUIRED**.

## Açıkça kanıtlanan varsayılan değerler

**Yok (0).** Reset/yeni instance kanıtı sağlanmalıdır.

## Belirsiz kalan noktalar

- Görsellerin PixInsight 1.9.3 içinde alındığını ekran içi sürüm bilgisiyle doğrulama.
- Tüm dropdown seçenekleri ve sensor/filter database kapsamı.
- Görülen seçimlerin kullanıcı tarafından değiştirilip değiştirilmediği.
- Control bağımlılıkları, fallback, query, output ve log davranışı.
- Exact linear/nonlinear kabulü ve narrowband sonucu.

