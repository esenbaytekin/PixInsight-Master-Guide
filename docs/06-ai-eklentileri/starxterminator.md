# StarXTerminator

!!! info "Sayfa Bilgisi"
    **Kategori:** AI Eklentileri · **Düzey:** Advanced · **Tahmini okuma:** 3 dk
    **Anahtar kelimeler:** `StarXTerminator` · `SXT` · `StarX` · `AI processing` · `RC Astro` · `image restoration`
    **Önerilen ön bilgiler:** [ImageIntegration](../03-kalibrasyon/image-integration.md) · [Gradient Düzeltme](../04-gradient/index.md)

## Amaç

Görüntüyü starless ve stars bileşenlerine ayırarak nebula/galaxy ile yıldızların farklı işlemlerle yönetilmesini sağlamaktır. Ayrıştırma, yıldızların fiziksel olarak “yok edilmesi” değil, model tabanlı bir katman tahminidir.

## Teori ve AI yaklaşımı

Star removal, yıldız profiliyle nonstellar kompakt yapıyı sınıflandırmayı ve yıldız altındaki alanı tahmin etmeyi gerektirir. RC Astro, hiçbir star-removal aracının tüm görüntülerde kusursuz olamayacağını belirtir. Bu nedenle starless görüntü kadar stars layer ve recombination residual da incelenmelidir.

## Ne zaman kullanılır?

- Nebula ile yıldızlara farklı stretch, saturation veya contrast uygulanacaksa
- Narrowband yıldızları broadband yıldızlarla değiştirilecekse
- Star mask üretimi veya kontrollü star reduction gerekiyorsa

## Ne zaman kullanılmaz?

- Kötü fokus, coma veya registration hatasını gizlemek için
- Starless görüntüde kompakt nebula düğümleri korunmadan
- Stars layer kaydedilmeden veya recombination planı olmadan
- Bilimsel fotometri yapılacak çalışma kopyasında

## Girdi ve çıktı beklentisi

Girdi iyi registered, clipping durumu bilinen ve yıldız PSF’si makul görüntü olmalıdır. Çıktıda starless katman yıldız çukurları, halos veya “yeniden boyanmış” nebula içermemeli; stars katmanı belirgin nonstellar yapı taşımamalıdır. İki katman uygun birleşimle başlangıç görüntüsüne yakın sonuç üretmelidir.

## Parametre yaklaşımı

Kurulu UI’de doğrulanmış model/sürüm ve kontrol adları esas alınır. `Unscreen Stars` gibi seçeneklerin matematiksel birleşim davranışı varsayılmamalı; seçilen stars layer türüyle uyumlu PixelMath/recombination kullanılmalıdır.

| Karar | Artırma/değiştirme gerekçesi | Risk |
|---|---|---|
| Model sürümü | Yeni model belirli PSF sorununu daha iyi çözüyorsa | Eski workflow ile farklı sonuç |
| Linear/nonlinear çalışma | Ayrıştırma ve recombination planına göre | Yanlış domain’de halo/residual |
| Stars output | Ayrı yıldız işlemi yapılacaksa | Kaydedilmezse geri dönüş zorlaşır |
| Unscreen yaklaşımı | Screen-tabanlı recombination gerekiyorsa | Yanlış formülle brightness/color sapması |

## Hedef bazlı karar matrisi

| Veri | Ana denetim | Neden |
|---|---|---|
| Galaxy | Kompakt HII regions ve çekirdek | Yıldız sanılarak silinebilir |
| Emission nebula | Parlak düğüm ve filament kesişimi | Star residual ile karışır |
| Reflection nebula | Bright star halo çevresi | Gerçek reflection yapısı kaybolabilir |
| Dense star field | Starless dolgu ve stars contamination | Modelin en zor ayrıştırma alanıdır |
| Wide field | Küçük yıldızların toplu residual’ı | Düşük tekil hata geniş alanda görünür |
| Narrowband | Yıldız renk/recombination planı | Kanal oranları estetik mapping’e bağlıdır |

## Uygulama ve işlem sırası

1. BlurXTerminator gerekiyorsa önce lineer aşamada tamamlayın.
2. Orijinal clone, starless ve stars layer üretin.
3. Köşe, merkez, bright star ve kompakt hedef bölgelerini inceleyin.
4. Starless dalda Curves, GHS veya ColorMask işlemlerini maskeli uygulayın.
5. Stars dalında saturation ve star reduction’ı sınırlı tutun.
6. PixelMath ile seçilen layer türüne uygun recombination yapın.
7. Orijinalle brightness, halo ve color karşılaştırması yapın.

## Süreç etkileşimleri

SPCC yıldız renk ilişkisini kurduğu için star separation öncesi tamamlanması çoğu broadband akışında izlenebilirliği artırır. SCNR veya ColorMask işlemlerini yalnız starless dala uygulamak, yıldız rengini koruyabilir; ancak recombination sonrası cast yeniden kontrol edilmelidir. HistogramTransformation, MaskedStretch veya GHS iki dalda farklı uygulanırsa parlaklık uyumu yeniden kurulmalıdır.

## Sorun giderme

| Belirti | Olası neden | Doğrulama | Düzeltme |
|---|---|---|---|
| Starless’ta koyu delikler | Bright star/halo ayrıştırması | Stars ve residual incelemesi | Farklı aşama/model veya lokal maske |
| Nebula düğümü silindi | Kompakt yapı star sanıldı | Orijinal kanal kıyası | Yapıyı maske ile geri birleştir |
| Stars layer nebula içeriyor | Classification belirsizliği | Katmanı güçlü STF ile incele | Bölgesel düzeltme veya alternatif model |
| Recombine sonucu fazla parlak | Yanlış birleşim matematiği | Başlangıç görüntüsüyle difference | Layer türüne uygun PixelMath kullan |
| Magenta/renksiz yıldız | Stars dalında aşırı color işlemi | SPCC sonrası stars ile karşılaştır | Saturation/cast işlemini geri al |

## Performans, sınırlamalar ve en iyi uygulamalar

Dense star fields ve büyük drizzle görüntüleri daha fazla bellek ve inceleme süresi gerektirir. GPU desteği kurulu sürüm belgeleriyle doğrulanmalıdır. Ayrıştırma sonrası her iki katmanı saklayın; yalnız starless sonucu final kabul etmeyin. Star removal hataları için lokal manuel onarım model davranışını gizlememeli, kayıt altında tutulmalıdır.

## Hızlı Referans

- Recombination planını önceden seç
- Stars layer’ı mutlaka üret ve sakla
- Kompakt nonstellar yapıyı kontrol et
- İki dalın stretch/color dengesini kaydet
- Finali başlangıç görüntüsüyle karşılaştır

## Ayrıca İnceleyin

- [BlurXTerminator](blurxterminator.md)
- [SPCC](../05-color-calibration/spcc.md)
- [Color Calibration Diagnostics](../05-color-calibration/color-calibration-diagnostics.md)
- [RC Astro StarXTerminator Usage Notes](https://www.rc-astro.com/starxterminator-usage-notes/)

## İlgili Süreçler

- [BlurXTerminator](blurxterminator.md)
- [NoiseXTerminator](noisexterminator.md)

## İlgili İş Akışları

- [LRGB Galaksi](../15-workflows/lrgb-galaxy.md)
- [Emisyon Nebulası](../15-workflows/emission-nebula.md)
- [Gezegenimsi Nebula](../15-workflows/planetary-nebula.md)
- [NGC 6888 SHO](../20-uygulamalar/ngc6888-sho/index.md)

## Önceki Bölüm

[← NoiseXTerminator](noisexterminator.md)

## Sonraki Bölüm

[Stretch →](../07-stretch/index.md)
