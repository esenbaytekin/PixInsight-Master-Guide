# M31: Lineer Restorasyon ve Gürültü Kararı

!!! info "Sayfa Bilgisi"
    **Kategori:** Proje İş Akışı · **Düzey:** Advanced · **Tahmini okuma:** 5 dk
    **Anahtar kelimeler:** `M31` · `BlurXTerminator` · `NoiseXTerminator` · `lineer` · `restoration`

## Amaç

BlurXTerminator ve NoiseXTerminator'ı zorunlu reçete değil, ölçülen PSF ve noise sorununa verilen geri alınabilir kararlar olarak kullanmak.

## Gerekli durum

Gradient ve renk hazırlığı kontrol edilmiş lineer master'lar gerekir. Plugin/model sürümü ve uygulama sırası checkpoint notuna yazılır; PixInsight sürümü tek başına plugin davranışını tanımlamaz.

## Adım adım karar noktaları

1. Tam görüntü ile core, dust lane ve farklı parlaklıktaki star crop'larını kaydedin.
2. Restorasyon ihtiyacını yıldız profili ve yapı sürekliliğiyle gösterin; ihtiyaç yoksa BlurXTerminator'ı atlayın.
3. Her kanalı ayrı değerlendirin. Ha veya düşük SNR renk kanalına L ile aynı ayarı kopyalamayın.
4. Noise azaltımında zayıf dust ve HII yapısının sürekliliğini kontrol edin; “pürüzsüz background” hedef değildir.
5. İşlemleri ayrı clone/checkpoint'lerde karşılaştırın; sonraki stretch'te artefakt büyüyeceği için lineer aşamada karar verin.

| Belirti | Olası aşırılık | Düzeltici dal |
|---|---|---|
| Koyu yıldız halkası | Restorasyon / PSF uyumsuzluğu | Etkiyi azalt, model ve girdiyi doğrula |
| Dust lane plastiksi | Noise reduction fazla | Daha koruyucu ayar veya işlemi atla |
| Ha knot'ları silik | Zayıf sinyal noise sanılmış | Ha kanalını yeniden değerlendir |
| Kanal keskinlikleri ayrışıyor | Aynı ayarın kopyalanması | Kanal bazlı karar |

## Kalite kontrol ve ne zaman durmalı?

İşlemli görüntü doğal yıldız profili, kesintisiz dust yapısı ve residual noise karakteri gösteriyorsa ilerleyin. Kazanç yalnız %100 crop'ta görünürken halo veya yapay doku üretiyorsa işlemi atlayın.

## Görsel kanıt planı

Her process için kapalı/açık tam görüntü ve aynı koordinattan core, dust ve yıldız %100 crop üçlüsü.

## İlgili process sayfaları

[BlurXTerminator](../../06-ai-eklentileri/blurxterminator.md) · [NoiseXTerminator](../../06-ai-eklentileri/noisexterminator.md) · [Signal ve Noise](../../02-pixinsight-temelleri/sinyal-ve-gurultu.md)

## Önceki / Sonraki

[← DBE ve SPCC](03-dbe-spcc.md) · [Stretch →](05-stretch.md)
