# BlurXTerminator

## Amaç

Görüntüdeki spatially varying point-spread function etkilerini düzeltmek ve yıldızlı/yıldızsız yapıda kontrollü keskinlik iyileştirmesi sağlamaktır. Araç, kötü fokus veya yetersiz sampling’i ölçüm olmadan “gerçek detaya” dönüştüren bir mekanizma değildir.

## Teori ve AI yaklaşımı

RC Astro teknik belgesine göre model görüntüdeki PSF’yi analiz ederek farklı bir PSF’ye dönüştürmeye çalışır; stellar diameter/halo ve nonstellar sharpening ayrı kontrollerle yönetilir. Modelin kapalı eğitim ayrıntıları burada varsayılmaz.

!!! note "Deconvolution İlişkisi"
    BlurXTerminator klasik deconvolution ile aynı algoritma değildir; ancak güncel AI4 iş akışı için üretici lineer, noise reduction uygulanmamış girdiyi zorunlu kabul eder.

## Ne zaman kullanılır?

- Integration, gradient correction ve gerekliyse color calibration sonrası lineer görüntüde
- Yıldız PSF’si alan boyunca ölçülebiliyor ve correction ihtiyacı görünüyorsa
- Orijinal/sonuç farkı küçük ölçeklerde denetlenebiliyorsa

## Ne zaman kullanılmaz?

- NoiseXTerminator veya başka denoise sonrasında ilk deconvolution adımı olarak
- Nonlinear görüntüde AI4 ile
- Ciddi tracking, fokus, clipping veya registration hatasını gizlemek için
- Yıldız bulunmayan veride automatic PSF sonucunu kanıtsız kabul ederek

## Girdi ve çıktı beklentisi

Girdi 32/64-bit floating-point lineer master olmalı; clipping, registration ve integration artefact’ları önceden incelenmelidir. Çıktıda PSF daha düzenli ve recoverable detay daha belirgin olabilir; yeni ring, koyu halo, featureless star core veya tekrar eden mikro yapı oluşmamalıdır.

## Parametreler

| Parametre | Amaç | Artırma gerekçesi | Fazla kullanım belirtisi |
|---|---|---|---|
| `Sharpen Stars` | Stellar FWHM’i azaltma | Ölçülen yıldız profili ve hedef çıktı gerektiriyorsa | Koyu halo, yapay küçük yıldız |
| `Adjust Star Halos` | Halo görünümünü ayarlama | Sharpen sonrası halo dengesi bozulduysa | Şişkin veya keskin halka |
| `PSF Diameter` | Nonstellar correction ölçeği | Ölçülmüş FWHM bunu destekliyorsa | Yanlış detay ölçeği |
| `Sharpen Nonstellar` | Nonstellar yapıyı keskinleştirme | Yüksek SNR detay recoverable ise | Worm/ringing ve yapay filament |
| `Correct Only` | Sharpening’den önce PSF aberration correction | Alan boyunca yıldız şekli bozuksa | Beklenmeyen sharpening; drizzle etkisi incelenmeli |

Tipik değer, hedef sınıfından çok sampling, FWHM, SNR ve AI sürümüne bağlıdır. Sabit sayısal reçete verilmez.

## Hedef bazlı karar matrisi

| Veri | Yaklaşım | Neden |
|---|---|---|
| Galaxy, yüksek SNR | Orta düzey nonstellar test | Dust lane gerçekliği korunabilir |
| Galaxy, düşük SNR | Daha konservatif | Noise küçük yapı gibi yorumlanabilir |
| Emission nebula | Filamentleri farklı strength’lerde karşılaştır | İnce lifler ve noise ayrımı zordur |
| Reflection nebula | Yumuşak geçişleri koru | Lokal kontrast artışı doğal dokuyu bozabilir |
| Dense star field | Stellar halo/ring denetimini öne al | Alan çapında küçük hata birikir |
| Drizzle görüntü | Sampling ve two-pixel artefact’ı incele | Upsampling yeni bilgi garantisi değildir |

## Uygulama adımları

1. Lineer master’ı clone edin; noise reduction uygulanmadığını doğrulayın.
2. FWHM ve sampling’i temsilî alanlarda ölçün.
3. Küçük Preview’larda `Correct Only` ve konservatif sharpening dalları üretin.
4. Aynı STF ile yıldız merkezi, halo, galaxy/nebula detayı ve background noise’u karşılaştırın.
5. Kabul edilen ayarı tam görüntüye bir kez uygulayın ve process instance’ı saklayın.

## İşlem sırası ve etkileşimler

StarAlignment/ImageIntegration → gradient correction → SPCC → BlurXTerminator → NoiseXTerminator → stretch genel bir başlangıç sırasıdır. SPCC’den önce veya sonra kullanım, yıldız ölçüm başarısıyla gerçek veri üzerinde karşılaştırılabilir. MaskedStretch/GHS/HistogramTransformation sonrasında AI4 uygulanmaz. StarXTerminator dalları BlurXTerminator’dan sonra üretmek çoğu iş akışında daha tutarlı PSF sağlar.

## Sorun giderme

| Belirti | Olası neden | Doğrulama | Düzeltme |
|---|---|---|---|
| Koyu star halo | Stellar sharpening fazla | Orijinal fark görüntüsü | `Sharpen Stars` azalt; halo kontrolünü yeniden test et |
| Worm benzeri detay | Düşük SNR’de aşırı sharpening | Farklı strength/independent channel | Nonstellar miktarı azalt |
| Featureless bright core | Saturated yıldız ve agresif ayar | Clipping mask/Statistics | Daha düşük stellar correction |
| Noise belirginleşti | Sharpening high-frequency noise’u büyüttü | Background Preview | BXT’yi azalt; NXT’yi sonrasında kontrollü uygula |
| Alanın bir bölümünde bozulma | PSF veya registration local problemi | Köşe/merkez karşılaştırması | Girdi zincirini düzelt veya bölgesel mask test et |

## Performans, sınırlamalar ve en iyi uygulamalar

Görüntü boyutu ve model sürümü süre/belleği belirler. GPU desteği ve hızlanma kurulu sürüm belgeleriyle doğrulanmalıdır. Preview testi performans kazandırır; final doğrulama tam çözünürlükte yapılır. İkinci deconvolution turu apparent sharpness artırsa da gerçek dışı detay riskini yükseltir.

## Hızlı Referans

- Lineer ve denoise edilmemiş girdi
- FWHM/sampling ölçümü
- Preview üzerinde konservatif test
- Star halo, ringing ve noise kontrolü
- Tek final uygulama ve kayıt

## Ayrıca İnceleyin

- [ImageIntegration](../03-kalibrasyon/image-integration.md)
- [SPCC](../05-color-calibration/spcc.md)
- [NoiseXTerminator](noisexterminator.md)
- [StarXTerminator](starxterminator.md)
- [RC Astro BlurXTerminator Technical Manual](https://www.rc-astro.com/blurxterminator-technical-manual/)

## İlgili Süreçler

- [NoiseXTerminator](noisexterminator.md)
- [StarXTerminator](starxterminator.md)

## İlgili İş Akışları

- [LRGB Galaksi](../15-workflows/lrgb-galaxy.md)
- [Emisyon Nebulası](../15-workflows/emission-nebula.md)
- [Gezegenimsi Nebula](../15-workflows/planetary-nebula.md)
- [NGC 6888 SHO](../20-uygulamalar/ngc6888-sho/index.md)

## Önceki Bölüm

[← AI Eklentileri](index.md)

## Sonraki Bölüm

[NoiseXTerminator →](noisexterminator.md)
