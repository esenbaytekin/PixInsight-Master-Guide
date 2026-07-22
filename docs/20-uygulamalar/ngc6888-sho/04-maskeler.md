# NGC 6888: Maske Stratejisi

!!! info "Sayfa Bilgisi"
    **Kategori:** Proje İş Akışı · **Düzey:** Expert · **Tahmini okuma:** 7 dk
    **Anahtar kelimeler:** `NGC 6888 mask` · `OIII mask` · `RangeSelection` · `mask polarity` · `star mask`

## Amaç

OIII shell, bright Ha, stars ve background için hangi bölgenin seçildiğini açıkça gösteren; işlem polaritesi doğrulanmış maskeler kurmak.

## Adım adım karar noktaları

1. Her maskeye tek görev verin: OIII protection, background protection, star exclusion veya structure selection.
2. Maskeyi görünür hale getirip siyah/beyaz/gri tonların hangi etkiyi temsil ettiğini küçük bir test işlemiyle doğrulayın.
3. OIII maskesini yalnız parlaklık kopyası yapmayın; gerçek shell morfolojisi ile noise blotch'larını %100 ölçekte ayırın.
4. Feathering/scale, hedef yapının sınırını kesmeyecek kadar geniş; unrelated background'ı seçmeyecek kadar sınırlı olmalıdır.
5. Maskeyi uyguladıktan sonra düşük etkili test yapın ve maskesiz clone ile kıyaslayın.

## Tanı dalları

### Maske tamamen beyaz görünüyor

Range/transfer aralığı görüntünün tamamını seçiyor olabilir. Histogramı ve maskenin gerçek pixel aralığını inceleyin; yalnız STF görünümüne güvenmeyin. Kaynağın stretch state'i ile maske üretim varsayımını eşleştirin.

### Maske sonrası görüntü kırmızı oluyor

Önce bunun maskenin görüntülenmesi/overlay'i mi, yanlış image view'a uygulanması mı, yoksa yanlış polarity nedeniyle işlemin tüm red-dominant alana uygulanması mı olduğunu ayırın. Maskeyi kaldırıp clone ile karşılaştırmadan color düzeltmesi eklemeyin.

| Maske | Seçmesi gereken | Seçmemesi gereken | Kanıt |
|---|---|---|---|
| OIII | Güvenilir shell/outer structure | Random background noise | Mask + OIII crop |
| Background | Signal dışı zemin | Nebula uzantısı | Full-frame overlay |
| Star | Yıldız çekirdeği/halo hedefi | Nebula knots | Star/nebula crop |
| Structure | İşlenecek ölçek | Core clipping alanı | İşlem öncesi/sonrası |

## Ne zaman durmalı?

Maskenin neyi seçtiğini tek cümle ve bir görselle gösteremiyorsanız işlem uygulamayın. All-white/all-black maske veya yanlış polarity çözülmeden OIII koruma aşamasına geçmeyin.

## Görsel kanıt planı

Her maskenin grayscale görünümü, overlay'i, ters polarity testi ve shell/background/star %100 crop'u.

## İlgili kavramlar ve process sayfaları

[Maskeler](../../11-maskeler/index.md) · [RangeMask](../../11-maskeler/range-mask.md) · [StarMask](../../11-maskeler/star-mask.md) · [Narrowband Mask](../../09-narrowband/mask-strategy.md)

## Önceki / Sonraki

[← HOO/SHO](03-sho-kombinasyonu.md) · [OIII koruma →](05-oiii-koruma.md)
