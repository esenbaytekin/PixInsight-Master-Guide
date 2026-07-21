# HistogramTransformation

**Durum: Taslak**

## Amaç

Bu bölüm, HistogramTransformation konusunun PixInsight tabanlı monokrom astrofotoğraf işleme akışındaki yerini ve temel karar noktalarını açıklamak için hazırlanmıştır.

## Ne zaman kullanılır?

Bu işlem veya yaklaşım iş akışında gerekli olduğunda kullanılır. Ayrıntılı kullanım ölçütleri **Doğrulama bekliyor**.

## Ne zaman kullanılmaz?

Veri ya da hedef koşulları uygun olmadığında kullanılmaz. Kesin dışlama ölçütleri **Doğrulama bekliyor**.

## Ön koşullar

- Kalibre edilmiş veriler veya ilgili önceki adım
- Lineer/nonlineer durumunun bilinmesi
- İşlem öncesinde çalışma kopyası ya da uygun geri dönüş noktası

## PixInsight menü yolu

`Process > IntensityTransformations > HistogramTransformation`

Process adı ve bu menü yolu PixInsight UI ekranında doğrudan okunmuştur. Kanıt kaydı repository içindeki `validation/ui/pi-1.9.3/histogram-transformation/histogram-transformation-evidence-matrix.md` dosyasındadır.

!!! warning "UI doğrulama sınırı"
    Ekran görüntüleri resetlenmiş bir instance, tooltip, console veya ekran içi sürüm numarası göstermiyor. Görünen seçimler ve sayılar fabrika varsayılanı değildir; process davranışı ve parametrelerin matematiksel anlamı ayrıca doğrulanmalıdır.

## Parametreler

!!! warning "Doğrulama bekliyor"
    Kesin parametre değerleri kaynaklarla ve örnek veriyle doğrulanmadan yayımlanmayacaktır.

| UI etiketi | Doğrulama durumu | Kanıt sınırı |
| --- | --- | --- |
| `Shadows` | UI-VERIFIED | Etiket doğrulandı; algoritmik anlam DOC-REQUIRED |
| `Highlights` | UI-VERIFIED | Etiket doğrulandı; algoritmik anlam DOC-REQUIRED |
| `Midtones` | UI-VERIFIED | Etiket doğrulandı; algoritmik anlam DOC-REQUIRED |
| `Auto Clip Setup` | UI-VERIFIED | Düğme etiketi doğrulandı; davranış DATA/DOC-REQUIRED |
| `R`, `G`, `B`, `RGB/K`, `A` | UI-VERIFIED | Kanal etiketleri doğrulandı; seçim etkisi DOC-REQUIRED |

Graph style açık listesinde `Lines`, `Area`, `Bars` ve `Dots`; plot resolution açık listesinde `6-bit (64)` ile `16-bit (64K)` arasındaki gösterimler ile `100 levels`, `1000 levels` ve `10000 levels` seçenekleri okunmuştur. Bunlar UI seçenekleridir; plot hesabının anlamı veya görüntü datasına etkisi statik ekran görüntülerinden çıkarılmamıştır.

Ana arayüz karesinde `8-bit (256)`, `Lines`, `Shadows 0.00000000`, `Highlights 1.00000000` ve `Midtones 0.50000000` görünür. Bunlar yalnız kayıt anındaki değerlerdir ve default olarak yorumlanmamalıdır.

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
- [Stretch](index.md)
- [Generalized Hyperbolic Stretch](generalized-hyperbolic-stretch.md)
