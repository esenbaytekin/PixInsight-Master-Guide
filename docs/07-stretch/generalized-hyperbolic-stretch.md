# Generalized Hyperbolic Stretch

!!! info "Sayfa Bilgisi"
    **Kategori:** Stretch · **Düzey:** Intermediate · **Tahmini okuma:** 3 dk
    **Anahtar kelimeler:** `Generalized Hyperbolic Stretch` · `GeneralizedHyperbolicStretch` · `GHS` · `stretch` · `nonlinear processing` · `histogram stretch`
    **Önerilen ön bilgiler:** [STF](../02-pixinsight-temelleri/stf.md) · [Histogram](../02-pixinsight-temelleri/histogram.md)

## Amaç

Global transfer curve’ün hangi tonal bölgede en fazla contrast üreteceğini ve shadows/highlights sıkıştırmasını HT’den daha esnek parametrelerle yönetmektir.

## Kuramsal Arka Plan, bilimsel arka plan ve sezgisel açıklama

GHS ailesi monoton intensity transformations kullanarak pixel sırasını korurken tonal aralıkları farklı oranlarda genişletir veya sıkıştırır. `Stretch factor`, `Local intensity` ve `Symmetry Point` birlikte curve şeklini belirler. Burada yayımlanmamış formül veya kontrol davranışı türetilmez; kurulu process sürümünün resmi dokümantasyonu esas alınır.

`Symmetry Point`, etkinin merkezlendiği tonal bölgeyi; stretch gücü dönüşümün büyüklüğünü; local intensity ise curve’ün bu bölge çevresindeki karakterini etkiler. Bir parametreyi tek başına “daha fazla detay” kontrolü saymak yanlıştır.

## Giriş Gereksinimleri ve iş akışı position

Lineer veya kontrollü nonlinear image, geçerli histogram, unclipped channels ve mask durumu gerekir. BXT/NXT ve SPCC kararları başlangıçtan önce tamamlanmalıdır. GHS global bir process’tir; LHE gibi local contrast aracının yerine geçmez.

## PixInsight menu path

Kurulu process module için `Process → IntensityTransformations → GeneralizedHyperbolicStretch`. Script ve process sürümleri aynı UI/parametre seti varsayılmamalıdır.

!!! warning "Genel Dönüşüm Sınırı"
    GHS object-aware bir local enhancement aracı değildir. Symmetry Point’i hedef üzerine koymak yalnız tonal aralığı seçer; nesneyi semantik olarak korumaz.

## Ne zaman kullanılır?

- Galaxy core ile faint halo arasında kontrollü compression gerektiğinde
- SHO/HOO veya starless nebula’da belirli tonal bölgeye contrast ayrılacağında
- HT’nin tek midtones kontrolü hedef dağılımı için yetersiz kaldığında

## Ne zaman kullanılmaz?

- Parametre ilişkisi histogram/curve üzerinde okunamıyorsa
- Lokal yapıyı global curve ile kurtarmaya çalışırken
- Gradient, clipping veya low-SNR eksikliğini gizlemek için
- Basit HT’nin aynı sonucu daha açık ve tekrarlanabilir verdiği durumda

## Parametreler ve Ayarlama Stratejisi

| Parametre/kavram | İşlev | Ayarlama gerekçesi | Yanlış kullanım |
|---|---|---|---|
| Transformation type | Curve ailesini seçer | Tonal hedefe uygun davranış | İsim üzerinden üstünlük varsaymak |
| Stretch factor | Dönüşüm gücü | Signal görünürlüğü yetersiz | Noise/star bloat |
| Local intensity | Curve şekli/yerel eğim etkisi | Contrast dağılımı yanlış | Sert geçiş veya flat tonlar |
| Symmetry Point | Etki odağını konumlandırır | Hedef tonal bölge farklı | Background/core yanlış bölgeye taşınır |
| Shadow/highlight protection | Uç bölgeleri sınırlar | Clipping/compression riski | Aşırı düz görünüm |
| Colour blend/RGB working space | Renk uygulamasını yönetir | Hue/saturation korunumu | Renk kayması |

Tipik strateji: histogramdan hedef tonal bölgeyi seç → küçük stretch factor → symmetry/local intensity etkileşimini preview’da karşılaştır → clipping yoksa uygula → yeni histogramla tekrar değerlendir.

## GHS ve HT

| Koşul | GHS | HT |
|---|---|---|
| Esnek tonal odak | Güçlü | Daha sınırlı |
| Basit tekrar üretim | Daha çok parametre | Güçlü |
| Galaxy core–halo | İnce ayar avantajı olabilir | Küçük adımlarla güvenilir |
| Black point kontrolü | Curve bağlamında | Doğrudan ve açık |
| Öğrenme/denetim yükü | Yüksek | Düşük |

## Pratik Karar Rehberi

| Durum | Önerilen İşlem | Gerekçe |
|---|---|---|
| SHO/HOO starless | GHS | Emission tonal bölgelerine kontrollü contrast |
| Galaxy core + faint halo | GHS veya iterative HT | Dinamik compression ihtiyacına göre |
| Basit broadband | HT | Daha az parametre, açık histogram kontrolü |
| Bright-star wide field | MaskedStretch | Iterative highlight protection |
| Color-critical OSC | Arcsinh + GHS/HT | Color başlangıcıyla tonal kontrol ayrılır |

## Uygulama ve çıktı

1. Clone üzerinde linear histogram ve target readout’larını kaydedin.
2. Transformation type’ı hedefe göre seçin; küçük strength ile başlayın.
3. Symmetry Point’i background’a değil korunacak/geliştirilecek tonal aralığa göre test edin.
4. Real-Time Preview’da background, target, core ve stars’ı ayrı kontrol edin.
5. Uygulama sonrası clipping, saturation ve noise’u ölçün.
6. İkinci adım gerekiyorsa yeni histogram üzerinden karar verin.

Beklenen çıktı, hedef tonal aralıkta contrast artarken shadow/highlight continuity’nin korunmasıdır. “Daha dramatik” görünüm tek başına başarı değildir.

## Sorun Giderme

| Belirti | Neden | Doğrulama | Düzeltme İş Akışı |
|---|---|---|---|
| Flat image | Compression fazla/geniş | Curve slope ve histogram | Etkiyi daralt veya HT kullan |
| Excessive contrast | Strength/local intensity fazla | Before/after readout | Parametreyi azalt, küçük adımlar |
| Lost faint nebula | SP/black region yanlış | Lineer STF kıyası | SP’yi yeniden seç, shadow protection |
| Harsh halo/stars | Highlight davranışı agresif | Star profile | Stars ayrı veya maskeli stretch |
| Noisy background | Background eğimi fazla | Background Preview | Etki odağını taşı, NXT geçmişini kontrol et |

## Performans, sınırlamalar ve En İyi Uygulamalar

Preview histogramı mask etkisini her durumda tam temsil etmeyebilir; resmi GHS dokümantasyonu bu sınıra dikkat çeker. Global curve local contrast veya denoise üretmez. Parametre log’unu ve process instance’ı saklayın; aynı hedefe art arda kontrolsüz curve uygulamayın.

## Yaygın Hatalar

- Symmetry Point’i object selection sanmak
- Strength ile local intensity’yi bağımsız değerlendirmek
- Preview mask tahminini kesin output histogramı saymak
- Basit HT yeterliyken gereksiz parametre karmaşıklığı eklemek
- Noise veya gradient’i contrast ile bastırmaya çalışmak

## Ayrıca İnceleyin

- [Stretch teorisi](index.md)
- [HistogramTransformation](histogram-transformation.md)
- [GHS process documentation](https://www.ghsastro.co.uk/doc/tools/GeneralizedHyperbolicStretch/GeneralizedHyperbolicStretch.html)
- [GHS primer](https://www.ghsastro.co.uk/doc/scripts/GeneralisedHyperbolicStretch/GeneralisedHyperbolicStretch.html)

## İlgili Süreçler

- [HistogramTransformation](histogram-transformation.md)
- [MaskedStretch](masked-stretch.md)
- [ArcsinhStretch](arcsinh-stretch.md)

## İlgili İş Akışları

- [LRGB Galaksi](../15-workflows/lrgb-galaxy.md)
- [SHO ve HOO Narrowband](../15-workflows/sho-hoo.md)
- [OSC İş Akışı](../15-workflows/osc-workflow.md)

## Önceki Bölüm

[← HistogramTransformation](histogram-transformation.md)

## Sonraki Bölüm

[MaskedStretch →](masked-stretch.md)
