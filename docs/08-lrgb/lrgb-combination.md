# LRGBCombination

!!! info "Sayfa Bilgisi"
    **Kategori:** LRGB · **Düzey:** Advanced · **Tahmini okuma:** 3 dk
    **Anahtar kelimeler:** `LRGBCombination` · `LRGB Combination` · `LRGB` · `luminance` · `channel combination`
    **Önerilen ön bilgiler:** [Renk Kalibrasyonu](../05-color-calibration/index.md) · [HistogramTransformation](../07-stretch/histogram-transformation.md)

## Amaç

Hazırlanmış luminance’i RGB chrominance ile birleştirerek detail, contrast, saturation ve noise aktarımını kontrollü yönetmektir.

## Kuramsal Arka Plan ve sezgisel açıklama

Luminance weight arttıkça output intensity L’ye yaklaşır; RGB color ilişkisi korunmaya çalışılsa da saturation ve local chroma L/RGB uyumuna bağlı değişebilir. Noise aktarımı da detail ile birlikte gelir.

## Giriş Gereksinimleri ve iş akışı position

L/RGB aynı geometry ve uyumlu image state’te olmalıdır. RGB önce [SPCC](../05-color-calibration/spcc.md) ile kalibre edilir; L [hazırlanır](luminance-hazirlama.md). Birleşim stretch öncesi veya kontrollü nonlinear aşamada yapılabilir; iki yaklaşım A/B test edilmelidir.

## Ne zaman kullanılır / kullanılmaz?

Broadband galaxy ve yüksek kaliteli L verisinde kullanılır. L, RGB’den daha kötü seeing/noise/gradient taşıyorsa; passband hedef color’ını bozuyorsa veya RGB-only yeterliyse kullanılmaz.

## Parameters

| Parametre/kavram | Amaç | Artırma gerekçesi | Risk |
|---|---|---|---|
| Luminance weight | L detail katkısı | L SNR/PSF açıkça üstün | Color washout/noise transfer |
| Saturation | Chroma kaybını telafi | Ölçülmüş saturation düşüşü | Artificial color/clipping |
| Noise reduction | Chrominance noise kontrolü | RGB chroma noise belirgin | Color detail kaybı |
| Channel weights | Color katkısını ayarlama | Acquisition/filter gerekçesi | SPCC sonucunu bozma |

Sabit typical values yoktur. Düşük L weight ile başlanır; output, RGB-only ve full-weight clone ile karşılaştırılır.

## Avantajlar ve sınırlamalar

Dedicated process hızlı ve tekrar üretilebilirdir. Spatially varying blend, starless recombination veya continuum-aware Ha ekleme için PixelMath kadar esnek değildir.

## Pratik Karar Rehberi

| Durum | Öneri | Gerekçe |
|---|---|---|
| Galaxy, iyi L | LRGBCombination | Doğal detail transferi |
| Reflection nebula | Düşük weight veya RGB-only | Color fidelity korunur |
| Emission nebula | A/B LRGB/HaRGB | L passband contrast’ı değiştirebilir |
| HaRGB | PixelMath | Emission/continuum ayrı kontrol edilir |
| Starless layer | PixelMath | Layer-specific birleşim gerekir |

## Uygulama ve beklenen çıktı

1. L/RGB geometry, state, FWHM ve histograms doğrulayın.
2. Düşük L weight clone üretin.
3. Galaxy/nebula detail, star color, halo, background noise ve saturation’ı karşılaştırın.
4. Weight/saturation’ı tek değişkenli iterasyonlarla ayarlayın.
5. Process instance ve acceptance notunu saklayın.

Çıktıda detail artmalı; RGB hue ve faint color kaybolmamalı, stars harshlaşmamalıdır.

## Yaygın Hatalar ve sorun giderme

| Belirti | Neden | Düzeltme İş Akışı |
|---|---|---|
| Desaturated result | L weight fazla | Weight azalt; RGB saturation’ı ölç |
| Color halo | Geometry/PSF mismatch | Registration/PSF match |
| Noisy detail | L noise aktarımı | L hazırlama ve weight revizyonu |
| Unnatural galaxy core | State/dynamic range mismatch | Histogram/stretch eşleştir |
| Magenta/green stars | RGB calibration veya saturation | SPCC output’a dön; channel clipping kontrol et |

## Performans, En İyi Uygulamalar ve ilgili processes

Process hızlıdır; clone matrisi ve quality check asıl maliyettir. RGB-only referansı her zaman saklayın. [PixelMath LRGB](pixelmath-lrgb.md), [ColorMask](../11-maskeler/color-mask.md) ve [RangeMask](../11-maskeler/range-mask.md) karmaşık durumlarda tamamlayıcıdır.

## İlgili Süreçler

- [ChannelCombination](channel-combination.md)
- [Luminance Hazırlama](luminance-hazirlama.md)
- [PixelMath ile LRGB](pixelmath-lrgb.md)

## İlgili İş Akışları

- [LRGB Galaksi](../15-workflows/lrgb-galaxy.md)
- [LRGB + Ha Galaksi](../15-workflows/lrgb-ha-galaxy.md)
- [M31 LRGB + Ha](../20-uygulamalar/m31-lrgb-ha/index.md)

## İlgili Sorun Giderme Başlıkları

- [LRGB Source Image Not Found](../14-hata-kutuphanesi/lrgb-source-image-not-found.md)

## Önceki Bölüm

[← Luminance Hazırlama](luminance-hazirlama.md)

## Sonraki Bölüm

[PixelMath ile LRGB →](pixelmath-lrgb.md)
