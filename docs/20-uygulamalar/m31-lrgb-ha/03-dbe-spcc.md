# M31: Gradient ve Broadband Renk

!!! info "Sayfa Bilgisi"
    **Kategori:** Proje İş Akışı · **Düzey:** Advanced · **Tahmini okuma:** 7 dk
    **Anahtar kelimeler:** `M31 DBE` · `SPCC` · `gradient` · `galaksi halo` · `broadband color`

## Amaç

Gerçek galaksi halo'sunu background modeliyle karıştırmadan büyük ölçekli istenmeyen varyasyonu düzeltmek ve yalnız doğrulanmış broadband girdide color calibration yapmak.

## Başlamadan önce

Görüntü lineer, crop kararı verilmiş ve master artefaktları çözülmüş olmalıdır. SPCC için gerekli astrometric/photometric koşullar [SPCC ön koşullarında](../../05-color-calibration/spcc-prerequisites.md) doğrulanır.

## Karar noktaları

1. Galaksi dışındaki background alanlarını ve halo sınırını STF ile farklı görüntü ölçeklerinde inceleyin.
2. Basit, düzenli model yeterliyse [ABE](../../04-gradient/abe.md); kontrollü sample gerekiyorsa [DBE](../../04-gradient/dbe.md) seçin.
3. Model image galaksiye, dust lane'e veya yıldız halo'larına benziyorsa düzeltmeyi uygulamayın; sample'ları ve model karmaşıklığını azaltın.
4. Additive ışık kirliliği varsayımında subtraction; flat-benzeri multiplicative sorun kanıtlandıysa division değerlendirilir. Seçim görünüşe göre değil neden modeline göre yapılır.
5. Renk kalibrasyonunu gradient residual ve metadata sorunu çözülmeden çalıştırmayın.

| Kapı | Beklenen | Aşırı işlem işareti | Düzeltme |
|---|---|---|---|
| Background model | Yumuşak istenmeyen varyasyon | Modelde M31 yapısı | Sample/modeli yeniden kur |
| Corrected master | Halo ve dust sürekliliği | Siyah çukur veya parlama | Correction varsayımını gözden geçir |
| SPCC | Tutarlı yıldız rengi | Çözüm/metadata hatası | Astrometry, filter ve white reference kontrolü |

## Alternatif yollar

Gradient küçük ve sonuç belirsizse işlem atlanabilir. Geniş M31 halo'su nedeniyle güvenilir sample alanı yoksa daha basit model veya gradient düzeltmesiz kontrollü karşılaştırma, agresif DBE'den daha güvenlidir.

## Sorun giderme

- Model galaksiye benziyor: gerçek sinyal sample/model içine girmiştir.
- Background siyah: subtraction veya pedestal/black point birlikte aşırı olabilir.
- SPCC sonucu beklenmedik: gradient, plate solution ve filter metadata'yı ayrı doğrulayın.

## Ne zaman durmalı?

Model yalnız istenmeyen büyük ölçekli yapıyı temsil ediyor, corrected image'da halo sürekliliği korunuyor ve broadband color calibration tekrarlanabilir ise ilerleyin.

## Görsel kanıt planı

STF öncesi/sonrası, sample haritası, model image, corrected image, SPCC öncesi/sonrası yıldız crop'u.

## Önceki / Sonraki

[← WBPP](02-wbpp.md) · [BlurX ve NoiseX →](04-blurx-noisex.md)
