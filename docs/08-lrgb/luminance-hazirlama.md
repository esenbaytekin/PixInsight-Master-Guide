# Luminance Hazırlama

!!! info "Sayfa Bilgisi"
    **Kategori:** LRGB · **Düzey:** Advanced · **Tahmini okuma:** 3 dk
    **Anahtar kelimeler:** `Luminance Hazırlama` · `LRGB` · `luminance` · `channel combination`
    **Önerilen ön bilgiler:** [Renk Kalibrasyonu](../05-color-calibration/index.md) · [HistogramTransformation](../07-stretch/histogram-transformation.md)

## Amaç

Luminance’i RGB’ye detail/contrast aktarabilecek geometry, PSF, noise ve dynamic range koşullarına getirmektir.

## Kuramsal Arka Plan

Luminance yalnız “daha parlak mono görüntü” değildir. RGB ile aynı sky signal’ı farklı passband ve SNR ile örnekler. Birleşimde L’nin small-scale structure, noise ve star profile’ı chrominance üzerine taşınır.

## Giriş Gereksinimleri

- L ve RGB aynı registration/crop/dimensions
- Gradient ve calibration temiz
- L clipping içermiyor
- FWHM/PSF farkı ölçülmüş
- Linear/nonlinear state ve normalization planı açık

## Gerçek L ve sentetik L

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

## Pratik Karar Rehberi

| Durum | Öneri | Gerekçe |
|---|---|---|
| High-SNR sharp L | Kontrollü LRGB | Detail kazancı olası |
| L seeing kötü | RGB-only veya PSF match | L stars sonucu bozar |
| L light pollution güçlü | RGB/synthetic L test | Background ve color riskli |
| Reflection nebula | Düşük L weight | Chrominance korunur |
| Galaxy | L detail öncelikli A/B | Dust lane ve halo dengesi gerekir |

## İş Akışı

L integration → gradient control → BXT/NXT → PSF/noise ölçümü → RGB ile geometry/state match → LRGBCombination/PixelMath → color/detail acceptance.

!!! warning "Aşırı hazırlama"
    L üzerinde agresif sharpening veya denoise, birleşimde RGB’den bağımsız yapay detail/doku oluşturabilir.

## Sorun Giderme ve En İyi Uygulamalar

| Belirti | Neden | Düzeltme İş Akışı |
|---|---|---|
| Color halo | PSF/registration mismatch | Align ve PSF match |
| Noise transfer | L background zayıf | L denoise/weight azalt |
| Color washout | L contrast/weight fazla | L normalize veya RGB-only |
| Core clipping | L stretch fazla | Linear clone’dan yeniden hazırla |

Her ara L clone’u ve ölçümü saklayın; final sharpness’i tek başarı ölçütü yapmayın.

## İlgili Süreçler

- [LRGB teorisi](index.md)
- [LRGBCombination](lrgb-combination.md)
- [BlurXTerminator](../06-ai-eklentileri/blurxterminator.md)
- [NoiseXTerminator](../06-ai-eklentileri/noisexterminator.md)

## İlgili İş Akışları

- [LRGB Galaksi](../15-workflows/lrgb-galaxy.md)
- [LRGB + Ha Galaksi](../15-workflows/lrgb-ha-galaxy.md)
- [M31 LRGB + Ha](../20-uygulamalar/m31-lrgb-ha/index.md)

## Önceki Bölüm

[← ChannelCombination](channel-combination.md)

## Sonraki Bölüm

[LRGBCombination →](lrgb-combination.md)
