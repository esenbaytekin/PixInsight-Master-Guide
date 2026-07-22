# NGC 6888 SHO

**Durum: Taslak**

## Amaç

Bu bölüm, NGC 6888 SHO konusunun PixInsight tabanlı monokrom astrofotoğraf işleme akışındaki yerini ve temel karar noktalarını açıklamak için hazırlanmıştır.

## Ne zaman kullanılır?

Bu işlem veya yaklaşım iş akışında gerekli olduğunda kullanılır. Ayrıntılı kullanım ölçütleri **Doğrulama bekliyor**.

## Ne zaman kullanılmaz?

Veri ya da hedef koşulları uygun olmadığında kullanılmaz. Kesin dışlama ölçütleri **Doğrulama bekliyor**.

## Ön koşullar

- Kalibre edilmiş veriler veya ilgili önceki adım
- Lineer/nonlineer durumunun bilinmesi
- İşlem öncesinde çalışma kopyası ya da uygun geri dönüş noktası

## PixInsight menü yolu

**Doğrulama bekliyor.** Process ve parametre adları özgün İngilizce adlarıyla eklenecektir.

## Parametreler

!!! warning "Doğrulama bekliyor"
    Kesin parametre değerleri kaynaklarla ve örnek veriyle doğrulanmadan yayımlanmayacaktır.

## Uygulama adımları

1. Girdilerin uygunluğunu kontrol edin.
2. İşlemi bir önizleme veya çalışma kopyasında değerlendirin.
3. Sonucu yıldızlar, arka plan ve hedef yapıları üzerinde karşılaştırın.

## Beklenen sonuç

Kontrollü ve tekrarlanabilir bir sonuç elde edilmesi beklenir. Görsel kabul ölçütleri **Doğrulama bekliyor**.

## Sık yapılan hatalar

- Lineer ve nonlinear aşamaları karıştırmak
- Parametreleri veri ölçeğine göre değerlendirmemek
- Maske etkisini kontrol etmeden işlemi uygulamak

## Sorun giderme

| Belirti | Olası neden | İlk kontrol |
| --- | --- | --- |
| Sonuç aşırı güçlü | Parametre veya maske uygunsuz | Öncesi/sonrası karşılaştırması |
| Ayrıntı kaybı | Gürültü ve yapı ayrımı yetersiz | Yakınlaştırılmış önizleme |
| Renk/ton sapması | Kanal veya çalışma uzayı sorunu | Kanal ve profil denetimi |

## Hızlı referans

| Konu | Durum |
| --- | --- |
| Menü yolu | Doğrulama bekliyor |
| Önerilen parametreler | Doğrulama bekliyor |
| Örnek veri | Planlandı |

## Ayrıca İnceleyin

- [Ana Sayfa](../../index.md)
- [Veri ve Hedef](01-veri-ve-hedef.md)
- [Kanal Hazırlama](02-kanal-hazirlama.md)

## Önceki Bölüm

[← Final](../m31-lrgb-ha/08-final.md)

## Sonraki Bölüm

[Veri ve Hedef →](01-veri-ve-hedef.md)

## Kullanılan Süreçler

- [WBPP](../../03-kalibrasyon/wbpp.md)
- [DBE](../../04-gradient/dbe.md)
- [BlurXTerminator](../../06-ai-eklentileri/blurxterminator.md)
- [NoiseXTerminator](../../06-ai-eklentileri/noisexterminator.md)
- [SHO](../../09-narrowband/sho.md)
- [PixelMath](../../10-pixelmath/kanal-karisimlari.md)
- [ColorMask](../../11-maskeler/color-mask.md)
