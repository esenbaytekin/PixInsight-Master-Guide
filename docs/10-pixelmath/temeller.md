# PixelMath Temelleri

## Amaç

Expression, identifier, variable, operator, channel ve output kavramlarını güvenli bir mental modelle öğretmektir.

## Concepts

| Kavram | Anlam | Risk |
|---|---|---|
| Image identifier | Açık image/window kaynağı | Rename/typo ile not found |
| `$T` | Mevcut target bağlamı | New image/replace semantiğini karıştırma |
| Symbol | Tekrar kullanılan scalar/expression | Tanımsız veya yanlış type |
| Operator | Arithmetic/comparison/logic | Precedence hatası |
| Function | Tanımlı matematik/selection işlemi | Undocumented function uydurma |
| Channel expression | R/G/B veya tek output hesabı | Channel mismatch |

## Mathematical sezgisel açıklama

`a*A + b*B`, aynı koordinattaki A ve B pixel’lerini coefficients ile birleştirir. `M*A + (1-M)*B`, M bir `[0,1]` mask ise spatial blend üretir. Coefficients ve inputs aynı range/state’te değilse bu sezgi bozulur.

## Giriş/çıktı requirements

Geometry eşleşmeli, required channels mevcut, identifier’lar benzersiz ve output range planı açık olmalıdır. Floating-point new image debug için güvenlidir; final bit depth workflow’a göre seçilir.

## Operators ve evaluation order

Arithmetic, comparison ve boolean operations nested expressions oluşturur. High-level güvenlik kuralı: intended grouping’i parentheses ile yazın; kısa ama belirsiz ifade yerine uzun ve açık ifade kullanın.

## Parameters

| Setting | Karar | Kontrol |
|---|---|---|
| Use single RGB/K expression | Aynı formula tüm channels | Channel semantics |
| Separate channel expressions | Channel-specific mapping | Her kanal range’i |
| Create new image | Test/debug | Identifier/bit depth |
| Replace target | Yalnız doğrulanmış final | Clone/history |
| Rescale | Output range’i yeniden eşleme | Relative photometry değişir |
| Truncate/clamp | Range dışını sınırlama | Bilgi clipping’i |

## Pratik Karar Rehberi

| Durum | Öneri | Gerekçe |
|---|---|---|
| İlk formula testi | New image | Orijinal korunur |
| RGB mapping | Separate R/G/B expressions | Mapping açık olur |
| Masked blend | `M*A+(1-M)*B` kavramı | Spatial weight izlenir |
| Range belirsiz | Rescale kapalı test + Statistics | Gerçek overflow görünür |
| Karmaşık formula | Symbols ve ara images | Debug kolaylaşır |

## Örnek: ağırlıklı ortalama

- **Validation Status:** 🟦 Community Practice
- **Applicable data:** Eşleşen mono images `A`, `B`
- **Purpose:** Basit ağırlıklı ortalama
- **Workflow position:** Normalization doğrulandıktan sonra
- **Inputs:** `A`, `B`, `w` in `[0,1]`
- **Expression:** `w*A + (1-w)*B`
- **Expected outcome:** İki image arasında convex blend
- **Known limitations:** Noise/SNR-optimal weight değildir
- **Potential risks:** State/scale mismatch
- **Alternative approaches:** ImageIntegration weighting

## Yaygın Hatalar ve sorun giderme

Identifier not found için window adı; black/white output için min/max; unexpected color için channel expressions; dimension mismatch için geometry kontrol edilir. [Hata Ayıklama](hata-ayiklama.md) tablosunu kullanın.

!!! tip "Ara sonuç"
    Uzun expression’ı tek seferde çalıştırmak yerine alt ifadeleri geçici images olarak üretin.

## İlgili Süreçler

- [Koşullar ve Fonksiyonlar](kosullar-ve-fonksiyonlar.md)
- [Kanal Karışımları](kanal-karisimlari.md)
- [LRGB](../08-lrgb/index.md)

## İlgili İş Akışları

- [LRGB + Ha Galaksi](../15-workflows/lrgb-ha-galaxy.md)
- [SHO ve HOO Narrowband](../15-workflows/sho-hoo.md)
- [M31 LRGB + Ha](../20-uygulamalar/m31-lrgb-ha/index.md)
- [NGC 6888 SHO](../20-uygulamalar/ngc6888-sho/index.md)

## Önceki Bölüm

[← PixelMath](index.md)

## Sonraki Bölüm

[Koşullar ve Fonksiyonlar →](kosullar-ve-fonksiyonlar.md)
