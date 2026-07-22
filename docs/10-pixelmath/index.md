# PixelMath

## Amaç

Pixel ve channel değerlerini açık expressions ile üretmek, karıştırmak, seçmek veya yeni image oluşturmak; karmaşık workflows’u denetlenebilir matematiksel adımlara ayırmaktır.

## Kuramsal Arka Plan ve evaluation sezgisel açıklama

PixelMath her output pixel için expression’ı değerlendirir. Image identifier aynı koordinattaki pixel’i; scalar sabit tüm pixeller için aynı değeri; mask/weight image spatially varying coefficient’i temsil eder. Parentheses evaluation intent’ini açıklar.

```text
inputs → expression + symbols → range/channel evaluation → output image
```

## Safety rules

- Identifier, dimensions, channel count ve image state’i doğrulayın.
- Division denominator için sıfır/çok küçük değer guard’ı kurun.
- Output range ve clipping’i Statistics ile kontrol edin.
- Replace target yerine önce new image üretin.
- Expression, symbols ve process settings’i birlikte kaydedin.

## PixelMath ve dedicated process

| İhtiyaç | PixelMath | İşlem tool |
|---|---|---|
| Basit RGB combine | Gereksiz esnek | ChannelCombination daha açık |
| Masked/conditional blend | Güçlü | Sınırlı olabilir |
| LRGB | Esnek ama riskli | LRGBCombination daha güvenli başlangıç |
| Debuggability | Expression bilgisi gerekir | UI constraints yardımcı olur |
| Reuse | Icon + symbols | İşlem instance |

## Pratik Karar Rehberi

| Durum | Öneri | Gerekçe |
|---|---|---|
| RGB-only | ChannelCombination | Basitlik |
| SHO/HOO mapping | ChannelCombination veya PixelMath | Weight gerekiyorsa PixelMath |
| HaRGB | PixelMath | Emission contribution kontrolü |
| Starless recombination | PixelMath | Layer matematiği açıkça tanımlanır |
| Selective replacement | PixelMath + mask | Spatial condition gerekir |
| Basit LRGB | LRGBCombination | Daha az hata yüzeyi |

## İş Akışındaki Yeri

PixelMath tek bir aşamaya ait değildir. Lineer channel construction, continuum blend ve synthetic L; nonlinear star recombination veya color enhancement için kullanılabilir. Expression’ın beklediği image state açıkça yazılmalıdır.

## Chapter map

- [Temeller](temeller.md): expressions, variables, images, identifiers, operators ve output
- [Koşullar ve Fonksiyonlar](kosullar-ve-fonksiyonlar.md): boolean logic ve safe selection
- [Kanal Karışımları](kanal-karisimlari.md): recipes ve validation statüleri
- [Hata Ayıklama](hata-ayiklama.md): parser, range, NaN ve mapping hataları
- [PixelMath ile LRGB](../08-lrgb/pixelmath-lrgb.md): luminance/layer uygulamaları

## Yaygın Hatalar ve En İyi Uygulamalar

Operator precedence’e güvenmek, `$T` ile named image’ı karıştırmak, rescale/clamp davranışını bilmeden etkinleştirmek, farklı dimensions kullanmak ve community formula’yı kendi verisine uyarlamamak başlıca hatalardır.

!!! warning "Matematiksel Güvenlik"
    Syntactically valid expression, scientifically veya visually doğru sonuç garantisi değildir.

## İlgili Süreçler

- [LRGB](../08-lrgb/index.md)
- [SPCC](../05-color-calibration/spcc.md)
- [Stretch](../07-stretch/index.md)
- [ColorMask](../11-maskeler/color-mask.md)
- [SCNR](../13-final/scnr.md)
