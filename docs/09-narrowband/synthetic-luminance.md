# Sentetik Parlaklık

!!! info "Sayfa Bilgisi"
    **Kategori:** Narrowband · **Düzey:** Advanced · **Tahmini okuma:** 10 dk
    **Anahtar kelimeler:** `synthetic luminance` · `sentetik parlaklık` · `max channel` · `weighted luminance` · `Ha luminance`
    **Önerilen ön bilgiler:** [Dinamik Aralık](../02-pixinsight-temelleri/dinamik-aralik-ve-yerel-kontrast.md) · [Kanal Normalizasyonu](channel-normalization-and-weighting.md)

## Amaç

Dar bant kanallardan üretilen sentetik parlaklığın yapısal rolünü, noise ve color separation bedellerini açıklamak.

## Luminance neyi temsil eder?

Bir color workflow'da luminance, output intensity/structure taşıyıcısı olarak kullanılır. Sentetik parlaklık (synthetic luminance), bağımsız broadband L exposure yerine mevcut Ha/OIII/SII kanallarından türetilmiş bir intensity proxy'sidir. Yeni foton veya bağımsız SNR eklemez; mevcut kanalları yeniden birleştirir.

## Mimari seçenekler

| Yaklaşım | Kavramsal sonuç | Risk |
|---|---|---|
| Average | Bütün kanallar eşit katkı verir | Zayıf/noisy kanal structure'ı yumuşatabilir |
| Weighted average | Seçilmiş kanal daha fazla structure taşır | Weight gerekçesi color morphology'yi bias edebilir |
| Max-channel | Her pikselde en güçlü kanal seçilir | Noise spikes, yıldız boyutu ve sert geçişler |
| Ha-dominant | Yüksek SNR'lı Ha detail'i taşır | OIII/SII'ye özgü yapı kaybolabilir |
| No synthetic luminance | Color channels kendi intensity'sini korur | Detail kontrolü daha sınırlı olabilir |

Basit `L = wH·Ha + wO·OIII + wS·SII` ifadesi yalnız kavramsal illustration'dır. Input'ların lineer ve aynı geometry'de olduğu, normalization kararının belgelendiği, ağırlıkların toplamı ve output range'in kontrol edildiği varsayılmalıdır. Uygulanabilir syntax [PixelMath Kanal Karışımları](../10-pixelmath/kanal-karisimlari.md) sayfasına aittir.

## Ne zaman yardımcı olur?

- Color palette'den bağımsız detail/contrast kontrolü gerektiğinde.
- Birden fazla kanaldaki tamamlayıcı morphology tek intensity layer'da isteniyorsa.
- Luminance işlemleri için noise'u ölçülmüş, belgelenmiş bir structure proxy gerekiyorsa.

## Ne zaman zarar verebilir?

- Ha dominance, OIII/SII color separation'ı intensity içinde bastırıyorsa.
- Max-channel noise spikes veya farklı star profiles taşıyorsa.
- Synthetic L fazla contrast/clipping üreterek RGB palette'i zorladığında.
- Input'lar farklı stretch state'lerinde veya normalization varsayımları uyumsuzsa.
- Renkli görüntü zaten yeterli structure ve SNR sağlıyorsa.

## Dynamic-range ve star-size kontrolü

Her kaynak kanal farklı star FWHM, halo ve highlight dağılımı taşıyabilir. Sentetik luminance parlak yıldızlarda en geniş profile'ı veya en yüksek çekirdeği devralabilir. Combination öncesi max value, clipped pixel, star profile ve nebula/background histogramı ayrı kontrol edilir.

## Görsel planı

!!! example "Gerçek veri görseli — sentetik luminance alternatifleri"
    **Eğitim amacı:** Average, weighted, max-channel ve Ha-dominant sonuçların structure/noise farkını göstermek.
    **Kaynak/kanallar:** Proje Ha/OIII/SII masters.
    **Durum:** Lineer ve normalized/unnormalized çiftleri.
    **Varyantlar:** Dört sentetik L ve no-L final.
    **İşaretleme:** Weak OIII, SII rims, noise spikes, star profiles ve clipping.
    **Beklenen ders:** Tek bir sentetik luminance her hedefte üstün değildir.
    **Proje verisi gerekli:** Evet.

## İlgili sayfalar

- [Luminance Hazırlama](../08-lrgb/luminance-hazirlama.md)
- [LRGBCombination](../08-lrgb/lrgb-combination.md)
- [SHO](sho.md) · [HOO](hoo.md)
- [Yıldızsız İşleme](starless-processing.md)

## Önceki Bölüm

[← Kanal Normalizasyonu](channel-normalization-and-weighting.md)

## Sonraki Bölüm

[Yıldızsız İşleme →](starless-processing.md)
