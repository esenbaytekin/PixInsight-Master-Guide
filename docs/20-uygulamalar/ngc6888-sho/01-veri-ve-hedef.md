# NGC 6888: Veri ve Hedef Kararları

!!! info "Sayfa Bilgisi"
    **Kategori:** Proje İş Akışı · **Düzey:** Advanced · **Tahmini okuma:** 5 dk
    **Anahtar kelimeler:** `NGC 6888 veri` · `Ha` · `OIII` · `SII` · `weak channel`

## Amaç

Hedefe ilişkin genel bilgi ile gerçek acquisition kaydını ayırmak ve zayıf OIII iddiasını görüntü kanıtıyla sınamak.

## Veri seti özeti

| Alan | Proje kaydı |
|---|---|
| Target | NGC 6888 |
| Acquisition type | Mono narrowband varsayımı; metadata ile doğrulanmalı |
| Channels | Ha ve OIII bekleniyor; SII varlığı doğrulanmalı |
| Exposure / integration | Repository kaydında mevcut değil |
| Optical system / camera / filters | Repository kaydında mevcut değil |
| Capture conditions | Repository kaydında mevcut değil |
| Data limitations | OIII düşük SNR senaryosu; ölçüm gerekir |
| Processing goal | OIII morfolojisini koruyan HOO veya veri uygunsa SHO |

!!! warning "Proje gerçeği"
    NGC 6888'in hedef özellikleri, bu veri setinde OIII'nin gerçekten ölçüldüğü anlamına gelmez. Kanal master'ı ve acquisition kaydı kanıtın sahibidir.

## Başlamadan önce

Channel identity, lineer state, geometry, clipping, gradient, star halo, noise ve OIII morfolojisini kaydedin. Aynı STF görünümü yalnız görsel karşılaştırmadır; sayısal normalization değildir.

## Karar noktaları

| Kanıt | Karar | Alternatif |
|---|---|---|
| OIII shell/outer structure noise'dan ayrılıyor | OIII dalına devam | Daha fazla veri / Ha-only |
| SII güvenilir yapı taşıyor | SHO adayını aç | HOO |
| Kanal geometry farklı | Registration düzelt | Combine etme |
| Halo yalnız bir filter'da | Kanal/star planında ayır | Global blur/denoise ile gizleme |

## Kalite kontrol ve durma ölçütü

Kanal kimliği ve fiziksel anlamı açık, eksik dataset facts işaretli ve OIII yapısı sabit crop'ta gösterilebiliyorsa ilerleyin. OIII yalnız agresif STF ile rastgele blotch olarak görünüyorsa palette'e geçmeyin.

## Görsel kanıt planı

Aynı koordinatta Ha/OIII/SII full-frame ve %100 shell/background/star crop; histogram ve metadata.

## İlgili kavramlar

[SII–Ha–OIII](../../09-narrowband/index.md) · [Signal ve Noise](../../02-pixinsight-temelleri/sinyal-ve-gurultu.md) · [Narrowband Genel Bakış](../../09-narrowband/index.md)

## Önceki / Sonraki

[← NGC 6888 projesi](index.md) · [Kanal hazırlama →](02-kanal-hazirlama.md)
