# PixInsight Master Guide

!!! info "Sayfa Bilgisi"
    **Kategori:** Başlangıç · **Düzey:** Beginner · **Tahmini okuma:** 3 dk
    **Anahtar kelimeler:** `Ana Sayfa` · `PixInsight Master Guide` · `PixInsight Türkçe rehber`

**Durum: Taslak**

## Amaç

Bu bölüm, PixInsight Master Guide konusunun PixInsight tabanlı monokrom astrofotoğraf işleme akışındaki yerini ve temel karar noktalarını açıklamak için hazırlanmıştır.

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

- [Hızlı Referans](quick-reference.md)
- [Terimler Sözlüğü](glossary.md)
- [Uygulamalar](20-uygulamalar/index.md)

## Sonraki Bölüm

[Terimler Sözlüğü →](glossary.md)

## Önerilen Okuma Sırası

PixInsight'a yeni başlıyorsanız aşağıdaki sıra, ham veriden son çıktıya uzanan karar zincirini korur:

!!! tip "Sonraki Önerilen Konular"
    Lineer veriyle çalışmaya başlamak için [Kalibrasyon](03-kalibrasyon/index.md), mevcut master görüntüyü işlemek için [Gradient düzeltme](04-gradient/index.md), baştan sona örnek izlemek için [Uygulamalı iş akışları](15-workflows/index.md) bölümüne gidin.

1. [Kalibrasyon](03-kalibrasyon/index.md)
2. [Gradient düzeltme](04-gradient/index.md)
3. [Renk kalibrasyonu](05-color-calibration/index.md)
4. [Stretch](07-stretch/index.md)
5. [Maskeler](11-maskeler/index.md)
6. [PixelMath](10-pixelmath/index.md)
7. [Detay ve kontrast](12-detay-ve-kontrast/index.md)
8. [Son işlemler](13-final/index.md)
9. [Uygulamalı iş akışları](15-workflows/index.md)
10. [Hata kütüphanesi](14-hata-kutuphanesi/index.md)
