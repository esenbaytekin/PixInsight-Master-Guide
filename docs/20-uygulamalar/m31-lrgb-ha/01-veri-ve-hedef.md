# M31: Veri ve Hedef Kararları

!!! info "Sayfa Bilgisi"
    **Kategori:** Proje İş Akışı · **Düzey:** Advanced · **Tahmini okuma:** 5 dk
    **Anahtar kelimeler:** `M31 veri` · `LRGB` · `Ha` · `dataset` · `işleme hedefi`

## Amaç

İşleme başlamadan önce gözlem gerçeğini, genel workflow ilkesini ve bu projede alınacak kararı birbirinden ayırmak.

## Veri seti özeti

| Alan | Proje kaydı |
|---|---|
| Hedef | M31 |
| Acquisition type | Mono LRGB + Ha varsayımı; dosya başlıklarıyla doğrulanmalı |
| Kanallar | L, R, G, B, Ha bekleniyor |
| Poz / integration | Repository kaydında mevcut değil |
| Optik / kamera / filter set | Repository kaydında mevcut değil |
| Capture conditions | Repository kaydında mevcut değil |
| Data limitations | Kanal SNR, seeing, clipping ve gradient ölçülmeli |
| Processing goal | Doğal LRGB, yerel Ha, korunan core/dust/star color |

!!! warning "Eksik veri"
    Eksik alanlar tahmin edilmez. FITS/XISF metadata, acquisition log ve master ölçümleriyle doldurulmadan kamera veya poz süresine bağlı tavsiye verilmez.

## Başlamadan önce

1. Channel identity, bit depth, geometry ve linear state'i kaydedin.
2. L/R/G/B/Ha master'larını aynı STF karşılaştırmasıyla inceleyin; STF yalnız ekrandaki görünümü değiştirir.
3. Clipped core, satellite trail, gradient, PSF ve gürültü farklarını ayrı kaydedin.
4. “Ha eklemek” hedefini, tüm diski kırmızılaştırmak değil HII bölgelerini ayırmak olarak tanımlayın.

## Karar noktaları

| Kanıt | Karar | Alternatif |
|---|---|---|
| Ha'da yapı noise'dan ayrılıyor | Ha dalını açık tut | Daha fazla veri veya LRGB-only |
| Core ham master'da clipped | Kısa poz kaynağı ara | Core'u yapay olarak karartma |
| Kanallar farklı geometry | Registration planla | Birleştirmeyi durdur |
| Bir kanal belirgin düşük SNR | Kanal bazlı işleme | Aynı parametreleri kopyalama |

## Kalite kontrol ve durma ölçütü

Kanal kimlikleri ve eksikler kayıtlı, processing goal ölçülebilir ve geri dönüş checkpoint'leri adlandırılmışsa ilerleyin. Kanalın ne olduğu veya lineer durumu belirsizse durun.

## Görsel kanıt planı

Beş master'ın aynı ölçekte tam görüntüsü; core, dust lane ve yıldız alanından %100 crop; histogram ve metadata paneli.

## İlgili kavramlar ve sorun giderme

[Lineer ve Nonlineer](../../02-pixinsight-temelleri/lineer-ve-nonlineer-goruntu.md) · [Signal ve Noise](../../02-pixinsight-temelleri/sinyal-ve-gurultu.md) · [Veri Kalitesi](../../15-workflows/data-quality-strategies.md)

## Önceki / Sonraki

[← M31 projesi](index.md) · [WBPP →](02-wbpp.md)
