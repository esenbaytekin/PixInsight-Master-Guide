# ChannelCombination

!!! info "Sayfa Bilgisi"
    **Kategori:** LRGB · **Düzey:** Advanced · **Tahmini okuma:** 3 dk
    **Anahtar kelimeler:** `ChannelCombination` · `Channel Combination` · `LRGB` · `luminance`
    **Önerilen ön bilgiler:** [Renk Kalibrasyonu](../05-color-calibration/index.md) · [HistogramTransformation](../07-stretch/histogram-transformation.md)

## Amaç

Ayrı monochrome görüntüleri RGB veya seçilen color space kanallarına açık eşleme ile birleştirmek; broadband RGB ve narrowband SHO/HOO başlangıç görüntüsü üretmektir.

## Kuramsal Arka Plan ve sezgisel açıklama

Her output channel, seçilen input image’ın aynı koordinattaki pixel değerini alır. Process channel mapping yapar; exposure matching, normalization, SPCC veya continuum subtraction’ı kendiliğinden çözmez.

## Giriş Gereksinimleri ve iş akışı position

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

## Doğrusal ve doğrusal olmayan combination

| State | Avantaj | Risk |
|---|---|---|
| Linear | SPCC ve ortak stretch için temiz başlangıç | Kanallar normalize değilse cast |
| Nonlinear | Önceden ayrı stretch edilmiş mapping | Tonal eşleşme ve clipping zorlaşır |

## Pratik Karar Rehberi

| Durum | Öneri | Gerekçe |
|---|---|---|
| Broadband RGB | ChannelCombination | Basit ve izlenebilir mapping |
| SHO/HOO başlangıcı | ChannelCombination | Mapping açıkça belgelenir |
| Weighted/synthetic channel | PixelMath | Coefficient kontrolü gerekir |
| Channel replacement | ChannelCombination veya PixelMath | Replace kapsamına göre |
| Masked blend | PixelMath | Spatial seçim gerekir |

## Uygulama ve çıktı

1. Dimensions/registration ve image state’i doğrulayın.
2. R, G, B identifier’larını açıkça kaydedin.
3. Yeni output oluşturun; channel histogramlarını kontrol edin.
4. Broadband ise SPCC’ye, narrowband ise mapping/color diagnostics’e geçin.

Beklenen output doğru channel mapping’e sahip, clipping üretmemiş color image’dır.

## Yaygın Hatalar ve sorun giderme

| Belirti | Neden | Düzeltme |
|---|---|---|
| Tamamen yanlış renk | Channel mapping ters | Identifier’ları tek tek görüntüle |
| Dimension mismatch | Crop/registration farklı | Aynı geometry üret |
| Color cast | Scale/gradient farklı | Kanalları normalize ve gradient kontrol et |
| Black channel | Yanlış/boş identifier | Source image ve channel enable kontrolü |
| Harsh color noise | Düşük SNR channel | Integration/NXT ve weighting’e dön |

## Avantajlar, sınırlamalar ve En İyi Uygulamalar

Basitliği ana avantajdır; conditional veya weighted blend yapmaması ana sınırdır. Process icon ve output identifier’ı saklayın. SHO/HOO mapping’i “doğal color” olarak adlandırmayın.

## Teknik Doğrulama Durumu

| Alan | Durum |
| --- | --- |
| Hedeflenen PixInsight Sürümü | 1.9.3 |
| Teknik İnceleme Durumu | Kısmen Doğrulandı |
| Resmî Kaynak Kontrolü | Kısmi |
| İş Akışı Tutarlılığı | Doğrulandı |
| Kanıt Düzeyi İncelemesi | Güncellendi |
| Son Teknik İnceleme | Phase 6.4 |

Canlı PixInsight uygulama testi yapılmadı. UI ekran kanıtı, statik ifade/iş akışı incelemesi ve yayımlanmış birincil kaynak kontrolü birbirinin yerine kullanılmamıştır.

## İlgili Süreçler

- [LRGB teorisi](index.md)
- [LRGBCombination](lrgb-combination.md)
- [Kanal karışımları](../10-pixelmath/kanal-karisimlari.md)
- [SPCC](../05-color-calibration/spcc.md)

## İlgili İş Akışları

- [LRGB Galaksi](../15-workflows/lrgb-galaxy.md)
- [LRGB + Ha Galaksi](../15-workflows/lrgb-ha-galaxy.md)
- [M31 LRGB + Ha](../20-uygulamalar/m31-lrgb-ha/index.md)

## İlgili Sorun Giderme Başlıkları

- [ChannelCombination RGB Hatası](../14-hata-kutuphanesi/channel-combination-rgb-error.md)

## Önceki Bölüm

[← LRGB](index.md)

## Sonraki Bölüm

[Luminance Hazırlama →](luminance-hazirlama.md)
