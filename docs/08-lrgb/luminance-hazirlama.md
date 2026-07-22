# Luminance Hazırlama

## Purpose

Luminance’i RGB’ye detail/contrast aktarabilecek geometry, PSF, noise ve dynamic range koşullarına getirmektir.

## Theory

Luminance yalnız “daha parlak mono görüntü” değildir. RGB ile aynı sky signal’ı farklı passband ve SNR ile örnekler. Birleşimde L’nin small-scale structure, noise ve star profile’ı chrominance üzerine taşınır.

## Input requirements

- L ve RGB aynı registration/crop/dimensions
- Gradient ve calibration temiz
- L clipping içermiyor
- FWHM/PSF farkı ölçülmüş
- Linear/nonlinear state ve normalization planı açık

## Gerçek L vs synthetic L

| Özellik | Gerçek L | Synthetic L |
|---|---|---|
| Photon seti | Ayrı broad luminance exposure | RGB’den türetilir |
| SNR/detail | Daha yüksek olabilir | RGB ile sınırlı |
| Geometry/PSF | RGB’den farklı olabilir | RGB ile doğal eşleşir |
| Color uyumu | Passband mismatch riski | RGB response ile tutarlı |

## Preparation parameters

| Karar | Ölçüm | Risk |
|---|---|---|
| PSF match | FWHM ve star profile | Color halo/harsh stars |
| Noise reduction | Background noise estimate | Detail kaybı/plastic texture |
| Sharpening | High-SNR structure | Noise amplification |
| Stretch match | Histogram/core/background | Unnatural contrast |
| Weight | L/RGB detail-color dengesi | Washed color |

## Practical Decision Guide

| Situation | Recommendation | Why |
|---|---|---|
| High-SNR sharp L | Kontrollü LRGB | Detail kazancı olası |
| L seeing kötü | RGB-only veya PSF match | L stars sonucu bozar |
| L light pollution güçlü | RGB/synthetic L test | Background ve color riskli |
| Reflection nebula | Düşük L weight | Chrominance korunur |
| Galaxy | L detail öncelikli A/B | Dust lane ve halo dengesi gerekir |

## Workflow

L integration → gradient control → BXT/NXT → PSF/noise ölçümü → RGB ile geometry/state match → LRGBCombination/PixelMath → color/detail acceptance.

!!! warning "Aşırı hazırlama"
    L üzerinde agresif sharpening veya denoise, birleşimde RGB’den bağımsız yapay detail/doku oluşturabilir.

## Troubleshooting ve best practices

| Belirti | Neden | Corrective workflow |
|---|---|---|
| Color halo | PSF/registration mismatch | Align ve PSF match |
| Noise transfer | L background zayıf | L denoise/weight azalt |
| Color washout | L contrast/weight fazla | L normalize veya RGB-only |
| Core clipping | L stretch fazla | Linear clone’dan yeniden hazırla |

Her ara L clone’u ve ölçümü saklayın; final sharpness’i tek başarı ölçütü yapmayın.

## Related processes

- [LRGB teorisi](index.md)
- [LRGBCombination](lrgb-combination.md)
- [BlurXTerminator](../06-ai-eklentileri/blurxterminator.md)
- [NoiseXTerminator](../06-ai-eklentileri/noisexterminator.md)
