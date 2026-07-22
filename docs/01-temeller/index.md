# Foundations

!!! info "Sayfa Bilgisi"
    **Kategori:** Foundations · **Düzey:** Beginner · **Tahmini okuma:** 5 dk
    **Anahtar kelimeler:** `foundations` · `astrofotoğraf temelleri` · `görüntü işleme` · `PixInsight temelleri` · `öğrenme yolu`

## Bu konu neden önemlidir?

Bir PixInsight işlemini hangi düğmeyle çalıştıracağını bilmek, doğru kararı vermek için tek başına yeterli değildir. Önce verinin nasıl üretildiğini, sonra görüntü işlemenin veriyi nasıl dönüştürdüğünü ve son olarak PixInsight'ın bu dönüşümleri nasıl yönettiğini ayırmak gerekir. Foundations alanı bu üç bilgi katmanını birbirine karıştırmadan öğretir.

## Üç eğitim domain'i

| Domain | Temel soru | Kapsam | Kapsam dışı |
| --- | --- | --- | --- |
| Astrofotoğraf Temelleri | Veri nasıl oluşur? | Kamera, filtre, signal-to-noise ratio, dynamic range ve çekim planlama | PixInsight process kullanımı |
| Görüntü İşleme Temelleri | Sayısal görüntü nasıl değişir? | Linear/nonlinear durum, histogram, signal, noise, stretch, gradient ve mask kavramları | Belirli process için parametre reçetesi |
| PixInsight Temelleri | Yazılım bu veriyi nasıl temsil eder ve yönetir? | Workspace, image view, Preview, STF, History Explorer ve process instance davranışı | Hedefe özel astrofotoğraf reçetesi |

```mermaid
flowchart LR
    astro["Astrofotoğraf"] --> image["Görüntü işleme"]
    image --> pix["PixInsight"]
    pix --> process["Process rehberleri"]
    process --> workflow["Uygulamalı iş akışları"]
    workflow --> trouble["Sorun giderme"]
```

## Temel kavram

Bu rehber dört farklı sayfa türünü farklı sorulara ayırır:

- **Concept page:** “Bu nedir?”
- **Process page:** “Yazılımda nasıl kullanılır?”
- **Workflow page:** “Hangi durumda ve hangi sırayla kullanılır?”
- **Troubleshooting page:** “Ne yanlış gitti ve nasıl teşhis edilir?”

Bir foundations sayfası process arayüzünü yeniden anlatmaz. İlgili process'e bağlanır ve kavramsal ön bilgiyi sağlar.

## Pratikte nasıl görünür?

Örneğin zayıf bir sinyali değerlendirirken öğrenme yolu şöyledir:

1. [SNR ve Dinamik Aralık](snr-ve-dinamik-aralik.md) ile verinin sınırlarını anlayın.
2. [NoiseXTerminator](../06-ai-eklentileri/noisexterminator.md) sayfasında ilgili yazılım aracının kapsamını inceleyin.
3. [Veri Kalitesi ve Entegrasyon Stratejileri](../15-workflows/data-quality-strategies.md) ile işlemin akış içindeki yerini belirleyin.
4. Sonuç beklenmedikse [Hata Kütüphanesi](../14-hata-kutuphanesi/index.md) üzerinden belirtiye göre ilerleyin.

## Yaygın kavram yanılgıları

- Bir process'in menü yolunu bilmenin teoriyi anlamakla aynı olduğunu düşünmek.
- STF ile ekranda görünür hale gelen veriyi kalıcı stretch uygulanmış veri sanmak.
- Zayıf signal sorununu yalnız noise reduction parametresiyle çözmeye çalışmak.
- Calibration, gradient correction ve stretch aşamalarını birbirinin alternatifi kabul etmek.

## Tipik başlangıç hataları

- Kamera ve filtre koşullarını kaydetmeden işlem reçetesi aramak.
- Linear/nonlinear durumu doğrulamadan process uygulamak.
- Concept, process ve workflow sayfalarındaki önerilerin kanıt düzeyini ayırmamak.
- Sorun giderme sayfasına geçmeden önce expected output tanımlamamak.

## İlgili PixInsight kavramları

- [PixInsight Temelleri](../02-pixinsight-temelleri/index.md)
- [Workspace](../02-pixinsight-temelleri/workspace.md)
- [ScreenTransferFunction](../02-pixinsight-temelleri/stf.md)
- [Histogram ve HistogramTransformation](../02-pixinsight-temelleri/histogram.md)
- [Preview, Clone ve History Explorer](../02-pixinsight-temelleri/preview-clone-history.md)

## Nereden devam edilmeli?

Yeni başlayanlar şu sırayı izlemelidir:

1. [CMOS ve Monokrom Kamera](cmos-ve-monokrom-kamera.md)
2. [Filtreler](filtreler.md)
3. [SNR ve Dinamik Aralık](snr-ve-dinamik-aralik.md)
4. [Çekim Planlama](cekim-planlama.md)
5. [Histogram ve Tonal Dönüşüm](../02-pixinsight-temelleri/histogram.md)
6. [PixInsight Temelleri](../02-pixinsight-temelleri/index.md)
7. [Calibration Pipeline](../03-kalibrasyon/calibration-pipeline.md)

## Önceki Bölüm

[← Hızlı Referans](../quick-reference.md)

## Sonraki Bölüm

[CMOS ve Monokrom Kamera →](cmos-ve-monokrom-kamera.md)
