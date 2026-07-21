# NoiseXTerminator

**Durum: Taslak**

## Amaç

Bu bölüm, NoiseXTerminator konusunun PixInsight tabanlı monokrom astrofotoğraf işleme akışındaki yerini ve temel karar noktalarını açıklamak için hazırlanmıştır.

## Ne zaman kullanılır?

Bu işlem veya yaklaşım iş akışında gerekli olduğunda kullanılır. Ayrıntılı kullanım ölçütleri **Doğrulama bekliyor**.

## Ne zaman kullanılmaz?

Veri ya da hedef koşulları uygun olmadığında kullanılmaz. Kesin dışlama ölçütleri **Doğrulama bekliyor**.

## Ön koşullar

- Kalibre edilmiş veriler veya ilgili önceki adım
- Lineer/nonlineer durumunun bilinmesi
- İşlem öncesinde çalışma kopyası ya da uygun geri dönüş noktası

## PixInsight menü yolu

`Process > NoiseReduction > NoiseXTerminator`

Process adı ve bu menü yolu PixInsight UI ekranında doğrudan okunmuştur. Aynı kanıt setinde plugin sürümü `2.3.3`, AI sürümü `3` olarak görünür. Ayrıntılı kayıt repository içindeki `validation/ui/pi-1.9.3/noisexterminator/noisexterminator-evidence-matrix.md` dosyasındadır.

!!! warning "Sürüm ve UI doğrulama sınırı"
    Plugin/AI sürüm metni görünür ancak PixInsight host sürüm numarası ekran içinde yoktur. Görseller resetlenmiş bir instance, tooltip veya console göstermediği için seçili değerler fabrika varsayılanı sayılmamalı; algoritma ve output davranışı ayrıca doğrulanmalıdır.

## Parametreler

!!! warning "Doğrulama bekliyor"
    Kesin parametre değerleri kaynaklarla ve örnek veriyle doğrulanmadan yayımlanmayacaktır.

| UI etiketi | Doğrulama durumu | Kanıt sınırı |
| --- | --- | --- |
| `Select AI` | UI-VERIFIED | Button etiketi doğrulandı; hidden seçenekler ve davranış DOC/DATA-REQUIRED |
| `Intensity/color separation` | UI-VERIFIED | Checkbox etiketi doğrulandı; algoritmik etki DOC/DATA-REQUIRED |
| `Frequency separation` | UI-VERIFIED | Checkbox etiketi doğrulandı; algoritmik etki DOC/DATA-REQUIRED |
| `Denoise HF Intensity`, `Denoise HF Color` | UI-VERIFIED | Numeric kontroller doğrulandı; output etkisi DATA-REQUIRED |
| `Denoise LF Intensity`, `Denoise LF Color` | UI-VERIFIED | Numeric kontroller doğrulandı; output etkisi DATA-REQUIRED |
| `HF/LF Scale (pixels)` | UI-VERIFIED | Numeric kontrol doğrulandı; ölçek anlamı DOC/DATA-REQUIRED |
| `Iterations` | UI-VERIFIED | Numeric kontrol doğrulandı; yineleme davranışı DOC/DATA-REQUIRED |

Ana arayüz karesinde iki separation checkbox'ı işaretli; `Denoise HF Intensity 0.75`, `Denoise HF Color 0.60`, `Denoise LF Intensity 0.35`, `Denoise LF Color 0.30`, `HF/LF Scale (pixels) 5.0` ve `Iterations 2` görünür. Bunlar yalnız ekran anındaki durumlardır ve default olarak yorumlanmamalıdır.

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
- [BlurXTerminator](blurxterminator.md)
