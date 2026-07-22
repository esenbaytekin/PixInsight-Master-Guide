# PixelMath Kanal Karışımları ve Tarifler

## Purpose

Broadband ve narrowband channel construction, selective blend ve normalization tariflerini aynı validation standardıyla sunmaktır.

## Recipe validation standard

- `✅ Verified`: PixInsight 1.9.3 syntax, process order ve output testleri tamamlanmış tarif.
- `🟦 Community Practice`: Yaygın, birden fazla geçerli varyantı bulunan yaklaşım.
- `🟨 Experimental`: Veriye güçlü biçimde bağlı, özel test gerektiren yaklaşım.

Bu sprintte kontrollü PixInsight execution yapılmadığı için aşağıdaki tarifler Verified olarak etiketlenmemiştir.

## Practical Decision Guide

| Situation | Recommendation | Why |
|---|---|---|
| RGB reconstruction | ChannelCombination veya PixelMath | Basit mapping process ile daha açık |
| HaRGB | PixelMath community workflow | Emission weight kontrol edilir |
| SHO/HOO | Channel expressions | Mapping belgelenir |
| Natural SHO | Experimental matrix/mask | “Natural” hedef tanımı veriye bağlıdır |
| Starless recombination | Layer-aware PixelMath | Additive/screen farkı önemlidir |

## Recipe 1 — RGB reconstruction

- **Validation Status:** 🟦 Community Practice
- **Applicable data:** Registered, normalized mono `R`, `G`, `B`
- **Purpose:** RGB image üretmek
- **Workflow position:** Integration/gradient sonrası, SPCC öncesi
- **Inputs:** R/G/B images
- **Expression:** Ayrı channel fields: `R`, `G`, `B`
- **Expected outcome:** Üç kanallı RGB
- **Known limitations:** Scale/color calibration yapmaz
- **Potential risks:** Mapping/dimension mismatch
- **Alternative approaches:** ChannelCombination

## Recipe 2 — Synthetic luminance

- **Validation Status:** 🟦 Community Practice
- **Applicable data:** Linear calibrated RGB
- **Purpose:** RGB’den intensity proxy üretmek
- **Workflow position:** SPCC sonrası veya coefficients gerekçelendirildiğinde
- **Inputs:** `R`, `G`, `B`, weights
- **Expression:** `wr*R + wg*G + wb*B`
- **Expected outcome:** Weighted mono image
- **Known limitations:** Bağımsız L’nin photon/SNR bilgisini eklemez
- **Potential risks:** Coefficients color/detail bias üretir
- **Alternative approaches:** Extract CIE L* veya gerçek L

## Recipe 3 — Ha enhancement

- **Validation Status:** 🟦 Community Practice
- **Applicable data:** Registered Ha ve broadband RGB
- **Purpose:** Emission regions’a kontrollü Ha katkısı
- **Workflow position:** Broadband color calibration sonrası A/B test
- **Inputs:** `Ha`, target channel, weight/mask
- **Expression:** `target + w*M*(Ha-target)`
- **Expected outcome:** Mask bölgesinde Ha yönünde blend
- **Known limitations:** Continuum subtraction değildir
- **Potential risks:** Salmon stars, halo, clipped red
- **Alternative approaches:** NBRGBCombination veya continuum-aware method

## Recipe 4 — HaRGB

- **Validation Status:** 🟦 Community Practice
- **Applicable data:** Broadband RGB + Ha
- **Purpose:** Ha’yı red/intensity yapısına eklemek
- **Workflow position:** SPCC sonrası, stretch öncesi veya matched nonlinear state
- **Inputs:** RGB, Ha, `w`, optional mask
- **Expected outcome:** Broadband color korunarak emission contrast
- **Known limitations:** Universal coefficient yoktur
- **Potential risks:** Star color ve continuum dominance
- **Alternative approaches:** Starless Ha blend; dedicated narrowband combination

## Recipe 5 — SHO mapping

- **Validation Status:** 🟦 Community Practice
- **Applicable data:** Registered/normalized SII, Ha, OIII
- **Purpose:** Hubble palette mapping
- **Workflow position:** Channel integration/gradient sonrası
- **Inputs:** `SII→R`, `Ha→G`, `OIII→B`
- **Expected outcome:** False-color SHO image
- **Known limitations:** Natural-color calibration değildir
- **Potential risks:** Green dominance ve channel noise imbalance
- **Alternative approaches:** ChannelCombination; weighted SHO

## Recipe 6 — HOO mapping

- **Validation Status:** 🟦 Community Practice
- **Applicable data:** Registered/normalized Ha ve OIII
- **Purpose:** Bi-color mapping
- **Workflow position:** Linear narrowband preparation sonrası
- **Inputs:** `Ha→R`, `OIII→G`, `OIII→B`
- **Expected outcome:** Red/cyan emission separation
- **Known limitations:** G ve B aynı kaynaktan gelir
- **Potential risks:** Cyan noise ve monochromatic stars
- **Alternative approaches:** Weighted HOO veya broadband stars

## Recipe 7 — Natural SHO concept

- **Validation Status:** 🟨 Experimental
- **Applicable data:** Yüksek SNR SHO ve tanımlı color hedefi
- **Purpose:** Emission channels’ı daha broadband-benzeri palette’e dönüştürmek
- **Workflow position:** Basic SHO doğrulamasından sonra
- **Inputs:** SII/Ha/OIII, documented mixing matrix
- **Expected outcome:** Daha az canonical SHO görünümü
- **Known limitations:** “Natural” tekil fiziksel tanım değildir
- **Potential risks:** Signal cross-talk ve false continuum
- **Alternative approaches:** Standard SHO/HOO + Curves/ColorMask

## Recipe 8 — Color enhancement

- **Validation Status:** 🟨 Experimental
- **Applicable data:** Calibrated nonlinear RGB
- **Purpose:** Masked chroma contribution artırmak
- **Workflow position:** Stretch sonrası diagnostics ile
- **Inputs:** Original, enhanced clone, `ColorMask`
- **Expression:** `M*enhanced + (1-M)*original`
- **Expected outcome:** Seçilen hue bölgesinde artış
- **Known limitations:** Enhancement formula ayrıca tanımlanmalıdır
- **Potential risks:** Clipping, posterization
- **Alternative approaches:** CurvesTransformation + ColorMask

## Recipe 9 — Selective replacement

- **Validation Status:** 🟦 Community Practice
- **Applicable data:** Geometry/state matched `A`, `B`, mask `M`
- **Purpose:** Bölgesel image replacement
- **Workflow position:** Kaynakların ayrı doğrulanmasından sonra
- **Inputs:** A/B/M, M in `[0,1]`
- **Expression:** `M*B + (1-M)*A`
- **Expected outcome:** Smooth spatial blend
- **Known limitations:** Mask transition sonucu belirler
- **Potential risks:** Seam ve brightness mismatch
- **Alternative approaches:** CloneStamp veya process mask

## Recipe 10 — Star protection

- **Validation Status:** 🟦 Community Practice
- **Applicable data:** Target, processed clone ve star mask
- **Purpose:** Stars’ı işlemden kısmen/tamamen korumak
- **Workflow position:** Stretch/color/detail işlemi sonrası blend
- **Inputs:** Original `O`, processed `P`, star mask `S`
- **Expression:** `S*O + (1-S)*P`
- **Expected outcome:** Original stars, processed background
- **Known limitations:** Halo/mask quality’ye bağlı
- **Potential risks:** Seams ve star surroundings mismatch
- **Alternative approaches:** Process mask veya StarXTerminator layers

## Recipe 11 — Continuum preservation

- **Validation Status:** 🟨 Experimental
- **Applicable data:** Narrowband + broadband continuum proxy
- **Purpose:** Emission blend sırasında continuum/stars’ı sınırlamak
- **Workflow position:** Registration/normalization ve scale testinden sonra
- **Inputs:** NB, continuum proxy, scale coefficient/mask
- **Expected outcome:** Emission artışı, daha kontrollü continuum
- **Known limitations:** Filter passbands ve extinction’e çok duyarlı
- **Potential risks:** Negative values, halos, over-subtraction
- **Alternative approaches:** Dedicated continuum subtraction workflow

## Recipe 12 — Background protection

- **Validation Status:** 🟦 Community Practice
- **Applicable data:** Processed/original images ve RangeMask
- **Purpose:** Background’u güçlü transformdan korumak
- **Workflow position:** Nonlinear contrast/color işlemi sonrası
- **Inputs:** O/P/M
- **Expression:** `M*P + (1-M)*O` (mask polarity doğrulanmalı)
- **Expected outcome:** Target değişir, background daha az değişir
- **Known limitations:** Faint target mask dışında kalabilir
- **Potential risks:** Edge/seam ve signal loss
- **Alternative approaches:** Process-level RangeMask

## Recipe 13 — Safe normalization

- **Validation Status:** 🟨 Experimental
- **Applicable data:** Positive, measured images
- **Purpose:** Image scale’ını tanımlı statistic/reference’a göre eşlemek
- **Workflow position:** Channel blend öncesi
- **Inputs:** Image ve nonzero reference scalar
- **Concept:** `image / max(reference, epsilon)` benzeri guarded scaling
- **Expected outcome:** Açıklanabilir ortak scale
- **Known limitations:** Exact statistic/function syntax doğrulanmalıdır
- **Potential risks:** Noise amplification, division by zero, color bias
- **Alternative approaches:** LinearFit veya ImageIntegration normalization

## Common mistakes ve best practices

Coefficients’i toplam/range kontrolü olmadan kullanmak, SHO/HOO’yu color calibration saymak, masks polarity’sini test etmemek, continuum scale’i tahmin etmek ve community recipes’i universal sunmak başlıca hatalardır. Her recipe yeni image, Statistics ve channel inspection ile doğrulanır.

## Related processes

- [PixelMath Temelleri](temeller.md)
- [Hata Ayıklama](hata-ayiklama.md)
- [ChannelCombination](../08-lrgb/channel-combination.md)
- [ColorMask](../11-maskeler/color-mask.md)
- [RangeMask](../11-maskeler/range-mask.md)
