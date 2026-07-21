# BlurXTerminator

**Durum: Taslak**

## Amaç

Bu bölüm, BlurXTerminator konusunun PixInsight tabanlı monokrom astrofotoğraf işleme akışındaki yerini ve temel karar noktalarını açıklamak için hazırlanmıştır.

## Ne zaman kullanılır?

Bu işlem veya yaklaşım iş akışında gerekli olduğunda kullanılır. Ayrıntılı kullanım ölçütleri **Doğrulama bekliyor**.

## Ne zaman kullanılmaz?

Veri ya da hedef koşulları uygun olmadığında kullanılmaz. Kesin dışlama ölçütleri **Doğrulama bekliyor**.

## Ön koşullar

- Kalibre edilmiş veriler veya ilgili önceki adım
- Lineer/nonlineer durumunun bilinmesi
- İşlem öncesinde çalışma kopyası ya da uygun geri dönüş noktası

## PixInsight menü yolu

`Process > Deconvolution > BlurXTerminator`

Process adı ve bu menü yolu PixInsight UI ekranında doğrudan okunmuştur. Aynı kanıt setinde plugin sürümü `2.1.4`, AI sürümü `4` olarak görünür. Ayrıntılı kayıt repository içindeki `validation/ui/pi-1.9.3/blurxterminator/blurxterminator-evidence-matrix.md` dosyasındadır.

!!! warning "Sürüm ve UI doğrulama sınırı"
    Plugin/AI sürüm metni görünür ancak PixInsight host sürüm numarası ekran içinde yoktur. Görseller resetlenmiş bir instance, tooltip veya console göstermediği için mevcut değerler fabrika varsayılanı sayılmamalı; algoritma ve output davranışı ayrıca doğrulanmalıdır.

## Parametreler

!!! warning "Doğrulama bekliyor"
    Kesin parametre değerleri kaynaklarla ve örnek veriyle doğrulanmadan yayımlanmayacaktır.

UI üzerinde `Stellar Adjustments`, `Nonstellar Adjustments` ve `Options` section başlıkları doğrulanmıştır.

| UI etiketi | Doğrulama durumu | Kanıt sınırı |
| --- | --- | --- |
| `Select AI` | UI-VERIFIED | Button etiketi doğrulandı; hidden seçenekler DOC/DATA-REQUIRED |
| `Sharpen Stars`, `Adjust Star Halos` | UI-VERIFIED | Numeric kontroller doğrulandı; output etkisi DATA-REQUIRED |
| `Automatic PSF`, `PSF Diameter (pixels)` | UI-VERIFIED | Kontroller doğrulandı; PSF davranışı DOC/DATA-REQUIRED |
| `Sharpen Nonstellar` | UI-VERIFIED | Numeric kontrol doğrulandı; output etkisi DATA-REQUIRED |
| `Correct Only`, `Correct First`, `Nonstellar then Stellar`, `Luminance Only` | UI-VERIFIED | Checkbox etiketleri doğrulandı; option etkileşimleri DOC/DATA-REQUIRED |

Ana arayüz karesinde `Sharpen Stars 0.50`, `Adjust Star Halos 0.00`, işaretli `Automatic PSF`, pasif görünen `PSF Diameter (pixels) 0.00`, `Sharpen Nonstellar 0.50` ve işaretsiz dört Options checkbox'ı görünür. Bunlar yalnız ekran anındaki durumlardır ve default olarak yorumlanmamalıdır.

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
- [AI Eklentileri](index.md)
- [NoiseXTerminator](noisexterminator.md)
