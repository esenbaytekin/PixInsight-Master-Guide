# LocalHistogramEqualization

**Durum: Taslak**

## Amaç

Bu bölüm, LocalHistogramEqualization konusunun PixInsight tabanlı monokrom astrofotoğraf işleme akışındaki yerini ve temel karar noktalarını açıklamak için hazırlanmıştır.

## Ne zaman kullanılır?

Bu işlem veya yaklaşım iş akışında gerekli olduğunda kullanılır. Ayrıntılı kullanım ölçütleri **Doğrulama bekliyor**.

## Ne zaman kullanılmaz?

Veri ya da hedef koşulları uygun olmadığında kullanılmaz. Kesin dışlama ölçütleri **Doğrulama bekliyor**.

## Ön koşullar

- Kalibre edilmiş veriler veya ilgili önceki adım
- Lineer/nonlineer durumunun bilinmesi
- İşlem öncesinde çalışma kopyası ya da uygun geri dönüş noktası

## PixInsight menü yolu

`Process > IntensityTransformations > LocalHistogramEqualization`

Process adı ve bu menü yolu PixInsight UI ekranında doğrudan okunmuştur. Ayrıntılı kanıt repository içindeki `validation/ui/pi-1.9.3/local-histogram-equalization/local-histogram-equalization-evidence-matrix.md` dosyasındadır.

!!! warning "UI doğrulama sınırı"
    Görseller resetlenmiş bir instance, tooltip, console veya ekran içi sürüm numarası göstermiyor. Seçili değerler fabrika varsayılanı sayılmamalı; parametre anlamları ve output davranışı ayrıca doğrulanmalıdır.

## Parametreler

!!! warning "Doğrulama bekliyor"
    Kesin parametre değerleri kaynaklarla ve örnek veriyle doğrulanmadan yayımlanmayacaktır.

| UI etiketi | Doğrulama durumu | Kanıt sınırı |
| --- | --- | --- |
| `Kernel Radius` | UI-VERIFIED | Etiket ve numeric kontrol doğrulandı; algoritmik etki DOC/DATA-REQUIRED |
| `Contrast Limit` | UI-VERIFIED | Etiket ve numeric kontrol doğrulandı; algoritmik etki DOC/DATA-REQUIRED |
| `Amount` | UI-VERIFIED | Etiket ve numeric kontrol doğrulandı; output etkisi DATA-REQUIRED |
| `Histogram Resolution` | UI-VERIFIED | Açık listede `8-bit (256)`, `10-bit (1024)`, `12-bit (4096)` okunuyor; teknik anlam DOC-REQUIRED |
| `Circular Kernel` | UI-VERIFIED | Checkbox etiketi doğrulandı; kernel davranışı DOC/DATA-REQUIRED |

Ana arayüz karesinde `Kernel Radius 64`, `Contrast Limit 2.0`, `Amount 1.000`, seçili `8-bit (256)` ve işaretli `Circular Kernel` görünür. Bunlar yalnız ekran anındaki durumlardır ve default olarak yorumlanmamalıdır.

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
- [Detay ve Kontrast](index.md)
- [HDRMultiscaleTransform](hdr-multiscale-transform.md)
