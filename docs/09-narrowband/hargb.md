# Hargb

!!! info "Sayfa Bilgisi"
    **Kategori:** Narrowband · **Düzey:** Advanced · **Tahmini okuma:** 3 dk
    **Anahtar kelimeler:** `Hargb` · `H-alpha RGB` · `narrowband` · `dar bant` · `Ha OIII SII`
    **Önerilen ön bilgiler:** [PixelMath Temelleri](../10-pixelmath/temeller.md) · [Maskeler](../11-maskeler/index.md)

**Durum: Taslak**

## Amaç

Bu bölüm, Hargb konusunun PixInsight tabanlı monokrom astrofotoğraf işleme akışındaki yerini ve temel karar noktalarını açıklamak için hazırlanmıştır.

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

- [Ana Sayfa](../index.md)
- [Bölüm Genel Bakışı](index.md)
- [Narrowband](index.md)
- [HOO](hoo.md)

## İlgili Süreçler

- [HOO](hoo.md)
- [SHO](sho.md)
- [Foraxx](foraxx.md)
- [Natural SHO](natural-sho.md)

## İlgili İş Akışları

- [Emisyon Nebulası](../15-workflows/emission-nebula.md)
- [SHO ve HOO Narrowband](../15-workflows/sho-hoo.md)
- [Gezegenimsi Nebula](../15-workflows/planetary-nebula.md)
- [NGC 6888 SHO](../20-uygulamalar/ngc6888-sho/index.md)

## Önceki Bölüm

[← Narrowband](index.md)

## Sonraki Bölüm

[HOO →](hoo.md)
