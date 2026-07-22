# Hızlı Referans

!!! info "Sayfa Bilgisi"
    **Kategori:** Başvuru · **Düzey:** Intermediate · **Tahmini okuma:** 7 dk
    **Anahtar kelimeler:** `Hızlı Referans` · `quick reference` · `işleme sırası` · `lineer nonlinear` · `maske polaritesi` · `troubleshooting` · `export`

Bu sayfa işlem sırasında kısa kontrol amacıyla tasarlanmıştır. Parametre tarifi veya evrensel workflow değildir; ayrıntı gerektiğinde bağlı canonical sayfaya geçin.

## Temel İşleme Sırası

```text
Calibration → Registration → Integration → Crop → Gradient Removal
→ Color Calibration → Linear Processing → Stretch
→ Nonlinear Enhancement → Final Color → Export
```

Veri seti, hedef, process gereksinimi ve starless çalışma tercihi sırayı değiştirebilir. Her geçişte görüntünün lineer/nonlinear durumunu ve beklenen girdiyi kontrol edin.

## Lineer / Nonlineer Süreç Matrisi

| Süreç | Lineer | Nonlineer | Kısa not |
| --- | :---: | :---: | --- |
| [SPCC](05-color-calibration/spcc.md) | ✓ | — | Canonical workflow lineer ve plate-solved girdi kullanır. |
| [BackgroundNeutralization](05-color-calibration/background-neutralization-process.md) | ✓ | — | Color calibration zincirinde lineer kullanım; background reference kritik. |
| [DBE](04-gradient/dbe.md) | ✓ | Bağlama bağlı | Ana kullanım lineer gradient düzeltmedir; nonlinear düzeltme veriyle değerlendirilir. |
| [GradientCorrection](04-gradient/gradient-correction.md) | ✓ | Bağlama bağlı | Model ve correction kararı görüntü durumuna göre doğrulanmalıdır. |
| [BlurXTerminator](06-ai-eklentileri/blurxterminator.md) | ✓ | Sınırlı/bağlama bağlı | Tercih edilen restoration konumu lineer, noise reduction öncesidir; plugin sürümünü kontrol edin. |
| [NoiseXTerminator](06-ai-eklentileri/noisexterminator.md) | ✓ | ✓ | Her iki durumda kullanılabilir; strength ve detail dengesi veriyle değerlendirilir. |
| [StarXTerminator](06-ai-eklentileri/starxterminator.md) | ✓ | ✓ | Her iki state için workflow mümkündür; aynı state'teki stars/starless katmanlarını koruyun. |
| [HistogramTransformation](07-stretch/histogram-transformation.md) | Girdi | Çıktı | Lineer veriye kalıcı stretch uygulayarak nonlinear output üretir. |
| [GeneralizedHyperbolicStretch](07-stretch/generalized-hyperbolic-stretch.md) | Girdi | Çıktı | Kontrollü stretch ailesidir; output nonlinear olur. |
| [CurvesTransformation](13-final/curves-transformation.md) | Bağlama bağlı | ✓ | Ana kullanım nonlinear ton ve renk düzenlemesidir. |
| [LocalHistogramEqualization](12-detay-ve-kontrast/local-histogram-equalization.md) | Bağlama bağlı | ✓ | Çoğunlukla nonlinear local contrast; maske ve scale kontrolü gerekir. |
| [HDRMultiscaleTransform](12-detay-ve-kontrast/hdr-multiscale-transform.md) | Bağlama bağlı | ✓ | State ve hedef yapıya göre değişir; core koruması kontrol edilmelidir. |
| [SCNR](13-final/scnr.md) | ✓ | ✓ | Zorunlu değildir; gerçek OIII/cyan sinyalini koruyun. |
| [PixelMath](10-pixelmath/index.md) | ✓ | ✓ | Uygunluk formüle ve kaynak görüntülerin state uyumuna bağlıdır. |

`✓` yaygın ve desteklenen kullanımı, “bağlama bağlı” ise process'in tek bir state'e evrensel olarak sabitlenemeyeceğini gösterir.

## Maske Polaritesi

| Maske değeri | Etki |
| --- | --- |
| Beyaz | Etkiyi geçirir |
| Siyah | Alanı korur |
| Gri | Kısmi etki uygular |

!!! warning "Aktif maskeyi doğrulayın"
    Maskenin ekranda görünmesi aktif olduğu anlamına gelmeyebilir. Inversion etki yönünü değiştirir. Process'i uygulamadan önce hedef view, mask activation ve inversion durumunu kontrol edin. Ayrıntı: [Maske Mantığı](11-maskeler/maske-mantigi.md).

## Yaygın Belirti ve İlk Kontrol

| Belirti | İlk kontrol | Ayrıntılı sayfa |
| --- | --- | --- |
| Görüntü tamamen kırmızı oldu | Channel mapping ve kaynak identifier'larını kontrol edin. | [ChannelCombination RGB Hatası](14-hata-kutuphanesi/channel-combination-rgb-error.md) |
| OIII sinyali kayboldu | Maske polaritesi, channel weight ve green suppression adımını kontrol edin. | [OIII Kaybolması](14-hata-kutuphanesi/oiii-kaybolmasi.md) |
| Yıldızlar mor oldu | Kanal hizası, color calibration ve saturation zincirini karşılaştırın. | [Renk Kalibrasyonu Tanısı](05-color-calibration/color-calibration-diagnostics.md) |
| Arka plan yeşil kaldı | Background reference ve gerçek narrowband sinyal ayrımını inceleyin. | [BackgroundNeutralization](05-color-calibration/background-neutralization-process.md) |
| Siyah alanlar kırpıldı | Histogramın sol ucunu ve black point hareketini kontrol edin. | [HistogramTransformation](07-stretch/histogram-transformation.md) |
| Gürültü arttı | Stretch öncesi/sonrası state, mask ve local contrast sırasını kontrol edin. | [NoiseXTerminator](06-ai-eklentileri/noisexterminator.md) |
| Maske çalışmıyor | Mask activation, inversion ve target view'ı kontrol edin. | [Maske Tüm Görüntüyü Kaplıyor](14-hata-kutuphanesi/maske-tum-goruntuyu-kapliyor.md) |
| PixelMath hata veriyor | Identifier, parantez, kanal sekmesi ve output ayarını kontrol edin. | [PixelMath Hata Ayıklama](10-pixelmath/hata-ayiklama.md) |
| Görüntü aşırı işlendi | Son güçlü işlemi devre dışı bırakıp tek değişkenle karşılaştırın. | [Son İşlemler](13-final/index.md) |
| Detaylar plastikleşti | AI strength, noise reduction ve multiscale contrast toplam etkisini azaltın. | [Detay ve Kontrast](12-detay-ve-kontrast/index.md) |

## Güvenli İşleme İlkeleri

- Preview üzerinde başlayın; sonucu tam görüntüde ayrıca kontrol edin.
- Etkiyi düşük düzeyden yükseltin.
- Process öncesinde aktif maskeyi ve polariteyi doğrulayın.
- Tek seferde tek değişkeni değiştirin.
- Her tonal adımda shadow ve highlight clipping kontrolü yapın.
- Kritik işlem öncesinde clone veya geri dönüş noktası oluşturun.
- Process sırasını ve önemli kararları kaydedin.
- Stars ve starless bileşenlerini aynı state'te ayrı saklayın.
- PixelMath image identifier ve channel eşlemelerini uygulama öncesinde doğrulayın.

## Export Hızlı Tablosu

| Amaç | Format | Bit derinliği | Renk profili / not |
| --- | --- | --- | --- |
| Working master | XISF | 32-bit floating point | PixInsight çalışma verisi ve metadata korunur. |
| Archival master | XISF veya TIFF | 32-bit float / 16-bit integer | Lossless saklayın; işleme state'ini dosya adında belirtin. |
| Web | JPEG veya PNG | 8-bit | sRGB'ye dönüştürün; export sonrası clipping/banding kontrol edin. |
| Social media | JPEG | 8-bit | sRGB; platform resize ve compression etkisini küçük örnekte kontrol edin. |
| Print handoff | TIFF | 16-bit | Baskı sağlayıcısının istediği ICC profile ve ölçüyü kullanın. |

Ayrıntılı export kontrolleri için [Dışa Aktarım](13-final/export.md) sayfasına bakın.

## Kritik Uyarılar

!!! warning
    - Clipped veri tam olarak geri getirilemez.
    - Aggressive DBE zayıf gerçek sinyali background modeline katabilir.
    - SCNR zorunlu bir adım değildir.
    - Dikkatsiz green removal gerçek OIII/cyan sinyalini zedeleyebilir.
    - AI araçları bilimsel olarak doğru ayrıntı garantisi vermez.
    - Recipe'lerin canlı PixInsight validation durumu birbirinden farklıdır.

## Hızlı Bağlantılar

- [Başlangıç](index.md)
- [Terimler Sözlüğü](glossary.md)
- [Hata Kütüphanesi](14-hata-kutuphanesi/index.md)
- [Uygulamalı İş Akışları](15-workflows/index.md)
- [PixelMath](10-pixelmath/index.md)
- [Maskeler](11-maskeler/index.md)
- [Stretch](07-stretch/index.md)
- [Teknik Doğrulama](https://github.com/esenbaytekin/PixInsight-Master-Guide/blob/main/TECHNICAL_VERIFICATION.md)

## Önceki ve Sonraki Bölüm

[← Terimler Sözlüğü](glossary.md) · [Temeller →](01-temeller/index.md)
