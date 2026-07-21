# BackgroundNeutralization UI Notları

## Doğrulanan kimlik

- Process adı: `BackgroundNeutralization`  
  Kanıt: `screenshots/03-spcc-middle-section.png`  
  Durum: **UI-VERIFIED**
- Menü yolu: `Process → ColorCalibration → BackgroundNeutralization`  
  Kanıt: `screenshots/03-spcc-middle-section.png`  
  Durum: **UI-VERIFIED**
- PixInsight sürümü: klasör `pi-1.9.3` olarak sınıflandırılmış, fakat ekran içinde sürüm okunmuyor.  
  Durum: **UI-PARTIAL**

## Section ve kontroller

| Section | Etiketler | Kontrol tipleri | Kanıt | Durum |
|---|---|---|---|---|
| Main | Reference image; Lower limit; Upper limit; Working mode; Target background | Image reference alanı, Numeric alan, slider, ComboBox | `screenshots/01-spcc-full-interface.png` | UI-VERIFIED |
| Region of Interest | Region of Interest; Left; Top; Width; Height; From Preview | Checkbox, Numeric alan, Button | `screenshots/01-spcc-full-interface.png` | UI-VERIFIED |

## Açık Working mode seçenekleri

1. `Target Background`
2. `Rescale`
3. `Rescale as needed`
4. `Truncate`

Kanıt: `screenshots/07-spcc-process-menu-location.png`. Durum: **UI-VERIFIED**. Bu gözlem seçenek adlarını kanıtlar; algoritmik anlamlarını veya output etkisini kanıtlamaz.

## Görülen mevcut değerler

!!! warning "Default değildir"
    Processin yeni veya resetlenmiş olduğu görünmüyor. Aşağıdaki değerler yalnız ilgili ekran anını gösterir.

| Etiket | Görülen mevcut değer/durum | Kanıt | Durum |
|---|---|---|---|
| Reference image | Boş | `screenshots/01-spcc-full-interface.png` | UI-OBSERVED |
| Reference image | &lt;target image&gt; | `screenshots/07-spcc-process-menu-location.png` | UI-OBSERVED |
| Lower limit | 0.0000000 | `screenshots/01-spcc-full-interface.png` | UI-OBSERVED |
| Upper limit | 0.1000000 | `screenshots/01-spcc-full-interface.png` | UI-OBSERVED |
| Working mode | Rescale as needed | `screenshots/01-spcc-full-interface.png` | UI-OBSERVED |
| Target background | 0.0010000; pasif | `screenshots/01-spcc-full-interface.png` | UI-OBSERVED |
| Region of Interest | İşaretsiz | `screenshots/01-spcc-full-interface.png` | UI-OBSERVED |
| Left / Top / Width / Height | Her biri 0 ve pasif | `screenshots/01-spcc-full-interface.png` | UI-OBSERVED |
| From Preview | Pasif | `screenshots/01-spcc-full-interface.png` | UI-OBSERVED |

## Kanıtlanmayan bilgiler

- Default değerler: **UI-UNVERIFIED**; doğrulanan default sayısı 0.
- Tooltip ve console/log: **UI-UNVERIFIED**.
- Range, clipping, neutralization ve output davranışı: **DATA-REQUIRED**.
- Exact statistics ve `Working mode` seçeneklerinin algoritmik anlamı: **DOC-REQUIRED**.
- Exact linear/nonlinear kabulü: gerçek veri ve birincil kaynak gerektirir.

