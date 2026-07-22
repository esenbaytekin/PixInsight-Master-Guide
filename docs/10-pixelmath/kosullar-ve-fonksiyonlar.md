# PixelMath Koşullar ve Fonksiyonlar

## Purpose

Comparison, boolean logic ve conditional selection ile pixel replacement/blending’i güvenli ve okunabilir kurmaktır.

## Theory ve evaluation intuition

Comparison bir boolean condition üretir; conditional expression bu sonuca göre iki değerden birini seçer. Hard condition keskin sınır, continuous mask yumuşak transition üretir. PixelMath’in exact conditional/function syntax’ı process documentation ile kontrol edilmelidir.

## Input requirements

Threshold’un image state ve range bağlamı, channel semantics, mask polarity ve output range bilinmelidir. NaN/Inf üretebilecek alt expressions önce guard edilmelidir.

## Boolean ve conditional concepts

| Kavram | Kullanım | Risk |
|---|---|---|
| Comparison | Threshold/class test | Noise sınırında flicker |
| AND/OR/NOT | Koşulları birleştirme | Parentheses/precedence |
| Conditional selection | A veya B seçme | Hard seam |
| Smooth mask blend | Kademeli seçim | Mask contamination |
| Guard | Division/log domain koruma | Yanlış epsilon bias |

## Practical Decision Guide

| Situation | Recommendation | Why |
|---|---|---|
| Smooth target blend | Continuous mask | Hard edge önlenir |
| Invalid denominator | Guarded condition | NaN/Inf önlenir |
| Star/core selection | RangeMask/Star mask | Raw threshold noise’a duyarlı |
| Channel-specific rule | Separate expressions | Semantics açık olur |
| Basit global adjustment | Dedicated process | Daha az hata yüzeyi |

## Safe construction workflow

1. Condition/weight image’ı tek başına yeni image olarak üretin.
2. Min/max ve transition bölgelerini inceleyin.
3. True ve false branches’i ayrı test edin.
4. Final expression’ı parentheses ve symbols ile kurun.
5. Output NaN, clipping ve seams kontrolü yapın.

## Advantages ve limitations

Koşullar spatially selective replacement sağlar; ancak object-aware değildir. Threshold, noise ve stretch state değişince farklı pixel seti seçebilir. Curves + ColorMask/RangeMask çoğu görsel düzeltmede daha okunabilir olabilir.

## Common mistakes ve troubleshooting

| Belirti | Neden | Corrective workflow |
|---|---|---|
| Keskin sınır | Hard condition | Smooth mask blend |
| Ters alan değişti | Mask polarity | Mask’i tek başına görüntüle |
| Invalid expression | Yanlış function/operator | Minimal alt ifade ile başla |
| NaN/black output | Invalid domain/division | Guard ve epsilon test et |
| Unexpected colors | Condition channels farklı | Separate channel debug |

!!! warning "Undocumented syntax"
    Başka yazılım dilindeki function veya ternary syntax’ı PixelMath’te varmış gibi kullanmayın.

## Related processes

- [Temeller](temeller.md)
- [Kanal Karışımları](kanal-karisimlari.md)
- [RangeMask](../11-maskeler/range-mask.md)
- [ColorMask](../11-maskeler/color-mask.md)
