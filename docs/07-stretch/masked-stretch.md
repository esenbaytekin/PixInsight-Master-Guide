# MaskedStretch

!!! info "Sayfa Bilgisi"
    **Kategori:** Stretch · **Düzey:** Intermediate · **Tahmini okuma:** 3 dk
    **Anahtar kelimeler:** `MaskedStretch` · `Masked Stretch` · `stretch` · `nonlinear processing` · `histogram stretch`
    **Önerilen ön bilgiler:** [STF](../02-pixinsight-temelleri/stf.md) · [Histogram](../02-pixinsight-temelleri/histogram.md)

## Amaç

Bir dizi zayıf nonlinear transformu, önceki iteration sonucundan türetilen koruma ile uygulayarak highlights, bright stars ve nebula cores’un erken saturation riskini azaltmaktır.

## Kuramsal Arka Plan ve mathematical sezgisel açıklama

PixInsight Staff açıklamasına göre MaskedStretch, güçlü tek MTF yerine çok sayıda zayıf MTF uygular; image geliştikçe ardışık maskeler bright structures’ı daha güçlü korur. Process point operation olarak tasarlanmıştır. Bu otomatik yaklaşım fiziksel object recognition değildir ve her hedefi doğru tanıdığı varsayılmaz.

## Giriş Gereksinimleri ve iş akışı position

Girdi lineer, color-calibrated, gradient açısından temiz ve uygun background reference içermelidir. BXT önce, NXT ise veri planına göre genellikle önce uygulanır. MaskedStretch sonrası görüntü nonlinear’dır.

## PixInsight menu path

`Process → IntensityTransformations → MaskedStretch`

!!! warning "Arka Plan Referansı"
    Galaxy halo, cirrus veya diffuse nebula içeren ROI otomatik mask/stretch kararını gerçek sinyal aleyhine yönlendirebilir.

## Ne zaman kullanılır?

- Bright stars içeren wide-field görüntülerde
- Galaxy/nebula core ve star saturation geciktirilmek istendiğinde
- Otomatik iterative başlangıç, kontrollü HT/GHS devamıyla birleştirilecekse

## Ne zaman kullanılmaz?

- Background reference hedef sinyali, cirrus veya gradient içeriyorsa
- Çok koyu/bozuk lineer veri auto-stretch için yeterli değilse
- Lokal star repair veya gradient correction amacıyla
- Processin automatic sonucu histogram ve stars üzerinde denetlenemiyorsa

## Parameters

| Kontrol | Amaç | Karar gerekçesi | Risk |
|---|---|---|---|
| Target background | Final background seviyesini yönlendirir | Ölçülmüş display hedefi | Gray background veya noise görünürlüğü |
| Number of iterations | Küçük adım sayısı | Daha kademeli koruma gerekiyorsa | Süre artışı; otomatik üstünlük yok |
| Clipping fraction | Shadow davranışını sınırlar | Gerçek boş headroom varsa | Faint signal clipping |
| Background reference/ROI | Background estimate sağlar | Temsilî, temiz alan varsa | Halo/nebula renginin bozulması |

Sabit target background veya iteration reçetesi verilmez. Image scale, noise, hedef ve display amacı birlikte belirleyicidir.

## Avantajlar ve sınırlamalar

| Avantaj | Sınır |
|---|---|
| Bright highlights’ı iterative koruma | Sonuç bazen flat/gray olabilir |
| Star saturation ve bloat’ı sınırlama eğilimi | Background estimate’e duyarlıdır |
| Tek process ile tekrar üretilebilir başlangıç | Tonal curve üzerinde GHS kadar doğrudan kontrol yoktur |
| Parallelized implementation | Iteration arttıkça süre artar |

## Pratik Karar Rehberi

| Durum | Önerilen İşlem | Gerekçe |
|---|---|---|
| Dense bright stars | MaskedStretch | Iterative highlight protection |
| Wide-field nebula | MaskedStretch + HT/GHS | Stars korunur, final contrast ayrıca kurulur |
| Natural galaxy core | HT/GHS karşılaştır | MaskedStretch core’u fazla düzleştirebilir |
| Low-SNR background | Küçük HT/GHS | MaskedStretch noise’u görünür kılabilir |
| OSC color | Arcsinh veya MaskedStretch A/B | Color ve star protection önceliğine göre |

## Uygulama ve beklenen çıktılar

1. Background için birden fazla temiz Preview adayını Statistics ile karşılaştırın.
2. Clone üzerinde konservatif target background ve iteration testi yapın.
3. Star cores, halo, galaxy core ve faint region’ı aynı STF/zoom ile karşılaştırın.
4. Output histogramında black/white clipping kontrolü yapın.
5. Flat görünüm varsa doğrudan black point kesmek yerine HT/GHS/Curves ile kontrollü contrast planlayın.

Çıktıda bright structures saturation’dan korunmalı; background aşırı açılmamalı ve faint signal otomatik maskeyle biçim değiştirmemelidir.

## Şunlarla etkileşim: color calibration ve NoiseXTerminator

SPCC/BackgroundNeutralization önce tamamlanmalıdır; yanlış background reference, calibration sonucunu görsel olarak yeniden eğebilir. NXT’yi MaskedStretch öncesinde uygulamak stretch ile büyüyecek noise’u azaltabilir; fazla denoise ise otomatik maskenin signal dağılımını değiştirir. Her iki sıra clone üzerinde karşılaştırılmalıdır.

## Sorun Giderme

| Belirti | Neden | Doğrulama | Düzeltme İş Akışı |
|---|---|---|---|
| Gray/flat output | Target background yüksek | Histogram ve background median | Daha düşük hedef; sonra kontrollü HT/GHS |
| Black or too dark error | Input/background estimate uygun değil | Lineer histogram/ROI | Calibration ve ROI’yi düzelt |
| Harsh halo | Bright star çevresi yanlış korunuyor | Star radial profile | Alternatif process veya star mask |
| Faint nebula kaybı | ROI/masking target içeriyor | Lineer STF kıyası | Temiz ROI ve yeni clone |
| Noisy background | Stretch noise’u yükseltti | Linear noise estimate | NXT kararını ve target background’u revize et |

## Performans ve En İyi Uygulamalar

Iteration sayısı süreyi etkiler; process parallelized olsa da büyük drizzle görüntülerinde bellek/CPU yükü artabilir. Temsilî Preview/clone testleri yapın. Process log, ROI ve target background kaydedilmelidir.

## Yaygın Hatalar

- Tek bir “boş görünen” ROI’yi ölçmeden kullanmak
- Target background’u ekran parlaklığına göre yükseltmek
- Flat sonucu black point clipping ile sertleştirmek
- NoiseXTerminator sırasını test etmeden sabitlemek
- MaskedStretch’i explicit star mask ile aynı kavram sanmak

## Ayrıca İnceleyin

- [Stretch teorisi](index.md)
- [HistogramTransformation](histogram-transformation.md)
- [NoiseXTerminator](../06-ai-eklentileri/noisexterminator.md)
- [PixInsight Staff: New MaskedStretch Tool](https://pixinsight.com/forum/index.php?threads/new-maskedstretch-tool.6420/)

## İlgili Süreçler

- [HistogramTransformation](histogram-transformation.md)
- [Generalized Hyperbolic Stretch](generalized-hyperbolic-stretch.md)
- [ArcsinhStretch](arcsinh-stretch.md)

## İlgili İş Akışları

- [LRGB Galaksi](../15-workflows/lrgb-galaxy.md)
- [SHO ve HOO Narrowband](../15-workflows/sho-hoo.md)
- [OSC İş Akışı](../15-workflows/osc-workflow.md)

## Önceki Bölüm

[← Generalized Hyperbolic Stretch](generalized-hyperbolic-stretch.md)

## Sonraki Bölüm

[ArcsinhStretch →](arcsinh-stretch.md)
