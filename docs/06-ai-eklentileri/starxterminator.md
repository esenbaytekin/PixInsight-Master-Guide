# StarXTerminator

**Durum: Taslak**

## Amaç

Bu bölüm, StarXTerminator konusunun PixInsight tabanlı monokrom astrofotoğraf işleme akışındaki yerini ve temel karar noktalarını açıklamak için hazırlanmıştır.

## Ne zaman kullanılır?

Bu işlem veya yaklaşım iş akışında gerekli olduğunda kullanılır. Ayrıntılı kullanım ölçütleri **Doğrulama bekliyor**.

## Ne zaman kullanılmaz?

Veri ya da hedef koşulları uygun olmadığında kullanılmaz. Kesin dışlama ölçütleri **Doğrulama bekliyor**.

## Ön koşullar

- Kalibre edilmiş veriler veya ilgili önceki adım
- Lineer/nonlineer durumunun bilinmesi
- İşlem öncesinde çalışma kopyası ya da uygun geri dönüş noktası

## PixInsight menü yolu

`Process > ObjectRecognition > StarXTerminator`

Process adı ve bu menü yolu PixInsight UI ekranında doğrudan okunmuştur. Aynı kanıt setinde plugin sürümü `2.4.11`, AI sürümü `11` olarak görünür. Ayrıntılı kayıt repository içindeki `validation/ui/pi-1.9.3/starxterminator/starxterminator-evidence-matrix.md` dosyasındadır.

!!! warning "Sürüm ve UI doğrulama sınırı"
    Plugin/AI sürüm metni görünür ancak PixInsight host sürüm numarası ekran içinde yoktur. Görseller resetlenmiş bir instance, tooltip, console veya tamamlanmış batch işlemi göstermediği için mevcut durumlar fabrika varsayılanı ya da davranış kanıtı sayılmamalıdır.

## Parametreler

!!! warning "Doğrulama bekliyor"
    Kesin parametre değerleri kaynaklarla ve örnek veriyle doğrulanmadan yayımlanmayacaktır.

| UI alanı | Doğrulanan etiketler | Kanıt sınırı |
| --- | --- | --- |
| Ana pencere | `Select AI`, `Generate Star Image`, `Unscreen Stars`, `Large Overlap`, `Process Batch` | Etiketler doğrulandı; davranış DOC/DATA-REQUIRED |
| Batch output | `Output starless files to`, `Output star files to` | Etiketler doğrulandı; dosya üretimi DATA-REQUIRED |
| Batch mask | `Invert`, `Mask`, `<No View Available>` | Görünür UI doğrulandı; mask behavior DOC/DATA-REQUIRED |
| Batch options | `Unscreen Stars`, `Add Suffixes` | Etiketler doğrulandı; output etkisi DATA-REQUIRED |
| Batch actions | `Select Input Files and Execute`, `Cancel` | Button etiketleri doğrulandı; execution behavior DATA-REQUIRED |

Ana pencerede `Generate Star Image` ve `Unscreen Stars` işaretli, `Large Overlap` işaretsizdir. Batch penceresinde iki output seçeneği, `Unscreen Stars` ve `Add Suffixes` işaretli; `Invert` işaretsiz ve Mask alanında `<No View Available>` görünür. Bunlar yalnız ekran anındaki durumlardır ve default olarak yorumlanmamalıdır.

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
