# PCC UI Notları

## Doğrulanan kimlik

- Process adı: `PhotometricColorCalibration`  
  Kanıt: `screenshots/07-spcc-process-menu-location.png`  
  Durum: **UI-VERIFIED**
- Menü yolu: `Process → ColorCalibration → PhotometricColorCalibration`  
  Kanıt: `screenshots/07-spcc-process-menu-location.png`  
  Durum: **UI-VERIFIED**
- PixInsight sürümü: klasör `pi-1.9.3` olarak sınıflandırılmış, fakat ekran içinde sürüm okunmuyor.  
  Durum: **UI-PARTIAL**

## Section başlıkları

| Section | Kanıt | Durum |
|---|---|---|
| Calibration | `screenshots/01-full-interface.png` | UI-VERIFIED |
| Catalog Search | `screenshots/01-full-interface.png` | UI-VERIFIED |
| Signal Evaluation | `screenshots/01-full-interface.png` | UI-VERIFIED |
| Background Neutralization | `screenshots/01-full-interface.png` | UI-VERIFIED |
| Region of Interest | `screenshots/01-full-interface.png` | UI-VERIFIED |

## Kontrol grupları

| Section | Doğrulanan etiketler | Kontrol tipleri | Kanıt |
|---|---|---|---|
| Calibration | White reference; Generate graphs; Generate star maps; Generate text files; Output directory; Apply color calibration | ComboBox, Checkbox, Directory alanı | `screenshots/01-full-interface.png` |
| Catalog Search | Automatic catalog; Catalog; VizieR server; Automatic limit magnitude; Limit magnitude | Checkbox, ComboBox, Numeric alan | `screenshots/01-full-interface.png` |
| Signal Evaluation | Detection scales; Saturation threshold; Relative saturation threshold; Noise scales; Minimum structure size; Hot pixel removal; Noise reduction; Minimum detection SNR; PSF type; Growth factor; Maximum stars; Allow clustered sources | Numeric alan, slider, Checkbox, seçim alanı, ComboBox | `screenshots/01-full-interface.png` |
| Background Neutralization | Background Neutralization; Lower limit; Upper limit | Checkbox, Numeric alan, slider | `screenshots/01-full-interface.png` |
| Region of Interest | Region of Interest; Left; Top; Width; Height; From Preview | Checkbox, Numeric alan, Button | `screenshots/01-full-interface.png` |

## Açık dropdown seçenekleri

`VizieR server` listesinde gerçekten görülen seçenekler:

1. `CDS Strasbourg, France`
2. `ADAC Tokyo, Japan`
3. `IUCAA Pune, India`
4. `INASAN Moscow, Russia`
5. `NAOC Beijing, China`
6. `CFA Harvard, Cambridge, USA`
7. `IDIA, South Africa`

Kanıt: `screenshots/04-dropdown-open.png`. Durum: **UI-VERIFIED**. Bu liste başka dropdown alanlarının seçeneklerini kanıtlamaz.

## Görülen mevcut değerler

!!! warning "Default değildir"
    Processin yeni veya resetlenmiş olduğu görünmüyor. Aşağıdaki kayıtlar yalnız ekran anındaki mevcut değerlerdir.

| Etiket | Görülen mevcut değer/durum | Durum |
|---|---|---|
| White reference | Average Spiral Galaxy | UI-OBSERVED |
| Generate graphs / star maps / text files | İşaretli / işaretsiz / işaretsiz | UI-OBSERVED |
| Output directory | &lt;system-temp-dir&gt; | UI-OBSERVED |
| Apply color calibration | İşaretli | UI-OBSERVED |
| Automatic catalog | İşaretli | UI-OBSERVED |
| Catalog | APASS DR9 (VizieR), pasif | UI-OBSERVED |
| VizieR server | CDS Strasbourg, France | UI-OBSERVED |
| Automatic limit magnitude | İşaretli | UI-OBSERVED |
| Limit magnitude | 12.0, pasif | UI-OBSERVED |
| Detection scales | 5 | UI-OBSERVED |
| Saturation threshold | 0.74 | UI-OBSERVED |
| Relative saturation threshold | İşaretli | UI-OBSERVED |
| Noise scales / Hot pixel removal / Noise reduction | 1 / 1 / 0 | UI-OBSERVED |
| Minimum structure size / PSF type | &lt;Auto&gt; / Auto | UI-OBSERVED |
| Minimum detection SNR / Growth factor / Maximum stars | 40.0 / 1.25 / 24576 | UI-OBSERVED |
| Allow clustered sources | İşaretli | UI-OBSERVED |
| Background Neutralization | İşaretli | UI-OBSERVED |
| Lower limit / Upper limit | -2.80 / +2.00 | UI-OBSERVED |
| Region of Interest | İşaretsiz | UI-OBSERVED |
| Left / Top / Width / Height | Her biri 0 ve pasif | UI-OBSERVED |
| From Preview | Pasif | UI-OBSERVED |

## Kanıtlanmayan bilgiler

- Default değerler: **UI-UNVERIFIED**; doğrulanan default sayısı 0.
- Tooltip metinleri: **UI-UNVERIFIED**.
- Console/log metinleri: **UI-UNVERIFIED**.
- Linear/nonlinear kabulü, catalog query, astrometry, output ve calibration davranışı: **DATA-REQUIRED**.
- Kontrollerin algoritmik anlamı ve sürüme özgü davranışı: **DOC-REQUIRED**.

