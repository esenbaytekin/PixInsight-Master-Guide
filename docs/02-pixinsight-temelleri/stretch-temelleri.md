# Stretch Temelleri

!!! info "Sayfa Bilgisi"
    **Kategori:** Görüntü İşleme Temelleri · **Düzey:** Beginner · **Tahmini okuma:** 10 dk
    **Anahtar kelimeler:** `stretch` · `germe` · `midtone redistribution` · `black point` · `white point` · `contrast` · `star saturation` · `faint signal`

## Bu konu neden önemlidir?

Stretch, lineer astronomik veride dar bir değer aralığına sıkışmış zayıf yapıları ekranda ayırt edilebilir hale getirir. Amaç görüntüyü yalnız “parlatmak” değil; arka plan, zayıf sinyal, yıldızlar ve parlak çekirdekler arasındaki tonları bilinçli biçimde yeniden dağıtmaktır.

## Temel kavram

Stretch, piksel değerlerine monoton bir transfer fonksiyonu uygulayarak çoğunlukla düşük ve orta tonları genişletir, parlak tonları ise göreli olarak sıkıştırır. Kalıcı uygulama görüntüyü nonlineer hale getirir. [Histogram ve Ton Dağılımı](histogram.md), dağılımı okumayı; [Lineer ve Nonlineer Görüntü](lineer-ve-nonlineer-goruntu.md), veri durumunu açıklar.

### Geçici ve kalıcı stretch

- **Geçici display stretch:** Ekran sunumunu değiştirir; piksel verisi aynı kalır.
- **Kalıcı stretch:** Dönüştürülmüş değerleri görüntüye yazar; sonraki işlemler bu yeni değerlerle çalışır.

### Genel ve yerel kontrast

Genel kontrast bütün görüntüye uygulanan tonal ilişkiyi; yerel kontrast komşu veya belirli ölçeklerdeki farkları anlatır. Global stretch zayıf yapıyı görünür kılabilir, fakat her çekirdek ve filament için ideal yerel kontrastı tek başına oluşturmaz.

### Clipping ve ton yeniden dağıtımı

Siyah nokta içeri taşındığında zayıf gölge değerleri siyaha; beyaz nokta içeri taşındığında parlak değerler beyaza yığılabilir. Orta ton yeniden dağıtımı clipping olmadan görünürlüğü artırabilir, fakat noise, color cast ve yıldız çapını da daha görünür hale getirir.

## Stretch sırasında korunacak yapılar

| Yapı | Risk | Kontrol |
|---|---|---|
| Zayıf nebula/toz | Siyah nokta clipping | Arka plan ile sinyal geçişinin sürekliliği |
| Parlak yıldız | Kanal saturation ve sert profil | Kanal histogramı ve yıldız çekirdeği |
| Galaksi çekirdeği | Ton ayrımının sıkışması | Çekirdek içindeki kademeli yapı |
| Renk dengesi | Kanalların farklı sıkışması | RGB histogramları ve nötr referanslar |
| Arka plan noise | Aşırı görünürlük veya yapay bastırma | Farklı zoom ve display seviyeleri |

## Tek adım ve aşamalı stretch

Tek güçlü dönüşüm hızlıdır, fakat hangi tonal bölgede hata oluştuğunu ayırmayı zorlaştırabilir. Aşamalı stretch her adımda yıldız, çekirdek, renk ve zayıf sinyal kontrolü sağlar. Küçük adımlar matematiksel olarak otomatik üstün değildir; denetlenebilirlik ve geri dönüş sağlar.

Bir stretch şu işaretlerde aşırı kabul edilebilir:

- Siyah veya beyaz sınıra yığılma ve ayrıntı kaybı.
- Parlak yıldızlarda düz çekirdek veya renk kaybı.
- Zayıf yapı ile arka plan arasındaki geçişin kopması.
- Noise’un hedef yapısıyla rekabet edecek kadar güçlenmesi.
- Kanal dengesinin bozulması veya doygunluğun tek kanalda kırpılması.
- Çekirdek ve halo arasında doğal olmayan sert sınır.

!!! note "Planlanan görsel kanıt · Kontrollü stretch"
    **Kategori:** Histogram Evidence · **Durum:** Gerçek proje verisi gerekli · **Öncelik:** P0
    **Eğitim amacı:** Kontrollü ve aşırı stretch arasındaki clipping, yıldız ve zayıf sinyal farkını göstermek.
    **Gerekli kaynak:** Parlak yıldız ve zayıf nebula içeren doğrusal entegrasyon.
    **Durumlar:** Geçici display stretch, kontrollü permanent stretch, aşırı stretch.
    **İşaretleme:** Siyah/beyaz clipping, yıldız çekirdeği, zayıf sinyal sınırı.
    **Gerçek proje verisi:** Evet.
    **Kanıt düzeni:** Full-frame, histogram ve star/background crop üçlüsü; aynı display ölçeği ve channel görünümü.
    **Alt text özeti:** Kontrollü stretch'te korunan kuyruklarla aşırı stretch'te clipped black point ve star core açıkça karşılaştırılmalıdır.

## Yaygın yanlış anlamalar

- Stretch’in yeni sinyal ürettiğini düşünmek.
- Arka planı tamamen siyah yapmayı başarı ölçütü saymak.
- Tek histogram şeklinin bütün hedefler için ideal olduğuna inanmak.
- STF AutoStretch sonucunu otomatik final stretch kabul etmek.
- Highlight protection’ın daha önce doymuş veriyi geri getirdiğini sanmak.
- Local contrast ile global stretch’i aynı işlem olarak görmek.

## Karar rehberi

| Durum | Yaklaşım | Gerekçe |
|---|---|---|
| Lineer süreçler sürüyor | Geçici display stretch kullanın. | Ölçüm ilişkisini korur. |
| Zayıf sinyal görünmüyor | Orta tonları kontrollü genişletin. | Siyah noktayı kesmeden görünürlük sağlar. |
| Parlak çekirdek hızla sıkışıyor | Aşamalı veya highlight kontrollü yöntem değerlendirin. | Her adımda üst ton ayrımı izlenir. |
| Kanal rengi değişiyor | Kanal histogramlarını ve kalibrasyonu kontrol edin. | Stretch mevcut kanal farklarını büyütebilir. |
| Yerel ayrıntı eksik | Global stretch’i zorlamak yerine local contrast aşamasını değerlendirin. | Global fonksiyon uzamsal ölçeği seçmez. |

## PixInsight ile ilişkisi

- [STF](stf.md): geçici görüntüleme.
- [HistogramTransformation](../07-stretch/histogram-transformation.md): açık black/midtone/white kontrolleri.
- [GeneralizedHyperbolicStretch](../07-stretch/generalized-hyperbolic-stretch.md): esnek transfer fonksiyonu.
- [MaskedStretch](../07-stretch/masked-stretch.md): iteratif ve maske tabanlı highlight koruması.
- [CurvesTransformation](../13-final/curves-transformation.md): nonlineer görüntüde sonraki tonal/renk ayarı.
- [LRGB Galaksi](../15-workflows/lrgb-galaxy.md): stretch’in workflow içindeki yeri.

## Kaynaklar

- [PixInsight — HistogramTransformation Reference Documentation](https://pixinsight.com/doc/tools/HistogramTransformation/HistogramTransformation.html)
- [PixInsight Staff — New MaskedStretch Tool](https://pixinsight.com/forum/index.php?threads/new-maskedstretch-tool.6420/)

## Önceki Bölüm

[← Lineer ve Nonlineer Görüntü](lineer-ve-nonlineer-goruntu.md)

## Sonraki Bölüm

[Sinyal ve Gürültü →](sinyal-ve-gurultu.md)
