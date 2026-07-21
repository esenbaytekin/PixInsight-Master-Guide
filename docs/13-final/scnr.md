# SCNR

**Durum: Taslak**

## Amaç

Bu bölüm, SCNR konusunun PixInsight tabanlı monokrom astrofotoğraf işleme akışındaki yerini ve temel karar noktalarını açıklamak için hazırlanmıştır.

## Ne zaman kullanılır?

Bu işlem veya yaklaşım iş akışında gerekli olduğunda kullanılır. Ayrıntılı kullanım ölçütleri **Doğrulama bekliyor**.

## Ne zaman kullanılmaz?

Veri ya da hedef koşulları uygun olmadığında kullanılmaz. Kesin dışlama ölçütleri **Doğrulama bekliyor**.

## Ön koşullar

- Kalibre edilmiş veriler veya ilgili önceki adım
- Lineer/nonlineer durumunun bilinmesi
- İşlem öncesinde çalışma kopyası ya da uygun geri dönüş noktası

## PixInsight menü yolu

`Process > NoiseReduction > SCNR`

Process adı ve bu menü yolu PixInsight UI ekranında doğrudan okunmuştur. Ayrıntılı kanıt repository içindeki `validation/ui/pi-1.9.3/scnr/scnr-evidence-matrix.md` dosyasındadır.

!!! warning "UI doğrulama sınırı"
    Görseller resetlenmiş bir instance, tooltip, console veya ekran içi sürüm numarası göstermiyor. Seçili değerler fabrika varsayılanı sayılmamalı; renk giderme ve protection davranışı ayrıca doğrulanmalıdır.

## Parametreler

!!! warning "Doğrulama bekliyor"
    Kesin parametre değerleri kaynaklarla ve örnek veriyle doğrulanmadan yayımlanmayacaktır.

| UI etiketi | Doğrulanan seçenekler | Kanıt sınırı |
| --- | --- | --- |
| `Color to remove` | `Red`, `Green`, `Blue` | Etiket ve açık liste doğrulandı; renk giderme davranışı DATA/DOC-REQUIRED |
| `Protection method` | `Maximum Mask`, `Additive Mask`, `Average Neutral`, `Maximum Neutral`, `Minimum Neutral` | Etiket ve açık liste doğrulandı; yöntem farkları DOC-REQUIRED |
| `Amount` | Numeric alan ve slider görünür | Etki ve ölçek DATA/DOC-REQUIRED |
| `Preserve lightness` | Checkbox görünür | Output davranışı DATA/DOC-REQUIRED |

Ana arayüz karesinde `Green`, `Average Neutral`, `Amount 1.00` ve işaretli `Preserve lightness` görünür. Bunlar yalnız ekran anındaki değerlerdir ve default olarak yorumlanmamalıdır.

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
- [CurvesTransformation](curves-transformation.md)
