# LRGBCombination

## Purpose

Hazırlanmış luminance’i RGB chrominance ile birleştirerek detail, contrast, saturation ve noise aktarımını kontrollü yönetmektir.

## Theory ve intuition

Luminance weight arttıkça output intensity L’ye yaklaşır; RGB color ilişkisi korunmaya çalışılsa da saturation ve local chroma L/RGB uyumuna bağlı değişebilir. Noise aktarımı da detail ile birlikte gelir.

## Input requirements ve workflow position

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

## Advantages ve limitations

Dedicated process hızlı ve tekrar üretilebilirdir. Spatially varying blend, starless recombination veya continuum-aware Ha ekleme için PixelMath kadar esnek değildir.

## Practical Decision Guide

| Situation | Recommendation | Why |
|---|---|---|
| Galaxy, iyi L | LRGBCombination | Doğal detail transferi |
| Reflection nebula | Düşük weight veya RGB-only | Color fidelity korunur |
| Emission nebula | A/B LRGB/HaRGB | L passband contrast’ı değiştirebilir |
| HaRGB | PixelMath | Emission/continuum ayrı kontrol edilir |
| Starless layer | PixelMath | Layer-specific birleşim gerekir |

## Application ve expected output

1. L/RGB geometry, state, FWHM ve histograms doğrulayın.
2. Düşük L weight clone üretin.
3. Galaxy/nebula detail, star color, halo, background noise ve saturation’ı karşılaştırın.
4. Weight/saturation’ı tek değişkenli iterasyonlarla ayarlayın.
5. Process instance ve acceptance notunu saklayın.

Çıktıda detail artmalı; RGB hue ve faint color kaybolmamalı, stars harshlaşmamalıdır.

## Common mistakes ve troubleshooting

| Belirti | Neden | Corrective workflow |
|---|---|---|
| Desaturated result | L weight fazla | Weight azalt; RGB saturation’ı ölç |
| Color halo | Geometry/PSF mismatch | Registration/PSF match |
| Noisy detail | L noise aktarımı | L hazırlama ve weight revizyonu |
| Unnatural galaxy core | State/dynamic range mismatch | Histogram/stretch eşleştir |
| Magenta/green stars | RGB calibration veya saturation | SPCC output’a dön; channel clipping kontrol et |

## Performance, best practices ve related processes

Process hızlıdır; clone matrisi ve quality check asıl maliyettir. RGB-only referansı her zaman saklayın. [PixelMath LRGB](pixelmath-lrgb.md), [ColorMask](../11-maskeler/color-mask.md) ve [RangeMask](../11-maskeler/range-mask.md) karmaşık durumlarda tamamlayıcıdır.
