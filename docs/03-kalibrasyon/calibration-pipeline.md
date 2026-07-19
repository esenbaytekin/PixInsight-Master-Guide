# Calibration Pipeline

**Durum: Tamamlandı — Faz 1B**

## Amaç

Ham frame’den lineer master image’a uzanan yaşam döngüsünü ana referans olarak açıklamak.

!!! note "Kapsam"
    PixInsight 1.9.3 hedeflenir; kurulu build’in process documentation ve console logu nihai doğrulama kaynağıdır.

## Teori

### Calibration Pipeline Nedir?\n\nCalibration Pipeline; acquisition kaynaklı sistematik bileşenleri düzeltir, kusurları giderir, frame’leri ortak geometry’ye taşır ve istatistiksel olarak birleştirir.\n\n### Lineer veri kavramı\n\nLineer data’da sinyal nonlinear stretch ile değiştirilmemiştir. ScreenTransferFunction yalnız display’i etkiler.\n\n### Ham görüntünün yaşam döngüsü\n\n| Aşama | Amaç | Girdi | Çıktı | Sonraki adım |\n| --- | --- | --- | --- | --- |\n| RAW | Ölçümü korumak | Light ve calibration frames | Gruplandırılmış data | Metadata calibration’ı belirler |\n| Calibration | Bias, dark ve flat düzeltmesi | RAW + masters | Calibrated lights | Kusur kontrolü |\n| Cosmetic Correction | Kalan defect’leri düzeltmek | Calibrated lights | Cosmetized lights | Star detection |\n| Star Alignment | Ortak geometry | Cosmetized lights | Registered lights | Pixel stacks |\n| Local Normalization | Frame uyumluluğu | Registered lights | Normalization data | Rejection |\n| Image Integration | SNR ve outlier rejection | Registered stack | Master + maps | Post-processing |

```mermaid
flowchart LR
 RAW["RAW"] --> CAL["Calibration"]
 CAL --> CC["Cosmetic Correction"]
 CC --> SA["Star Alignment"]
 SA --> LN["Local Normalization"]
 LN --> II["Image Integration"]
 II --> MASTER["Master Image"]
```

!!! info "Lineer veri"
    Bu pipeline nonlinear stretch uygulamaz. Ara sonuçları görmek için ScreenTransferFunction kullanılır.

## Ne zaman kullanılır?

- Ham veya kalibre edilmiş frame setini ilgili pipeline aşamasında işlerken.
- Süreci yeniden üretilebilir parametreler ve loglarla yürütürken.
- Bir artefact’ın kök aşamasını ayırırken.

## Ne zaman kullanılmaz?

- Input metadata ve aşama durumu bilinmiyorsa.
- Nonlinear post-processing yerine kullanmak için.

!!! warning "Doğrulama sınırı"
    Kamera modeline veya script build’ine bağlı ayrıntılar test edilmeden genellenmez. Belirsiz ayrıntı: **Doğrulama bekliyor**.

## Menü yolu

Process arama alanında `Calibration`; WBPP için `Script > Batch Processing > WeightedBatchPreprocessing`. Kesin menü grubu kurulu 1.9.3 arayüzünden doğrulanmalıdır.

## Parametreler

| Parametre / kontrol | Açıklama |
| --- | --- |
| Input grouping | Frame type ve acquisition metadata |
| Reference policy | Registration ve normalization için kalite ölçütü |
| Auxiliary data | LocalNormalization ve drizzle dosyaları |
| Validation | Her aşamada sample QA ve log |

!!! tip "Parametre politikası"
    Evrensel preset yerine metadata, sample test, log ve maps birlikte değerlendirilir.

## Adım adım kullanım

1. RAW dosyaları değiştirmeden arşivleyin.
2. Metadata gruplarını belgeleyin.
3. Masters üretin veya doğrulayın.
4. ImageCalibration sample test yapın.
5. Kalan defect’leri düzeltin.
6. StarAlignment sonucu ve köşeleri inceleyin.
7. Gerekirse LocalNormalization üretin.
8. ImageIntegration ve rejection maps QA yapın.

## Gerçek kullanım senaryosu

!!! example "Saha örneği"
    Üç gecelik Ha seti matching masters ile calibrate edilir. Sabit defect’ler düzeltilir, tek kaliteli reference’a register edilir. Geceler arası arka plan farkı LN ile modellenir ve rejection maps temizse master kabul edilir.

## Beklenen çıktı

Lineer Master Image, rejection maps, loglar ve seçime bağlı normalization/drizzle yardımcıları.

## Sık yapılan hatalar

1. RAW üzerine yazmak
2. Kalite kapılarını atlamak
3. Masters metadata’sını bilmemek
4. LocalNormalization’ı DBE sanmak
5. Drizzle data üretimini DrizzleIntegration sanmak

## Sorun giderme

| Belirti | İlk kontrol | Eylem |
| --- | --- | --- |
| Output beklenmedik | Input metadata ve target | İlk başarısız aşamayı sample frame ile tekrarlayın |
| Artefact tüm frame’lerde | Calibration/master zinciri | Eşleşmeleri ve logu inceleyin |
| Artefact yalnız master’da | Registration/normalization/rejection | Maps ve residual’ları inceleyin |
| Data clipped | Statistics ve pedestal | Önceki aşamaya dönün |
| Process başarısız | Console log | İlk hata mesajını çözün |

## SSS

??? question "RAW ne demek?"
    İşlenmemiş light ve calibration frame yaşam döngüsünü ifade eder.

??? question "CosmeticCorrection ne zaman?"
    Calibration sonrası kalan sabit defect’ler için.

??? question "LN gradient giderir mi?"
    Bir DBE işlemi değildir; integration uyumluluğu sağlar.

??? question "Registration rejection yapar mı?"
    Hayır.

??? question "Master neden karanlık?"
    Lineerdir; STF ile görüntülenir.

## Quick Reference

!!! tip "Tek sayfalık kontrol listesi"
    - [ ] Input metadata doğrulandı
    - [ ] Lineerlik korundu
    - [ ] Sample-frame QA geçti
    - [ ] Log incelendi
    - [ ] Yardımcı maps incelendi

## Decision Tree

```mermaid
flowchart TD
 A[RAW] --> B[ImageCalibration]\n B --> C{Sabit defect kaldı mı?}\n C -- Evet --> D[CosmeticCorrection]\n C -- Hayır --> E[StarAlignment]\n D --> E\n E --> F{LN gerekli mi?}\n F -- Evet --> G[LocalNormalization]\n F -- Hayır --> H[ImageIntegration]\n G --> H\n H --> I[Linear Master Image]
```

## İlgili bölümler

- [Bölüm ana sayfası](index.md)
- [WBPP](wbpp.md)
- [ImageCalibration](image-calibration.md)
- [StarAlignment](star-alignment.md)
- [ImageIntegration](image-integration.md)

