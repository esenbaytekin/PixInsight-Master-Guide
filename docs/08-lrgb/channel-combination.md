# ChannelCombination

## Purpose

Ayrı monochrome görüntüleri RGB veya seçilen color space kanallarına açık eşleme ile birleştirmek; broadband RGB ve narrowband SHO/HOO başlangıç görüntüsü üretmektir.

## Theory ve intuition

Her output channel, seçilen input image’ın aynı koordinattaki pixel değerini alır. Process channel mapping yapar; exposure matching, normalization, SPCC veya continuum subtraction’ı kendiliğinden çözmez.

## Input requirements ve workflow position

Inputs aynı dimensions, registration, crop, bit depth/image state ve açıklanabilir intensity scale’e sahip olmalıdır. Broadband lineer RGB, ChannelCombination sonrası SPCC’ye gider. Narrowband mapping color-calibration değil temsil seçimidir.

## Ne zaman kullanılır / kullanılmaz?

RGB/SHO/HOO’nun doğrudan ve okunabilir mapping’i için kullanılır. Weight, mask, selective replacement veya karmaşık normalization gerektiğinde [PixelMath](../10-pixelmath/index.md) tercih edilir. Dimension/channel mismatch veya farklı stretch state’leri düzeltilmeden kullanılmaz.

## Parameters ve typical settings

| Kontrol | Amaç | Risk |
|---|---|---|
| Color space | Output channel modelini seçer | Yanlış model beklenmeyen channel üretir |
| R/G/B source | Input identifier eşleme | Yanlış mapping false color üretir |
| Channel enable | Kanalı dahil/replace etme | Eksik output veya eski kanalın kalması |
| Create/replace target | Yeni image veya mevcut target | Orijinali istemeden değiştirme |

Typical setting, her channel için doğru image identifier ve yeni output oluşturmadır; weight gerekiyorsa processin desteklemediği davranış varsayılmaz.

## Linear vs nonlinear combination

| State | Avantaj | Risk |
|---|---|---|
| Linear | SPCC ve ortak stretch için temiz başlangıç | Kanallar normalize değilse cast |
| Nonlinear | Önceden ayrı stretch edilmiş mapping | Tonal eşleşme ve clipping zorlaşır |

## Practical Decision Guide

| Situation | Recommendation | Why |
|---|---|---|
| Broadband RGB | ChannelCombination | Basit ve izlenebilir mapping |
| SHO/HOO başlangıcı | ChannelCombination | Mapping açıkça belgelenir |
| Weighted/synthetic channel | PixelMath | Coefficient kontrolü gerekir |
| Channel replacement | ChannelCombination veya PixelMath | Replace kapsamına göre |
| Masked blend | PixelMath | Spatial seçim gerekir |

## Application ve output

1. Dimensions/registration ve image state’i doğrulayın.
2. R, G, B identifier’larını açıkça kaydedin.
3. Yeni output oluşturun; channel histogramlarını kontrol edin.
4. Broadband ise SPCC’ye, narrowband ise mapping/color diagnostics’e geçin.

Beklenen output doğru channel mapping’e sahip, clipping üretmemiş color image’dır.

## Common mistakes ve troubleshooting

| Belirti | Neden | Düzeltme |
|---|---|---|
| Tamamen yanlış renk | Channel mapping ters | Identifier’ları tek tek görüntüle |
| Dimension mismatch | Crop/registration farklı | Aynı geometry üret |
| Color cast | Scale/gradient farklı | Kanalları normalize ve gradient kontrol et |
| Black channel | Yanlış/boş identifier | Source image ve channel enable kontrolü |
| Harsh color noise | Düşük SNR channel | Integration/NXT ve weighting’e dön |

## Advantages, limitations ve best practices

Basitliği ana avantajdır; conditional veya weighted blend yapmaması ana sınırdır. Process icon ve output identifier’ı saklayın. SHO/HOO mapping’i “doğal color” olarak adlandırmayın.

## Related processes

- [LRGB teorisi](index.md)
- [LRGBCombination](lrgb-combination.md)
- [Kanal karışımları](../10-pixelmath/kanal-karisimlari.md)
- [SPCC](../05-color-calibration/spcc.md)
