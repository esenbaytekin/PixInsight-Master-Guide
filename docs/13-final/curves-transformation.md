# CurvesTransformation

**Durum: Taslak**

## Amaç

Bu bölüm, CurvesTransformation konusunun PixInsight tabanlı monokrom astrofotoğraf işleme akışındaki yerini ve temel karar noktalarını açıklamak için hazırlanmıştır.

## Ne zaman kullanılır?

Bu işlem veya yaklaşım iş akışında gerekli olduğunda kullanılır. Ayrıntılı kullanım ölçütleri **Doğrulama bekliyor**.

## Ne zaman kullanılmaz?

Veri ya da hedef koşulları uygun olmadığında kullanılmaz. Kesin dışlama ölçütleri **Doğrulama bekliyor**.

## Ön koşullar

- Kalibre edilmiş veriler veya ilgili önceki adım
- Lineer/nonlineer durumunun bilinmesi
- İşlem öncesinde çalışma kopyası ya da uygun geri dönüş noktası

## PixInsight menü yolu

`Process > IntensityTransformations > CurvesTransformation`

Process adı ve bu menü yolu PixInsight UI ekranında doğrudan okunmuştur. Ayrıntılı kanıt repository içindeki `validation/ui/pi-1.9.3/curves-transformation/curves-transformation-evidence-matrix.md` dosyasındadır.

!!! warning "UI doğrulama sınırı"
    Mevcut görseller resetlenmiş bir instance, tooltip, console veya ekran içi sürüm numarası göstermiyor. Görünen değer ve eğri fabrika varsayılanı olarak yorumlanmamalı; kanal anlamları ve process davranışı ayrıca doğrulanmalıdır.

## Parametreler

!!! warning "Doğrulama bekliyor"
    Kesin parametre değerleri kaynaklarla ve örnek veriyle doğrulanmadan yayımlanmayacaktır.

| UI etiketi | Doğrulama durumu | Kanıt sınırı |
| --- | --- | --- |
| `R`, `G`, `B`, `RGB/K`, `A` | UI-VERIFIED | Etiketler doğrulandı; teknik anlamları DOC-REQUIRED |
| `L`, `a`, `b`, `c`, `H`, `S` | UI-VERIFIED | Etiketler doğrulandı; teknik anlamları DOC-REQUIRED |
| `Input` | UI-VERIFIED | Etiket doğrulandı; point-selection davranışı DATA/DOC-REQUIRED |
| `Output` | UI-VERIFIED | Etiket doğrulandı; point-editing davranışı DATA/DOC-REQUIRED |

Ana arayüz karesinde `Input 0.00000`, `Output 0.00000` ve sol alttan sağ üste uzanan düz bir çizgi görünür. Bunlar yalnız ekran anındaki gözlemlerdir; reset/default veya matematiksel identity iddiası oluşturmaz.

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

## İlgili bölümler

- [Ana Sayfa](../index.md)
- [Bölüm Genel Bakışı](index.md)
- [Final](index.md)
- [SCNR](scnr.md)
