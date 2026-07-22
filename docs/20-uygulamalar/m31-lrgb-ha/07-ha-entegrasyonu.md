# M31: Ha Entegrasyonu

!!! info "Sayfa Bilgisi"
    **Kategori:** Proje İş Akışı · **Düzey:** Expert · **Tahmini okuma:** 7 dk
    **Anahtar kelimeler:** `M31 Ha` · `HaRGB` · `HII mask` · `PixelMath` · `star color`

## Amaç

Ha'yı yalnız güvenilir yıldız oluşum bölgelerine katmak; global red contamination, magenta yıldız ve halo üretmemek.

## Başlamadan önce

LRGB baseline tamamlanmış; Ha geometry, scale, PSF, noise ve stretch state açısından uyumlu olmalıdır. Ha yapısı noise'dan ayrılamıyorsa bu aşama atlanır.

## Adım adım karar noktaları

1. Ha içindeki continuum/yıldız katkısı ile HII yapısını ayıran maskeyi üretin; maskeyi görüntü üzerinde değil ayrı görünümde inceleyin.
2. Maskenin yıldızları ve galaksi continuum'unu gereksiz seçmediğini %100 crop'ta doğrulayın.
3. Formül kullanılıyorsa input'ları, output intent'i, linear/nonlinear state'i, normalization varsayımını ve clipping riskini kaydedin; canonical formül açıklaması [PixelMath LRGB](../../08-lrgb/pixelmath-lrgb.md) sayfasındadır.
4. Universal blend yüzdesi kullanmayın. Katkıyı clone serisinde artırıp yalnız HII morfolojisinin değiştiği noktayı bulun.
5. Broadband star color için exclusion mask veya starless dalını değerlendirin; star recombination sonrası black halo kontrolü yapın.

| Belirti | Kök neden adayı | Düzeltici dal |
|---|---|---|
| Tüm galaksi kırmızı | Global Ha / geniş maske | Maskeyi daralt, normalization'ı kontrol et |
| Magenta veya kırmızı yıldız | Stellar Ha contribution | Star exclusion / starless dal |
| Neon HII knots | Katkı veya contrast fazla | Blend'i azalt, LRGB baseline'a dön |
| Ha kayboluyor | Maske çok kısıtlı veya sinyal zayıf | Maskeyi ve master SNR'ını ayır |

## Kalite kontrol ve ne zaman durmalı?

HII bölgeleri artarken core, dust lane, halo ve yıldız rengi değişmiyorsa katkı kabul edilir. Ha etkisini görmek için saturation veya contrast zorlamak gerekiyorsa veri kanıtı yetersiz olabilir; LRGB-only final geçerli sonuçtur.

## Görsel kanıt planı

Ha master, HII maskesi, star exclusion maskesi, LRGB/HaLRGB tam görüntü ve HII/star %100 crop çiftleri.

## İlgili kavramlar

[Ha Entegrasyonu](../../09-narrowband/hargb.md) · [Maskeler](../../11-maskeler/index.md) · [Starless Processing](../../09-narrowband/starless-processing.md)

## Önceki / Sonraki

[← LRGB](06-lrgb.md) · [Final →](08-final.md)
