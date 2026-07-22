# Başlangıç

!!! info "Sayfa Bilgisi"
    **Kategori:** Başlangıç · **Düzey:** Beginner · **Tahmini okuma:** 7 dk
    **Anahtar kelimeler:** `Başlangıç` · `PixInsight Türkçe rehber` · `iş akışı` · `onboarding` · `OSC` · `LRGB` · `SHO` · `HOO`

## Bu Rehber Nedir?

PixInsight Master Guide, PixInsight ile astrofotoğraf işleyen kullanıcılar için Türkçe bir teknik referans, pratik işleme rehberi ve sorun giderme kaynağıdır. Process sayfaları tek tek araçları açıklar; workflow sayfaları bu araçların neden ve hangi sırayla bir araya getirildiğini gösterir; hata kütüphanesi ise belirli belirtilerden olası kök nedene gitmeyi kolaylaştırır.

Bu proje bağımsız bir topluluk çalışmasıdır. Pleiades Astrophoto veya PixInsight tarafından hazırlanmış, desteklenmiş ya da onaylanmış değildir; resmi dokümantasyonun yerine geçmez.

## Kimler İçin Hazırlandı?

- PixInsight arayüzünü ve lineer iş akışını öğrenen yeni kullanıcılar
- Kararlarını daha tekrarlanabilir hale getirmek isteyen orta seviye kullanıcılar
- Parametre, veri durumu ve process sırası arasındaki ilişkiyi denetleyen ileri kullanıcılar
- OSC verisini calibration'dan export'a taşımak isteyenler
- Mono LRGB veya LRGB+Ha veri işleyenler
- SHO, HOO ve diğer narrowband kombinasyonlarıyla çalışanlar
- Belirli bir artifact, renk veya maske sorununu çözmeye çalışanlar

## Hedeflenen PixInsight Sürümü

Kılavuz **PixInsight 1.9.3** sürümünü hedefler. UI etiketi, menü yolu ve plugin davranışı build veya plugin sürümüne göre değişebilir. Sürüme duyarlı alanlar sayfa içinde görünür biçimde sınırlandırılır; kanıt modeli ve açık doğrulama boşlukları [Teknik Doğrulama Kaydı](https://github.com/esenbaytekin/PixInsight-Master-Guide/blob/main/TECHNICAL_VERIFICATION.md) içinde açıklanır.

## Rehber Nasıl Kullanılır?

| Katman | Ne sağlar? | Ne zaman açılır? |
| --- | --- | --- |
| Process sayfaları | Amaç, girdi, parametre, çıktı ve sınırlar | Bir aracın nasıl ve neden kullanıldığını incelerken |
| [Uygulamalı iş akışları](15-workflows/index.md) | Process'ler arası sıra ve kararlar | Bir veri setini baştan sona planlarken |
| [Hata Kütüphanesi](14-hata-kutuphanesi/index.md) | Belirti → olası neden → ilk kontrol | Belirli bir hata veya artifact oluştuğunda |
| [Hızlı Referans](quick-reference.md) | İşleme sırasında kısa kontrol tabloları | Uygulama sırasında hızlı karar verirken |
| [Terimler Sözlüğü](glossary.md) | İngilizce ad, kısaltma ve Türkçe anlam | Bilinmeyen bir terimle karşılaşıldığında |
| [Teknik Doğrulama](https://github.com/esenbaytekin/PixInsight-Master-Guide/blob/main/TECHNICAL_VERIFICATION.md) | Kaynak, UI ve test sınırları | Bir iddianın kanıt düzeyini değerlendirirken |

## Nereden Başlamalısınız?

### PixInsight'a Yeni Başlıyorsanız

1. [PixInsight Temelleri](02-pixinsight-temelleri/index.md) ile workspace, STF ve HistogramTransformation ayrımını öğrenin.
2. [Calibration Pipeline](03-kalibrasyon/calibration-pipeline.md) ile ham verinin yaşam döngüsünü izleyin.
3. [StarAlignment](03-kalibrasyon/star-alignment.md) ve [ImageIntegration](03-kalibrasyon/image-integration.md) ile registration/integration ilişkisini kurun.
4. [Gradient Bölümüne Giriş](04-gradient/index.md) ve [Renk Kalibrasyonuna Giriş](05-color-calibration/index.md) ile lineer düzenlemeleri planlayın.
5. [Stretch](07-stretch/index.md) ve [Son İşlemler](13-final/index.md) ile nonlinear aşamaya geçin.

### OSC Verisi İşliyorsanız

[OSC İş Akışı](15-workflows/osc-workflow.md) ana rotadır. Calibration için [WBPP](03-kalibrasyon/wbpp.md), renk için [SPCC](05-color-calibration/spcc.md), stretch için [HistogramTransformation](07-stretch/histogram-transformation.md) sayfalarını gerektiğinde açın.

### Mono LRGB Verisi İşliyorsanız

[Mono İş Akışı](15-workflows/mono-workflow.md) ile başlayın; ardından [ChannelCombination](08-lrgb/channel-combination.md), [Luminance Hazırlama](08-lrgb/luminance-hazirlama.md) ve [LRGBCombination](08-lrgb/lrgb-combination.md) kararlarını inceleyin. Uçtan uca hedef örneği için [M31 LRGB + Ha](20-uygulamalar/m31-lrgb-ha/index.md) uygulamasını kullanın.

### SHO veya HOO Verisi İşliyorsanız

[SHO ve HOO Narrowband İş Akışı](15-workflows/sho-hoo.md) ana rotadır. Kanal kombinasyonu için [SHO](09-narrowband/sho.md) ve [HOO](09-narrowband/hoo.md), formül denetimi için [PixelMath](10-pixelmath/index.md), seçici düzeltmeler için [Maskeler](11-maskeler/index.md) sayfalarına gidin.

### Belirli Bir Sorunu Çözüyorsanız

Önce [Hata Kütüphanesi](14-hata-kutuphanesi/index.md) veya [Hızlı Referans](quick-reference.md) içindeki belirti tablosuna bakın. Gradient kaynaklı sorunlarda [Gradient Tanısı](04-gradient/gradient-diagnostics.md), renk sorunlarında [Renk Kalibrasyonu Tanısı](05-color-calibration/color-calibration-diagnostics.md), PixelMath hatalarında [Hata Ayıklama](10-pixelmath/hata-ayiklama.md) sayfasını kullanın.

## Temel İşleme Akışı

```mermaid
flowchart LR
    cal["Calibration"] --> reg["Registration"]
    reg --> integ["Integration"]
    integ --> crop["Crop"]
    crop --> grad["Gradient Correction"]
    grad --> color["Color Calibration"]
    color --> linear["Linear Processing"]
    linear --> stretch["Stretch"]
    stretch --> nonlinear["Nonlinear Enhancement"]
    nonlinear --> final["Final Color"]
    final --> export["Export"]
```

Bu sıra bir yönlendirme çerçevesidir, zorunlu reçete değildir. Hedef, veri kalitesi, kullanılan process ve yıldızlı/starless çalışma tercihi bazı dalların yerini değiştirebilir.

## Lineer ve Nonlineer Görüntü

Lineer görüntüde piksel değerleri kaydedilen sinyalle doğrusal ilişkiyi korur; STF yalnız ekran görünümünü değiştirir. Kalıcı stretch uygulandığında veri nonlinear olur. Bu ayrım için [STF](02-pixinsight-temelleri/stf.md), [Histogram](02-pixinsight-temelleri/histogram.md) ve [Stretch](07-stretch/index.md) sayfalarını birlikte okuyun.

## Maskeler Hakkında Kritik Kural

- **Beyaz**, işlemin etkisini geçirir.
- **Siyah**, alanı korur.
- **Gri**, etkiyi kısmen geçirir.

Maskenin görünür olması etkin olduğu anlamına gelmeyebilir; uygulama öncesi aktif maskeyi ve inversion durumunu kontrol edin. Ayrıntılar: [Maske Mantığı](11-maskeler/maske-mantigi.md).

## Dokümantasyon İşaretleri

| İşaret | Anlamı |
| --- | --- |
| Evidence Level | İddianın dayandığı kaynak veya kanıt türü |
| Recipe Validation | Tarifin conceptual, statik veya gerçek veriyle test durumunu |
| Error Severity | Hatanın veri ve workflow üzerindeki etkisini |
| Technical Verification Status | UI, kaynak ve data validation kapsamını |

Terminoloji ve sınıflar için [STYLE_GUIDE](https://github.com/esenbaytekin/PixInsight-Master-Guide/blob/main/STYLE_GUIDE.md), proje genelindeki sonuçlar için [Teknik Doğrulama Kaydı](https://github.com/esenbaytekin/PixInsight-Master-Guide/blob/main/TECHNICAL_VERIFICATION.md) esas alınır.

## İlk Önerilen Uygulama

Yeni kullanıcı için en dengeli başlangıç, mevcut [OSC İş Akışı](15-workflows/osc-workflow.md) sayfasıdır. Tek kamera veri zinciri sayesinde calibration, gradient, color calibration ve stretch sınırlarını çok kanallı mono kombinasyon ek yükü olmadan izlemeyi kolaylaştırır.

## Ayrıca İnceleyin

- [Hızlı Referans](quick-reference.md)
- [Terimler Sözlüğü](glossary.md)
- [Hata Kütüphanesi](14-hata-kutuphanesi/index.md)
- [Uygulamalı İş Akışları](15-workflows/index.md)
- [Teknik Doğrulama Kaydı](https://github.com/esenbaytekin/PixInsight-Master-Guide/blob/main/TECHNICAL_VERIFICATION.md)

## Sonraki Bölüm

[Terimler Sözlüğü →](glossary.md)
