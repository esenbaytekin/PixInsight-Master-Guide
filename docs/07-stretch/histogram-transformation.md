# HistogramTransformation

## Amaç

Lineer veriyi kalıcı olarak nonlinear hale getirmek; black point, midtones ve white point üzerinden tonal dağılımı açık ve ölçülebilir biçimde yönetmektir.

## Kuramsal Arka Plan ve mathematical sezgisel açıklama

HistogramTransformation bir transfer function uygular: her giriş pixel değeri yeni bir çıkış değerine eşlenir. Midtones kontrolü düşük/orta değerleri genişletirken highlights’ı daha sınırlı hareket ettirir. Black/white point dışındaki değerleri sınıra taşımak clipping üretir ve bilgi geri alınamaz.

!!! warning "STF ile temel fark"
    STF pixel verisini değiştirmez. HT uygulanınca görüntü datası gerçekten değişir. STF’den HT’ye aktarılan otomatik görünüm yalnız başlangıç önerisidir; clipping ve hedef yapısı denetlenmeden final stretch değildir.

## Giriş Gereksinimleri ve iş akışı position

- Gradient, SPCC/BackgroundNeutralization ve lineer BXT/NXT kararları tamamlanmış olmalı.
- RGB channels unclipped, background ve bright core ölçümleri kayıtlı olmalı.
- Histogram ve Preview Statistics lineer görüntüde incelenmeli.

Genel sıra: [SPCC](../05-color-calibration/spcc.md) → [BlurXTerminator](../06-ai-eklentileri/blurxterminator.md) → [NoiseXTerminator](../06-ai-eklentileri/noisexterminator.md) → HT → [CurvesTransformation](../13-final/curves-transformation.md).

## PixInsight menu path

`Process → IntensityTransformations → HistogramTransformation`

!!! tip "Ölç, sonra uygula"
    Real-Time Preview görünümünü histogram kuyrukları ve Preview Statistics ile birlikte değerlendirin.

## Ne zaman kullanılır?

- Galaxy core/halo davranışını açık histogram kontrolüyle yönetirken
- Black point ve background separation kritik olduğunda
- Tekrarlanabilir, sade bir global transform gerektiğinde

## Ne zaman kullanılmaz?

- Lineer processler tamamlanmadan
- Black point’i göze göre keserek gradient/noise gizlemek için
- Lokal contrast veya star reduction aracı olarak

## Parameters

| Kontrol | Amaç | Artırma/hareket gerekçesi | Risk |
|---|---|---|---|
| Black point | Shadows alt sınırı | Gerçek boş headroom ölçüldüyse | Faint nebula/background clipping |
| Midtones | Orta tonları genişletme | Faint signal görünürlüğü gerekiyorsa | Gray background, noise ve star bloat |
| White point | Highlights üst sınırı | Gerçek boş üst headroom varsa | Star/core clipping |
| RGB/K | Kanalları birlikte dönüştürme | Hue ilişkisini korumak isteniyorsa | Channel-specific cast çözülemez |
| Individual channels | Kanal dengeleme | Ölçülmüş channel sorunu varsa | Hue/saturation sapması |

Luminance-only stretch color ratios’ı koruma amacıyla değerlendirilebilir; ancak RGB working space ve recombination davranışı workflow’a bağlıdır. Sabit sayısal “tipik değer” yerine histogram kuyrukları, target brightness ve clipping ölçülür.

## Yinelemeli ve tek stretch işlemi

| Yaklaşım | Avantaj | Sınır |
|---|---|---|
| Tek güçlü stretch | Hızlı | Hatanın hangi tonal bölgede oluştuğu zor ayrılır |
| Birden çok küçük stretch | Her adımda core/noise/color kontrolü | Daha fazla kayıt ve karar gerekir |

Küçük adımlar matematiksel olarak otomatik üstün değildir; denetim ve geri dönüş kolaylığı sağlar.

## Pratik Karar Rehberi

| Durum | Önerilen İşlem | Gerekçe |
|---|---|---|
| Galaxy natural core | HT, küçük adımlar | Highlights ve halo açıkça izlenir |
| Faint emission nebula | HT + RangeMask veya GHS | Shadow expansion korunarak yapılır |
| Bright stars | MaskedStretch veya ayrı stars HT | Tek HT star cores’u sertleştirebilir |
| OSC star colors | Arcsinh başlangıç + HT | Color ve black point ayrı kontrol edilir |
| High-SNR broadband | HT veya GHS | HT sade ve tekrar üretilebilirdir |

## Uygulama

1. Lineer clone oluşturun ve STF’yi yalnız önizleme için kullanın.
2. Histogramın sol/sağ kuyruklarını ve channel clipping’i inceleyin.
3. Midtones ile konservatif ilk stretch uygulayın; black point’i taşımayın veya çok sınırlı taşıyın.
4. Yeniden histogram/Statistics kontrolü yapın.
5. Core, faint target, background ve yıldızları aynı zoom’da karşılaştırın.
6. Gerekirse küçük ikinci stretch uygulayın; final instance’ı saklayın.

## Beklenen Çıktılar, advantages ve sınırlamalar

Çıktı nonlinear olmalı; faint yapı görünürken black/white clipping oluşmamalı ve star cores açıklanabilir kalmalıdır. HT’nin avantajı yalın ve öngörülebilir global kontroldür. Sınırlaması, tek global eğrinin galaxy core, nebula ve stars için aynı anda ideal local contrast sağlayamamasıdır.

## Sorun Giderme

| Belirti | Neden | Doğrulama | Düzeltme İş Akışı |
|---|---|---|---|
| Siyah background/nebula kaybı | Black point clipping | Sol histogram/Statistics | Önceki clone’dan black point’siz tekrar |
| Gray background | Midtones fazla | Background median | Daha küçük adım; black clipping yapma |
| Harsh stars | Highlights fazla genişledi | Star core/radial profile | Star mask veya ayrı star stretch |
| Galaxy core yapay | White/core compression yetersiz | Core histogram ve STF kıyası | Küçük adım veya GHS/HDR yaklaşımı |
| Color washout | Kanal davranışı/saturation | RGB histogram | RGB/K ve color-calibrated girdiyi kontrol et |

## Performans ve En İyi Uygulamalar

HT hızlı bir point operation’dır; Real-Time Preview ve clone karşılaştırması işlem süresinden daha önemlidir. Farklı denemeleri aynı görüntüye zincirlemek yerine aynı lineer başlangıçtan üretin. Black point’i final kozmetik karar olarak değil veri sınırı olarak ele alın.

## Yaygın Hatalar

- STF görünümünü doğrulamadan HT’ye kopyalamak
- Black point’i histogram kuyruğunun içine taşımak
- Tek güçlü stretch ile core, stars ve background’u aynı anda çözmeye çalışmak
- Kanal histogramlarını kontrol etmeden RGB/K dışı düzeltme yapmak
- Nonlinear sonucu yeniden lineer process girdisi sanmak

## İlgili Süreçler ve kaynaklar

- [Stretch teorisi](index.md)
- [GHS](generalized-hyperbolic-stretch.md)
- [MaskedStretch](masked-stretch.md)
- [ArcsinhStretch](arcsinh-stretch.md)
- [STF rehberi](../02-pixinsight-temelleri/stf.md)
