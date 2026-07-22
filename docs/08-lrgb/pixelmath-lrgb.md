# PixelMath ile LRGB

## Amaç

LRGBCombination’ın global kontrolü yetersiz olduğunda luminance contribution, mask, normalization ve layer blending’i açık ifadelerle yönetmektir.

## Kuramsal Arka Plan ve safety

Basit blend yüksek seviyede `result = (1-w)·RGB + w·L-derived color` fikrine dayanır; exact formulation color space ve hedefe göre değişir. Coefficients toplamı, input range ve clipping kontrol edilmelidir.

## Giriş Gereksinimleri

L/RGB geometry ve state eşleşmeli; identifier’lar açık; mask ve weight image’ları `[0,1]` aralığında doğrulanmış olmalıdır. Yeni image output tercih edilir.

## LRGBCombination ve PixelMath

| Konu | LRGBCombination | PixelMath |
|---|---|---|
| Basit global LRGB | Güçlü | Daha fazla kurulum |
| Masked/local blend | Sınırlı | Esnek |
| Safety | UI yönlendirmesi | Kullanıcı sorumluluğu |
| Reproducibility | İşlem instance | Expression + symbols + settings |

## Pratik Karar Rehberi

| Durum | Öneri | Gerekçe |
|---|---|---|
| Standard galaxy LRGB | LRGBCombination | Daha sade |
| Core/halo farklı L weight | PixelMath + RangeMask | Spatial control |
| Starless workflow | PixelMath | Layer control |
| HaRGB | PixelMath | Emission contribution açıkça tanımlanır |
| RGB-only | ChannelCombination | Ek karmaşıklık gerekmez |

## Tarif: ağırlıklı luminance birleşimi

- **Validation Status:** 🟨 Experimental
- **Applicable data:** Geometry/state matched L ve RGB
- **Purpose:** L contribution’ı mask veya weight ile sınırlamak
- **Workflow position:** SPCC ve L hazırlama sonrası
- **Inputs:** `RGB`, `L`, normalize edilmiş `M`, `w`
- **Conceptual expression:** `(1-w*M)*RGB + (w*M)*Lrgb`
- **Expected outcome:** Seçilen bölgelerde kontrollü detail contribution
- **Known limitations:** `Lrgb` üretim yöntemi ve color space sonucu belirler; ifade doğrudan universal recipe değildir
- **Potential risks:** Range overflow, desaturation, seams
- **Alternative approaches:** LRGBCombination veya masked Curves

## Tarif: starless yeniden birleştirme

- **Validation Status:** 🟦 Community Practice
- **Applicable data:** Eşleşen `starless` ve `stars` layers
- **Purpose:** Ayrı işlenen layers’ı birleştirmek
- **Workflow position:** StarXTerminator ve ayrı stretch/color işlemleri sonrası
- **Inputs:** Layer türü ve üretim ayarı belgelenmiş images
- **Expected outcome:** Target detail ve stars birlikte
- **Known limitations:** Additive ve screen/unscreen layers aynı formülle birleşmez
- **Potential risks:** Brightness shift, halo ve clipping
- **Alternative approaches:** StarXTerminator’ın önerdiği layer-specific workflow

## Uygulama, sorun giderme ve En İyi Uygulamalar

1. Expression’ı constants ile değil symbols ile kurun.
2. Yeni image üretin; single-channel Preview ve `$T` semantiğini karıştırmayın.
3. Weight/mask min–max değerlerini kontrol edin.
4. Output’u RGB-only ve LRGBCombination ile karşılaştırın.

Black/white output genellikle range veya identifier hatasıdır; color washout aşırı L contribution; seam mask transition sorunudur. [Hata Ayıklama](../10-pixelmath/hata-ayiklama.md) akışını kullanın.

!!! warning "Formül bağlamı"
    Conceptual LRGB ifadesini color-space dönüşümü tanımlamadan doğrudan final formula saymayın.

## İlgili Süreçler

- [PixelMath Temelleri](../10-pixelmath/temeller.md)
- [LRGBCombination](lrgb-combination.md)
- [StarXTerminator](../06-ai-eklentileri/starxterminator.md)
- [RangeMask](../11-maskeler/range-mask.md)
