# NGC 6888: HOO veya SHO Kombinasyonu

!!! info "Sayfa Bilgisi"
    **Kategori:** Proje İş Akışı · **Düzey:** Expert · **Tahmini okuma:** 7 dk
    **Anahtar kelimeler:** `NGC 6888 HOO` · `NGC 6888 SHO` · `palette` · `PixelMath` · `OIII`

## Amaç

Kanal kanıtına göre HOO ya da SHO dalını seçmek; physical channel meaning ile displayed color'ı karıştırmadan OIII morfolojisini korumak.

## Palette karar matrisi

| Dal | Girdi koşulu | Amaç | Başlıca risk |
|---|---|---|---|
| HOO | Güvenilir Ha + OIII | Kırmızı/cyan morfolojik ayrım | Ha dominance veya cyan noise |
| SHO | Güvenilir SII + Ha + OIII | Üç kanal yapısını renk uzayında ayırmak | Raw green dominance, zayıf kanal gürültüsü |
| Documentary | Kanal mapping'i açık ve sınırlı remap | Ölçüm-kanal ilişkisinin okunması | Estetik beklentiyle aşırı düzeltme |
| Structural / subtle | Yapıyı ayıran kontrollü remap | Morfolojik okunabilirlik | Fiziksel ölçümü “doğal renk” sanmak |
| Artistic aggressive | Açıkça etiketli yorum | Görsel palette hedefi | Clipping, hue discontinuity, noise |

## Adım adım karar noktaları

1. SII güvenilir değilse SHO'yu kapatın; synthetic kanal kullanılıyorsa “ölçülmüş SII” diye sunmayın.
2. HOO/SHO mapping'i [canonical palette sayfalarından](../../09-narrowband/index.md) alın; burada formül kopyası üretmeyin.
3. Formül kaydına input'lar, output intent, image state, normalization, dynamic range ve clipping riskini ekleyin.
4. HOO'da global red sonucu OIII'yi zorla cyanlaştırarak değil channel preparation ve blend mimarisiyle çözün.
5. SHO'da raw green dominance'ı otomatik SCNR ile silmeyin; documentary, subtle veya structural branch hedefini önce belirleyin.
6. Synthetic luminance yalnız gerçek bir yapı/SNR amacı varsa; zayıf OIII noise'unu luminance'a taşımıyorsa değerlendirilir.

## Kalite kontrol

| Kontrol | Beklenen | Düzeltme |
|---|---|---|
| Channel identity | Mapping kaydı açık | PixelMath sembol/girdi kaydı |
| OIII | Shell/outer morphology görünür | OIII normalization/mask dalına dön |
| Green | Bilinçli palette sonucu | Hue remap hedefini tanımla |
| Stars | Palette artefaktı sınırlı | Natural-color star branch / separation |

## Ne zaman durmalı?

Palette ayrımı yalnız clipping, aşırı saturation veya noise renklendirmesiyle görünüyorsa durun. Daha basit HOO, kanıtsız SHO'dan; restrained palette, aşırı remap'ten daha savunulabilir olabilir.

## Görsel kanıt planı

Raw mapping, documentary/subtle/structural varyantlar, HOO/SHO full-frame ve OIII/star/background %100 crop matrisi.

## İlgili kavramlar ve process sayfaları

[HOO](../../09-narrowband/hoo.md) · [SHO](../../09-narrowband/sho.md) · [Alternatif Paletler](../../09-narrowband/foraxx.md) · [PixelMath](../../10-pixelmath/kanal-karisimlari.md)

## Önceki / Sonraki

[← Kanal hazırlama](02-kanal-hazirlama.md) · [Maskeler →](04-maskeler.md)
