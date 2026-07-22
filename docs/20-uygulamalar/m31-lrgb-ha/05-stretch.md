# M31: Stretch Stratejisi

!!! info "Sayfa Bilgisi"
    **Kategori:** Proje İş Akışı · **Düzey:** Advanced · **Tahmini okuma:** 5 dk
    **Anahtar kelimeler:** `M31 stretch` · `core protection` · `dust lane` · `RGB` · `luminance`

## Amaç

RGB ile luminance'ı, çekirdeği clip etmeden ve dust lane ton ayrımını sıkıştırmadan LRGB birleşimine hazırlamak.

## Başlamadan önce

Görüntülerin lineer state'i kesin olmalı; STF görünümü kalıcı stretch sanılmamalıdır. Black point ve highlight kararları histogram ile doğrulanır.

## Karar noktaları

1. RGB ve L için ayrı clone/checkpoint üretin; aynı stretch'i kopyalamak zorunlu değildir.
2. Core histogramda üst sınıra dayanıyorsa daha kademeli [GHS](../../07-stretch/generalized-hyperbolic-stretch.md) veya kontrollü [HistogramTransformation](../../07-stretch/histogram-transformation.md) dalı seçin.
3. Dust lane ile halo arasındaki orta ton ayrımını tam görüntüde izleyin; sırf çarpıcı görünüm için black point'i taşımayın.
4. RGB'yi color taşıyıcısı, L'yi structure taşıyıcısı olarak hazırlayın; iki görüntinin tonal uyumu LRGBCombination öncesi sınanır.

| Kontrol | Geçer | Başarısızlık |
|---|---|---|
| Core | Ton katmanları seçiliyor | Düz beyaz alan / clipping |
| Dust lane | İnce yapı sürekliliği var | Siyah ezilme veya yapay kontrast |
| Background | Noise var ama black point altında kesilmiyor | Lekeli / tamamen siyah zemin |
| RGB | Star color ayrımı sürüyor | Doygun çekirdek veya renksiz yıldız |

## Alternatif yollar ve durma ölçütü

L ile RGB farklı tonal tepki veriyorsa birleşimden önce ayrı stretch sürdürülür. Core korunuyor, dust lane okunuyor ve hiçbir kanal clip olmuyorsa daha dramatik stretch yerine LRGB testine geçin.

## Görsel kanıt planı

RGB ve L histogramları, STF referansı, kalıcı stretch sonrası tam görüntü, core/dust/background %100 crop.

## İlgili kavramlar

[Lineer ve Nonlineer](../../02-pixinsight-temelleri/lineer-ve-nonlineer-goruntu.md) · [STF ve HistogramTransformation](../../02-pixinsight-temelleri/stf.md)

## Önceki / Sonraki

[← BlurX ve NoiseX](04-blurx-noisex.md) · [LRGB →](06-lrgb.md)
