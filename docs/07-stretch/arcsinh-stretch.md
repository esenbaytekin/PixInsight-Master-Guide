# ArcsinhStretch

## Amaç

Faint color ve star color görünürlüğünü artırırken channel ratios ve highlights üzerinde klasik güçlü MTF stretch’e göre farklı bir ödünleşim sunan nonlinear başlangıç transformudur.

## Kuramsal Arka Plan, bilimsel arka plan ve sezgisel açıklama

Inverse hyperbolic sine ailesi düşük değerlerde yaklaşık lineer, daha yüksek değerlerde giderek sıkıştırıcı davranır. Astronomik görüntüde amaç faint signal’ı açarken bright structures’ın büyümesini sınırlamaktır. PixInsight processinin exact normalization ve parameter implementation’ı kurulu sürüm belgeleriyle doğrulanmalıdır.

Color preservation mutlak değildir: black point, clipping, channel calibration ve sonraki Curves/SCNR işlemleri hue/saturation’ı değiştirebilir.

## Giriş Gereksinimleri ve iş akışı position

Girdi lineer, SPCC/BackgroundNeutralization tamamlanmış, gradient-free ve unclipped RGB/OSC olmalıdır. Mono image’da color preservation avantajı anlamlı değildir; tonal davranış için HT/GHS ile karşılaştırılır.

## PixInsight menu path

Kurulu PixInsight dağıtımında `Process → IntensityTransformations → ArcsinhStretch` yolu doğrulanmalıdır; process/script varyantları karıştırılmamalıdır.

!!! warning "Renk Koruma Sınırı"
    Arcsinh transformu yanlış white balance, residual color gradient veya channel clipping’i düzeltmez.

## Ne zaman kullanılır?

- OSC veya broadband RGB’de star color öncelikliyse
- Galaxy star field ve faint chroma birlikte açılacaksa
- Arcsinh başlangıcı HT/GHS ile tamamlanacaksa

## Ne zaman kullanılmaz?

- Channel calibration/gradient sorunu devam ederken
- Black point clipping ile background gizlemek için
- Mono görüntüde yalnız “color preserving” gerekçesiyle
- Bright core ve local contrast tek global transformla çözülemiyorsa

## Parameters

| Kontrol/kavram | Amaç | Artırma gerekçesi | Risk |
|---|---|---|---|
| Stretch factor | Nonlinear görünürlük | Faint color/signal yetersiz | Gray background, noise ve flat highlights |
| Black point | Alt sınır yönetimi | Gerçek boş headroom | Faint signal/color clipping |
| Protect highlights | Bright structures’ı sınırlama | Star/core headroom azalıyor | Aşırı flat görünüm |
| Color/channel mode | Renk ilişkisini yönetme | RGB hedefi | Channel cast veya saturation sapması |

Typical settings sayısal reçete değildir. Küçük başlangıç strength’i, sıfır clipping ve HT/GHS ile final contrast yaygın test stratejisidir.

## HT ve Arcsinh karşılaştırması

| Konu | Arcsinh | HT |
|---|---|---|
| Star color | Koruma eğilimi güçlü olabilir | Midtones/clip kararına duyarlı |
| Black point | Sınırlı/uygulamaya bağlı | Açık ve doğrudan |
| Galaxy core | Compression sağlayabilir | Küçük adımla açık kontrol |
| Mono workflow | Özel color avantajı yok | Daha sade seçim |
| Final contrast | Genellikle ek HT/GHS/Curves gerekir | Tek başına yeterli olabilir |

## Pratik Karar Rehberi

| Durum | Önerilen İşlem | Gerekçe |
|---|---|---|
| OSC star color | Arcsinh + HT | Color başlangıcı ve tonal final ayrılır |
| Broadband galaxy | Arcsinh A/B HT | Star color ile core davranışı karşılaştırılır |
| Reflection nebula | Konservatif Arcsinh | Faint chroma ve yumuşak geçiş korunabilir |
| Mono L | HT veya GHS | Color preservation avantajı yoktur |
| SHO/HOO starless | GHS | Palette tonal kontrolü daha doğrudandır |

## Uygulama ve beklenen çıktılar

1. Linear color-calibrated clone ve karşılaştırma Preview’ları hazırlayın.
2. Küçük stretch factor ile başlayın; black point clipping yapmayın.
3. Star colors, galaxy/nebula faint color ve background noise’u inceleyin.
4. Histogram/right-tail ile highlight headroom’u kontrol edin.
5. Final black point/contrast için HT veya GHS’ye geçin.
6. CurvesTransformation saturation işlemini ColorMask/RangeMask ile sınırlayın.

Çıktıda star color ayrımı korunmalı, channel clipping oluşmamalı ve background gereksiz biçimde griye açılmamalıdır.

## OSC, mono ve process interactions

OSC’de debayer/integration ve SPCC doğru tamamlanmalıdır. Mono LRGB’de Arcsinh RGB’ye uygulanıp luminance ayrı HT/GHS ile işlenebilir; recombination sonrası color washout kontrol edilir. StarXTerminator ile stars ve starless ayrılmışsa Arcsinh star layer için, GHS/HT starless layer için ayrı değerlendirilebilir; PixelMath birleşimi katman türüne uygun olmalıdır.

## Sorun Giderme

| Belirti | Neden | Doğrulama | Düzeltme İş Akışı |
|---|---|---|---|
| Gray background | Stretch fazla | Background median | Daha küçük factor; HT ile final kontrol |
| Washed color | Calibration veya sonraki transform | Linear SPCC clone kıyası | Doğru girdiden yeniden başla |
| Pink/harsh stars | Channel clipping/recombine | RGB star cores | Stars layer ve PixelMath’i düzelt |
| Flat galaxy core | Highlight compression fazla | Core radial/tonal kıyas | HT/GHS ile kontrollü contrast |
| Noisy shadows | Low signal de açıldı | Linear noise estimate | NXT ve smaller stretch |

## Performans, sınırlamalar ve En İyi Uygulamalar

Point transform hızlıdır; asıl maliyet A/B denemesi ve color denetimidir. Faint color görünmesi gerçek SNR artışı değildir. Arcsinh’i tek başına final çözüm saymayın; HT/GHS ve Curves ile görevleri ayırın.

## Yaygın Hatalar

- Star color görünümünü doğru calibration kanıtı saymak
- Black point’i faint color kuyruğunun içine taşımak
- Mono veride özel color avantajı beklemek
- Final contrast ihtiyacını tek Arcsinh adımına yüklemek
- Stars/starless layer’ları uyumsuz stretch ile birleştirmek

## Ayrıca İnceleyin

- [Stretch teorisi](index.md)
- [HistogramTransformation](histogram-transformation.md)
- [GHS](generalized-hyperbolic-stretch.md)
- [SPCC](../05-color-calibration/spcc.md)
- [StarXTerminator](../06-ai-eklentileri/starxterminator.md)
- [GHS primer: arcsinh bağlamı](https://www.ghsastro.co.uk/doc/scripts/GeneralisedHyperbolicStretch/GeneralisedHyperbolicStretch.html)

## İlgili Süreçler

- [HistogramTransformation](histogram-transformation.md)
- [Generalized Hyperbolic Stretch](generalized-hyperbolic-stretch.md)
- [MaskedStretch](masked-stretch.md)

## İlgili İş Akışları

- [LRGB Galaksi](../15-workflows/lrgb-galaxy.md)
- [SHO ve HOO Narrowband](../15-workflows/sho-hoo.md)
- [OSC İş Akışı](../15-workflows/osc-workflow.md)

## Önceki Bölüm

[← MaskedStretch](masked-stretch.md)

## Sonraki Bölüm

[LRGB →](../08-lrgb/index.md)
