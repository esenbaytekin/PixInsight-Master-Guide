# ImageIntegration

**Durum: Tamamlandı — Faz 1B**

## Amaç

Registered frames’i combination, normalization, weighting ve pixel rejection ile lineer master’da birleştirmek.

!!! note "Kapsam"
    PixInsight 1.9.3 hedeflenir; kurulu build’in process documentation ve console logu nihai doğrulama kaynağıdır.

## Teori

Her output koordinatında pixel stack kurulur; normalization ve weights sonrası outlier rejection uygulanır.

| Yöntem | Rol | Sınır |
| --- | --- | --- |
| Average | Verimli birleşim | Outlier rejection gerekir |
| Median | Robust merkez | Average kadar SNR verimli değildir |
| Winsorized Sigma Clipping | Uç etkisini sınırlar ve sigma clipping yapar | Yeterli frame ve threshold QA |
| Linear Fit Clipping | Linear fit tabanlı rejection | Stack uygunluğu gerekir |
| ESD / Generalized ESD | Extreme outlier istatistik testi | 1.9.3 implementation help ile doğrulanmalı |
| Percentile Clipping | Sıralı uç yüzdeleri reddeder | Küçük sette veri kaybı |

```mermaid
flowchart LR
    frames["Registered frames"] --> normalization["Normalization"]
    normalization --> weighting["Weighting"]
    weighting --> rejection["Pixel rejection"]
    rejection --> combination["Combination"]
    combination --> outputs["Master ve rejection maps"]
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

+!!! warning "Doğrulama durumu"
    Bu davranışların PixInsight 1.9.3 arayüzünde ve ilgili process veya script sürümünde doğrulanması gerekiyor.

### Teknik doğrulama sınıflandırması

| Sınıf | İfade grubu | İnceleme işlemi |
| --- | --- | --- |
| A | Integration register edilmiş pixel stack’leri birleştirir. | Kalabilir. |
| B | Algoritma adları, seçenekleri, varsayılanları ve output maps’in 1.9.3 davranışı. | Doğrulama bekliyor. |
| C | Frame sayısına göre rejection/weight seçimi. | Veri setine bağlıdır; kesin eşik verilmez. |
| D | Average–Median verim farkı ve rejection algoritmalarının istatistiksel davranışı. | Birincil kaynak ve kontrollü test gerekir. |


## Menü yolu

`Process > ImageIntegration > ImageIntegration`

Process adı ve bu menü yolu UI ekranında doğrudan okunmuştur. Ayrıntılı kayıt repository içindeki `validation/ui/pi-1.9.3/image-integration/image-integration-evidence-matrix.md` dosyasındadır. WBPP yolu bu UI kanıt setinin kapsamında değildir.

!!! warning "UI doğrulama sınırı"
    Mevcut görseller reset/new instance, tooltip, console veya ekran içi PixInsight sürümü göstermiyor. Seçimler default sayılmamalı; integration algoritmaları ve output davranışı ayrıca doğrulanmalıdır.

## Parametreler

| Parametre / kontrol | Açıklama |
| --- | --- |
| Combination | Average veya Median |
| Normalization | Calibration masters ve lights için farklı politika |
| Weighting | PSF/SNR/noise/keyword temelli |
| Rejection normalization | Stack uyumluluğu |
| Rejection algorithm | Frame sayısı ve dağılıma göre |
| Rejection Maps | Low/high audit |
| Weight Maps | Katkı denetimi; seçeneğe bağlı |
| Output files | Master, maps ve log |

UI kanıtı `Input Images`, `Format Hints`, `Image Integration`, `Pixel Rejection (1)`, `Pixel Rejection (2)`, `Large-Scale Pixel Rejection`, `Signal and Noise Evaluation` ve `Region of Interest` section başlıklarını doğrular. `Combination`, `PSF type`, `Noise estimator`, `Normalization`, `Rejection algorithm` ve `Weights` açık listelerindeki 40 görünür seçenek evidence matrix içinde tekil kaydedilmiştir; algoritmik anlamları statik ekran görüntülerinden çıkarılmamıştır.

!!! tip "Parametre politikası"
    Evrensel preset yerine metadata, sample test, log ve maps birlikte değerlendirilir.

## Adım adım kullanım

1. Inputs’ın register ve homojen olduğunu doğrulayın.
2. Combination ve normalization seçin.
3. Weights’i ölçümlerle doğrulayın.
4. Frame sayısına uygun rejection seçin.
5. Low/high maps üretin.
6. Test integration çalıştırın.
7. Maps’te gerçek sinyal reddini ve transient outlier’ları inceleyin.
8. Ayarlarla logu master yanında saklayın.

## Gerçek kullanım senaryosu

!!! example "Saha örneği"
    Otuz Ha frame Average ve ölçüm temelli weights ile birleştirilir. Winsorized Sigma Clipping high map’te uydu izlerini göstermeli, nebula filamentlerini sistematik reddetmemelidir.

## Beklenen çıktı

Lineer integrated master; low/high rejection maps; seçime bağlı weight/slope/auxiliary maps ve log.

## Sık yapılan hatalar

1. Register edilmemiş lights kullanmak
2. Her veri türüne aynı normalization
3. Frame sayısını göz ardı etmek
4. Maps üretmemek
5. Gerçek sinyali aggressive reject etmek

## Sorun giderme

| Belirti | İlk kontrol | Eylem |
| --- | --- | --- |
| Output beklenmedik | Input metadata ve target | İlk başarısız aşamayı sample frame ile tekrarlayın |
| Artefact tüm frame’lerde | Calibration/master zinciri | Eşleşmeleri ve logu inceleyin |
| Artefact yalnız master’da | Registration/normalization/rejection | Maps ve residual’ları inceleyin |
| Data clipped | Statistics ve pedestal | Önceki aşamaya dönün |
| Process başarısız | Console log | İlk hata mesajını çözün |

## SSS

??? question "Average mı Median mı?"
    Amaç ve stack’e bağlıdır; Average uygun rejection ile verimlidir.

??? question "Winsorized ne yapar?"
    Uç örneklerin statistics etkisini sınırlar.

??? question "ESD nedir?"
    Generalized Extreme Studentized Deviate outlier test ailesidir.

??? question "Weighting kötü frame’i düzeltir mi?"
    Hayır.

??? question "Map’te yıldız normal mi?"
    Sistematik yıldız izi misregistration veya aşırı rejection gösterebilir.

??? question "Master neden lineer?"
    Integration stretch uygulamaz.

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
    start["Master sorunlu"] --> signalq{"Rejection map gerçek sinyal içeriyor mu?"}
    signalq -- "Evet" --> signalcheck["Normalization, alignment ve eşikleri kontrol et"]
    signalq -- "Hayır" --> outlierq{"Master içinde outlier kaldı mı?"}
    outlierq -- "Evet" --> rejectcheck["Rejection yöntemini veri setinde test et"]
    outlierq -- "Hayır" --> snrq{"SNR beklenenden düşük mü?"}
    snrq -- "Evet" --> weightcheck["Input kalite ve weights değerlerini kontrol et"]
    snrq -- "Hayır" --> accept["Master kabul kontrolüne geç"]
```

## İlgili bölümler

- [Pipeline](calibration-pipeline.md)
- [WBPP](wbpp.md)
- [StarAlignment](star-alignment.md)
- [DBE](../04-gradient/dbe.md)
