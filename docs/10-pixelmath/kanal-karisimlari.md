# PixelMath Kanal Karışımları ve Tarifler

!!! info "Sayfa Bilgisi"
    **Kategori:** PixelMath · **Düzey:** Advanced · **Tahmini okuma:** 5 dk
    **Anahtar kelimeler:** `Kanal Karışımları` · `PixelMath` · `expression` · `kanal karışımı`
    **Önerilen ön bilgiler:** [Process Icons](../02-pixinsight-temelleri/process-icons.md) · [Maske Mantığı](../11-maskeler/maske-mantigi.md)

## Amaç

Broadband ve narrowband channel construction, selective blend ve normalization tariflerini aynı validation standardıyla sunmaktır.

## Tarif Doğrulama Standardı

- `✅ Verified`: PixInsight 1.9.3 syntax, process order ve output testleri tamamlanmış tarif.
- `🟦 Community Practice`: Yaygın, birden fazla geçerli varyantı bulunan yaklaşım.
- `🟨 Experimental`: Veriye güçlü biçimde bağlı, özel test gerektiren yaklaşım.

Bu sprintte kontrollü PixInsight execution yapılmadığı için aşağıdaki tarifler Verified olarak etiketlenmemiştir.

## Pratik Karar Rehberi

| Durum | Öneri | Gerekçe |
|---|---|---|
| RGB reconstruction | ChannelCombination veya PixelMath | Basit mapping process ile daha açık |
| HaRGB | PixelMath community workflow | Emission weight kontrol edilir |
| SHO/HOO | Channel expressions | Mapping belgelenir |
| Natural SHO | Experimental matrix/mask | “Natural” hedef tanımı veriye bağlıdır |
| Starless recombination | Layer-aware PixelMath | Additive/screen farkı önemlidir |

## Tarif 1 — RGB yeniden oluşturma

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

## Tarif 2 — Sentetik luminance

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

## Tarif 3 — Ha iyileştirme

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

## Tarif 4 — HaRGB

- **Validation Status:** 🟦 Community Practice
- **Applicable data:** Broadband RGB + Ha
- **Purpose:** Ha’yı red/intensity yapısına eklemek
- **Workflow position:** SPCC sonrası, stretch öncesi veya matched nonlinear state
- **Inputs:** RGB, Ha, `w`, optional mask
- **Expected outcome:** Broadband color korunarak emission contrast
- **Known limitations:** Universal coefficient yoktur
- **Potential risks:** Star color ve continuum dominance
- **Alternative approaches:** Starless Ha blend; dedicated narrowband combination

## Tarif 5 — SHO eşleme

- **Validation Status:** 🟦 Community Practice
- **Applicable data:** Registered/normalized SII, Ha, OIII
- **Purpose:** Hubble palette mapping
- **Workflow position:** Channel integration/gradient sonrası
- **Inputs:** `SII→R`, `Ha→G`, `OIII→B`
- **Expected outcome:** False-color SHO image
- **Known limitations:** Natural-color calibration değildir
- **Potential risks:** Green dominance ve channel noise imbalance
- **Alternative approaches:** ChannelCombination; weighted SHO

## Tarif 6 — HOO eşleme

- **Validation Status:** 🟦 Community Practice
- **Applicable data:** Registered/normalized Ha ve OIII
- **Purpose:** Bi-color mapping
- **Workflow position:** Linear narrowband preparation sonrası
- **Inputs:** `Ha→R`, `OIII→G`, `OIII→B`
- **Expected outcome:** Red/cyan emission separation
- **Known limitations:** G ve B aynı kaynaktan gelir
- **Potential risks:** Cyan noise ve monochromatic stars
- **Alternative approaches:** Weighted HOO veya broadband stars

## Tarif 7 — Doğal SHO kavramı

- **Validation Status:** 🟨 Experimental
- **Applicable data:** Yüksek SNR SHO ve tanımlı color hedefi
- **Purpose:** Emission channels’ı daha broadband-benzeri palette’e dönüştürmek
- **Workflow position:** Basic SHO doğrulamasından sonra
- **Inputs:** SII/Ha/OIII, documented mixing matrix
- **Expected outcome:** Daha az canonical SHO görünümü
- **Known limitations:** “Natural” tekil fiziksel tanım değildir
- **Potential risks:** Signal cross-talk ve false continuum
- **Alternative approaches:** Standard SHO/HOO + Curves/ColorMask

## Tarif 8 — Renk iyileştirme

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

## Tarif 9 — Seçici değiştirme

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

## Tarif 10 — Yıldız koruma

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

## Tarif 11 — Süreklilik koruma

- **Validation Status:** 🟨 Experimental
- **Applicable data:** Narrowband + broadband continuum proxy
- **Purpose:** Emission blend sırasında continuum/stars’ı sınırlamak
- **Workflow position:** Registration/normalization ve scale testinden sonra
- **Inputs:** NB, continuum proxy, scale coefficient/mask
- **Expected outcome:** Emission artışı, daha kontrollü continuum
- **Known limitations:** Filter passbands ve extinction’e çok duyarlı
- **Potential risks:** Negative values, halos, over-subtraction
- **Alternative approaches:** Dedicated continuum subtraction workflow

## Tarif 12 — Arka plan koruma

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

## Tarif 13 — Güvenli normalizasyon

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

## Yaygın Hatalar ve En İyi Uygulamalar

Coefficients’i toplam/range kontrolü olmadan kullanmak, SHO/HOO’yu color calibration saymak, masks polarity’sini test etmemek, continuum scale’i tahmin etmek ve community recipes’i universal sunmak başlıca hatalardır. Her recipe yeni image, Statistics ve channel inspection ile doğrulanır.

## İlgili Süreçler

- [PixelMath Temelleri](temeller.md)
- [Hata Ayıklama](hata-ayiklama.md)
- [ChannelCombination](../08-lrgb/channel-combination.md)
- [ColorMask](../11-maskeler/color-mask.md)
- [RangeMask](../11-maskeler/range-mask.md)

## İlgili İş Akışları

- [LRGB + Ha Galaksi](../15-workflows/lrgb-ha-galaxy.md)
- [SHO ve HOO Narrowband](../15-workflows/sho-hoo.md)
- [M31 LRGB + Ha](../20-uygulamalar/m31-lrgb-ha/index.md)
- [NGC 6888 SHO](../20-uygulamalar/ngc6888-sho/index.md)

## İlgili Sorun Giderme Başlıkları

- [OIII Kaybolması](../14-hata-kutuphanesi/oiii-kaybolmasi.md)

## Önceki Bölüm

[← Koşullar ve Fonksiyonlar](kosullar-ve-fonksiyonlar.md)

## Sonraki Bölüm

[Hata Ayıklama →](hata-ayiklama.md)
