# PixelMath Koşullar ve Fonksiyonlar

## Amaç

Comparison, boolean logic ve conditional selection ile pixel replacement/blending’i güvenli ve okunabilir kurmaktır.

## Kuramsal Arka Plan ve evaluation sezgisel açıklama

Comparison bir boolean condition üretir; conditional expression bu sonuca göre iki değerden birini seçer. Hard condition keskin sınır, continuous mask yumuşak transition üretir. PixelMath’in exact conditional/function syntax’ı process documentation ile kontrol edilmelidir.

## Giriş Gereksinimleri

Threshold’un image state ve range bağlamı, channel semantics, mask polarity ve output range bilinmelidir. NaN/Inf üretebilecek alt expressions önce guard edilmelidir.

## Boolean ve conditional concepts

| Kavram | Kullanım | Risk |
|---|---|---|
| Comparison | Threshold/class test | Noise sınırında flicker |
| AND/OR/NOT | Koşulları birleştirme | Parentheses/precedence |
| Koşullu seçim | A veya B seçme | Sert sınır |
| Smooth mask blend | Kademeli seçim | Mask contamination |
| Guard | Division/log domain koruma | Yanlış epsilon bias |

## Pratik Karar Rehberi

| Durum | Öneri | Gerekçe |
|---|---|---|
| Smooth target blend | Continuous mask | Hard edge önlenir |
| Invalid denominator | Guarded condition | NaN/Inf önlenir |
| Star/core selection | RangeMask/Star mask | Raw threshold noise’a duyarlı |
| Channel-specific rule | Separate expressions | Semantics açık olur |
| Basit global adjustment | Dedicated process | Daha az hata yüzeyi |

## Safe construction iş akışı

1. Condition/weight image’ı tek başına yeni image olarak üretin.
2. Min/max ve transition bölgelerini inceleyin.
3. True ve false branches’i ayrı test edin.
4. Final expression’ı parentheses ve symbols ile kurun.
5. Output NaN, clipping ve seams kontrolü yapın.

## Avantajlar ve sınırlamalar

Koşullar spatially selective replacement sağlar; ancak object-aware değildir. Threshold, noise ve stretch state değişince farklı pixel seti seçebilir. Curves + ColorMask/RangeMask çoğu görsel düzeltmede daha okunabilir olabilir.

## Yaygın Hatalar ve sorun giderme

| Belirti | Neden | Düzeltme İş Akışı |
|---|---|---|
| Keskin sınır | Hard condition | Smooth mask blend |
| Ters alan değişti | Mask polarity | Mask’i tek başına görüntüle |
| Invalid expression | Yanlış function/operator | Minimal alt ifade ile başla |
| NaN/black output | Invalid domain/division | Guard ve epsilon test et |
| Unexpected colors | Koşul channels farklı | Separate channel debug |

!!! warning "Belgelenmemiş Sözdizimi"
    Başka yazılım dilindeki function veya ternary syntax’ı PixelMath’te varmış gibi kullanmayın.

## İlgili Süreçler

- [Temeller](temeller.md)
- [Kanal Karışımları](kanal-karisimlari.md)
- [RangeMask](../11-maskeler/range-mask.md)
- [ColorMask](../11-maskeler/color-mask.md)
