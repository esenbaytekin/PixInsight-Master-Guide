# Terimler Sözlüğü

!!! info "Sayfa Bilgisi"
    **Kategori:** Başvuru · **Düzey:** Beginner · **Tahmini okuma:** 15 dk
    **Anahtar kelimeler:** `Terimler Sözlüğü` · `PixInsight terimleri` · `glossary` · `kısaltmalar` · `process names` · `astrofotoğraf terimleri`

## Sözlük Nasıl Kullanılır?

Official process ve parametre adları İngilizce bırakılır; Türkçe karşılık, kavramı bulmayı kolaylaştırır. Kısaltmalar, yaygın topluluk kullanımları ve boşluklu ad varyantları aynı satırda gösterilir. Ayrıntılı teknik açıklama varsa bağlantı canonical sayfaya gider; sözlük ikinci bir teknik authority oluşturmaz.

## Alfabetik Terimler

| Terim | Türkçe karşılık | Kısa açıklama | İlgili sayfa |
| --- | --- | --- | --- |
| ABE; AutomaticBackgroundExtractor | Otomatik arka plan çıkarımı | Otomatik örnekleme ile geniş ölçekli background modeli kuran process. | [ABE](04-gradient/abe.md) |
| Additive gradient | Toplamsal gradient | Görüntü sinyaline eklenen sky glow veya ışık kirliliği bileşeni. | [Gradient Teorisi](04-gradient/gradient-theory.md) |
| Artifact | İşleme artifaktı | Gerçek gökyüzü sinyalinden değil acquisition veya processing zincirinden doğan yapı. | [Hata Kütüphanesi](14-hata-kutuphanesi/index.md) |
| Background model | Arka plan modeli | Gradient düzeltmesinde istenmeyen geniş ölçekli bileşenin tahmini. | [Gradient Teorisi](04-gradient/gradient-theory.md) |
| BackgroundNeutralization | Arka plan nötrleme | Seçilen background referansındaki kanal dengesini nötrlemeyi amaçlayan process. | [BackgroundNeutralization](05-color-calibration/background-neutralization-process.md) |
| Bias; master bias | Bias; ana bias | En kısa pozlarda elektronik offset ve sabit desen bileşenini modelleyen calibration frame'i. | [ImageCalibration](03-kalibrasyon/image-calibration.md) |
| Bicolor | İki kanallı narrowband | Genellikle iki emission kanalından renk eşlemesi üreten yaklaşım. | [HOO](09-narrowband/hoo.md) |
| Black point | Siyah nokta | Histogramın karanlık sınırı; yanlış taşınması shadow clipping oluşturabilir. | [Histogram](02-pixinsight-temelleri/histogram.md) |
| Blend ratio | Karışım oranı | İki veya daha fazla kaynağın birleşimdeki göreli katkısı. | [Kanal Karışımları](10-pixelmath/kanal-karisimlari.md) |
| BlurXTerminator; BXT | Model tabanlı restoration eklentisi | Optik blur ve yıldız profilini ele alan, sürüme duyarlı RC Astro process'i. | [BlurXTerminator](06-ai-eklentileri/blurxterminator.md) |
| CFA; Color Filter Array | Renk filtre dizisi | OSC sensörde piksellerin farklı renk filtreleri altında örneklendiği düzen. | [ImageCalibration](03-kalibrasyon/image-calibration.md) |
| Channel expression | Kanal ifadesi | PixelMath içinde output kanalını tanımlayan ifade. | [PixelMath Temelleri](10-pixelmath/temeller.md) |
| Channel mapping | Kanal eşleme | Kaynak kanalların output R, G ve B kanallarına atanması. | [Kanal Karışımları](10-pixelmath/kanal-karisimlari.md) |
| Chrominance | Renk bilgisi | Parlaklıktan ayrıştırılmış renk farkı bileşeni; tanımı renk uzayına bağlıdır. | [Renk ve Kanallar](02-pixinsight-temelleri/renk-ve-kanallar.md) |
| Chrominance noise | Renk gürültüsü | Renk kanalları arasındaki rastlantısal değişim olarak görünen noise. | [NoiseXTerminator](06-ai-eklentileri/noisexterminator.md) |
| Clipping | Kırpılma | Piksel bilgisinin alt veya üst sınıra yığılmasıyla ton ayrımının kaybolması. | [Histogram](02-pixinsight-temelleri/histogram.md) |
| Cold pixel | Soğuk piksel | Komşularına göre sistematik olarak düşük yanıt veren kusurlu piksel. | [CosmeticCorrection](03-kalibrasyon/cosmetic-correction.md) |
| Color cast | Renk baskınlığı | Görüntü veya background üzerinde istenmeyen kanal ağırlığı. | [Renk Kalibrasyonu Tanısı](05-color-calibration/color-calibration-diagnostics.md) |
| Color mask; ColorMask | Renk maskesi | Belirli hue/saturation aralığını seçici işleme için ayıran maske. | [ColorMask](11-maskeler/color-mask.md) |
| Continuum | Süreklilik sinyali | Dar emission çizgileri dışındaki geniş spektral yıldız/nesne katkısı. | [Narrowband](09-narrowband/index.md) |
| Correct Only | Yalnız düzeltme | BlurXTerminator'da yeni ayrıntı restoration'ından farklı bir düzeltme çalışma modu. | [BlurXTerminator](06-ai-eklentileri/blurxterminator.md) |
| Cosmetic correction | Kozmetik düzeltme | Hot/cold pixel ve bilinen defect'leri calibration sonrası ele alan aşama. | [CosmeticCorrection](03-kalibrasyon/cosmetic-correction.md) |
| CurvesTransformation | Eğri dönüşümü | Ton, saturation ve seçili kanal ilişkilerini eğrilerle düzenleyen process. | [CurvesTransformation](13-final/curves-transformation.md) |
| Dark flat | Flat dark | Flat frame ile uyumlu poz/gain koşullarında çekilen dark calibration frame'i. | [ImageCalibration](03-kalibrasyon/image-calibration.md) |
| Dark frame; master dark | Dark; ana dark | Termal sinyal ve sensör kaynaklı sabit desen bileşenlerini modelleyen frame. | [ImageCalibration](03-kalibrasyon/image-calibration.md) |
| DBE; DynamicBackgroundExtraction; Dynamic Background Extraction | Dinamik arka plan çıkarımı | Kullanıcı kontrollü sample'larla background modeli kuran process. | [DBE](04-gradient/dbe.md) |
| Flat; master flat | Flat; ana flat | Optik aydınlatma ve piksel yanıtındaki multiplicative farklılıkları modelleyen frame. | [ImageCalibration](03-kalibrasyon/image-calibration.md) |
| Gradient | Arka plan eğimi | Görüntü alanında konuma bağlı geniş ölçekli background değişimi. | [Gradient Teorisi](04-gradient/gradient-theory.md) |
| GradientCorrection | Gradient düzeltme | PixInsight'ın background modelleme ve correction process'lerinden biri. | [GradientCorrection](04-gradient/gradient-correction.md) |
| Ha; H-alpha | Hidrojen alfa | 656,3 nm çevresindeki hidrojen emission çizgisi için kullanılan kanal adı. | [Narrowband](09-narrowband/index.md) |
| Halo | Hale | Parlak yıldız veya optik yansıma çevresindeki geniş halka/ışık yapısı. | [Hata Kütüphanesi](14-hata-kutuphanesi/index.md) |
| HDRMT; HDRMultiscaleTransform | Çok ölçekli dinamik aralık dönüşümü | Büyük parlaklık yapılarını farklı ölçeklerde sıkıştıran process. | [HDRMultiscaleTransform](12-detay-ve-kontrast/hdr-multiscale-transform.md) |
| Histogram | Ton dağılımı | Piksel değerlerinin yoğunluk veya kanal bazlı dağılımı. | [Histogram](02-pixinsight-temelleri/histogram.md) |
| HistogramTransformation | Histogram dönüşümü | Histogramı ve görüntü datasını kalıcı biçimde değiştiren intensity process'i. | [HistogramTransformation](07-stretch/histogram-transformation.md) |
| HOO | H-alpha–OIII–OIII paleti | Ha ve OIII kanallarını RGB output'a eşleyen bicolor yaklaşım ailesi. | [HOO](09-narrowband/hoo.md) |
| Hot pixel | Sıcak piksel | Komşularına göre sistematik yüksek değer üreten kusurlu piksel. | [CosmeticCorrection](03-kalibrasyon/cosmetic-correction.md) |
| Hubble Palette | Hubble paleti | SII, Ha ve OIII kanallarını çoğunlukla R, G, B'ye eşleyen SHO yaklaşımı. | [SHO](09-narrowband/sho.md) |
| Image identifier | Görüntü tanımlayıcısı | PixelMath ifadelerinde açık görüntü veya view'ı adlandıran kimlik. | [PixelMath Temelleri](10-pixelmath/temeller.md) |
| Integration | Entegrasyon | Registered subframe'leri birleştirerek SNR ve veri güvenilirliğini artıran aşama. | [ImageIntegration](03-kalibrasyon/image-integration.md) |
| LHE; LocalHistogramEqualization | Yerel histogram eşitleme | Belirli ölçeklerde local contrast düzenleyen process. | [LocalHistogramEqualization](12-detay-ve-kontrast/local-histogram-equalization.md) |
| Linear image | Lineer görüntü | Piksel değerleri kaydedilen sinyalle doğrusal ilişkiyi koruyan görüntü durumu. | [Lineer ve Nonlineer Görüntü](02-pixinsight-temelleri/lineer-ve-nonlineer-goruntu.md) |
| Linear normalization | Lineer normalizasyon | Integration/rejection öncesi frame ölçek ve offset ilişkilerini uyumlama yaklaşımı. | [ImageIntegration](03-kalibrasyon/image-integration.md) |
| LRGB | Luminance–Red–Green–Blue | Luminance ayrıntısını RGB renk verisiyle birleştiren mono iş akışı. | [LRGB](08-lrgb/index.md) |
| Luminance | Parlaklık | Bir renk temsilindeki parlaklık/yapı bileşeni; ağırlık tanımı renk uzayına bağlıdır. | [Renk ve Kanallar](02-pixinsight-temelleri/renk-ve-kanallar.md) |
| Luminance mask | Luminance maskesi | Parlaklık yapısından üretilen seçici etki maskesi. | [Luminance Mask](11-maskeler/luminance-mask.md) |
| Luminance noise | Parlaklık gürültüsü | Ton/parlaklık kanalında görülen rastlantısal değişim. | [NoiseXTerminator](06-ai-eklentileri/noisexterminator.md) |
| Mask | Maske | Process etkisini piksel bazında geçiren veya sınırlayan grayscale kontrol görüntüsü. | [Maske Mantığı](11-maskeler/maske-mantigi.md) |
| Mask inversion | Maske tersleme | Beyaz ve siyah etki yönünü tersine çevirme. | [Maske Mantığı](11-maskeler/maske-mantigi.md) |
| Master frame | Ana kalibrasyon frame'i | Aynı tür calibration frame'lerinin integration ile üretilen referansı. | [Calibration Pipeline](03-kalibrasyon/calibration-pipeline.md) |
| Midtones | Orta tonlar | Black ve white point arasındaki tonal bölge. | [Histogram ve Ton Dağılımı](02-pixinsight-temelleri/histogram.md) |
| MLT; MultiscaleLinearTransform | Çok ölçekli lineer dönüşüm | Wavelet katmanları üzerinden ölçek seçici işlem yapan process; bu sürümde ayrı canonical sayfası yoktur. | — |
| MMT; MultiscaleMedianTransform | Çok ölçekli medyan dönüşümü | Median tabanlı katman ayrımıyla ölçek seçici işlem yapan process. | [MultiscaleMedianTransform](12-detay-ve-kontrast/multiscale-median-transform.md) |
| Model-based reconstruction | Model tabanlı yeniden yapılandırma | Öğrenilmiş veya matematiksel modelle görüntü bileşenini tahmin eden yaklaşım; bilimsel doğruluk garantisi değildir. | [AI Eklentileri](06-ai-eklentileri/index.md) |
| Multiplicative gradient | Çarpımsal gradient | Flat-field veya illumination yanıtıyla ilişkili konuma bağlı ölçek değişimi. | [Flat ve Gradient](04-gradient/flat-field-vs-gradient.md) |
| Narrowband | Dar bant | Belirli emission çizgeleri çevresindeki dar spektral aralığı kaydeden görüntüleme. | [Narrowband](09-narrowband/index.md) |
| Noise | Gürültü | Ölçümde gerçek sinyali belirsizleştiren rastlantısal değişim. | [Sinyal ve Gürültü](02-pixinsight-temelleri/sinyal-ve-gurultu.md) |
| NoiseXTerminator; NXT | Model tabanlı noise reduction eklentisi | Noise görünümünü azaltan, sürüme duyarlı RC Astro process'i. | [NoiseXTerminator](06-ai-eklentileri/noisexterminator.md) |
| Nonlinear image | Nonlineer görüntü | Kalıcı tonal dönüşüm uygulanmış, sinyalle doğrusal ilişkiyi artık korumayan görüntü. | [Lineer ve Nonlineer Görüntü](02-pixinsight-temelleri/lineer-ve-nonlineer-goruntu.md) |
| Normalize | Normalleştirme | Değerleri tanımlı bir ölçek veya referans ilişkisine uyarlama; anlamı process'e bağlıdır. | [PixelMath Temelleri](10-pixelmath/temeller.md) |
| OIII | Çift iyonize oksijen | Oksijen emission çizgelerini temsil eden narrowband kanal adı. | [Narrowband](09-narrowband/index.md) |
| OSC; One-Shot Color | Tek çekimde renkli kamera | CFA üzerinden renk kanallarını aynı sensörde örnekleyen kamera/veri türü. | [OSC İş Akışı](15-workflows/osc-workflow.md) |
| Overprocessing | Aşırı işleme | Yapı, renk veya noise üzerinde doğal/ölçülebilir sınırları aşan işlem etkisi. | [Son İşlemler](13-final/index.md) |
| Partial effect | Kısmi etki | Gri maske değerinin process etkisini oransal olarak sınırlandırması. | [Maske Mantığı](11-maskeler/maske-mantigi.md) |
| PCC; PhotometricColorCalibration | Fotometrik renk kalibrasyonu | Plate solution ve katalog referansıyla renk kalibrasyonu yapan legacy process/workflow. | [PCC](05-color-calibration/pcc.md) |
| PixelMath | Piksel matematiği | Görüntü ve kanal değerlerini ifadelerle dönüştüren process. | [PixelMath](10-pixelmath/index.md) |
| Protection | Koruma | Maske veya process parametresiyle belirli piksel/yapıların etkiden sınırlandırılması. | [Maskeler](11-maskeler/index.md) |
| Range mask; RangeSelection | Aralık maskesi | Ton aralığına göre maske üreten process ve onun output maskesi. | [RangeSelection](11-maskeler/range-mask.md) |
| Registration | Hizalama/kayıt | Görüntüleri ortak koordinat sistemine taşıma aşaması. | [StarAlignment](03-kalibrasyon/star-alignment.md) |
| Rejection | Aykırı değer reddi | Integration sırasında uydu izi, cosmic ray veya diğer outlier örnekleri dışlama. | [ImageIntegration](03-kalibrasyon/image-integration.md) |
| Rescale | Yeniden ölçekleme | PixelMath output değerlerini seçilen aralığa eşleme seçeneği. | [PixelMath Temelleri](10-pixelmath/temeller.md) |
| SII | İyonize kükürt | Kükürt emission çizgelerini temsil eden narrowband kanal adı. | [Narrowband](09-narrowband/index.md) |
| SHO | SII–Ha–OIII paleti | Üç narrowband kanalın RGB output'a eşlendiği false-color yaklaşımı. | [SHO](09-narrowband/sho.md) |
| Signal | Sinyal | Hedef veya ölçülmek istenen fiziksel kaynaktan gelen veri bileşeni. | [Sinyal ve Gürültü](02-pixinsight-temelleri/sinyal-ve-gurultu.md) |
| SNR; Signal-to-Noise Ratio | Sinyal-gürültü oranı | Ölçülebilir sinyalin noise belirsizliğine göre gücü. | [SNR ve Dinamik Aralık](01-temeller/snr-ve-dinamik-aralik.md) |
| SPCC; SpectrophotometricColorCalibration | Spektrofotometrik renk kalibrasyonu | Katalog, plate solution ve sensor/filter response bilgileriyle renk kalibrasyonu yapan process. | [SPCC](05-color-calibration/spcc.md) |
| Star mask; StarMask | Yıldız maskesi | Yıldızları seçici işlem için ayıran maske ve ilgili process. | [StarMask](11-maskeler/star-mask.md) |
| Star recombination | Yıldız yeniden birleştirme | Starless ve stars bileşenlerini kontrollü biçimde tekrar bir araya getirme. | [StarXTerminator](06-ai-eklentileri/starxterminator.md) |
| Starless image | Yıldızsız görüntü | Yıldız bileşeni ayrılmış görüntü katmanı; kusursuz fiziksel ayrım olduğu varsayılmaz. | [StarXTerminator](06-ai-eklentileri/starxterminator.md) |
| StarXTerminator; SXT | Yıldız ayırma eklentisi | Yıldız ve starless bileşenleri üretebilen, sürüme duyarlı RC Astro process'i. | [StarXTerminator](06-ai-eklentileri/starxterminator.md) |
| Stretch | Tonal genişletme | Lineer veriyi görünür nonlinear tonal dağılıma kalıcı biçimde dönüştürme. | [Stretch Temelleri](02-pixinsight-temelleri/stretch-temelleri.md) |
| Synthetic luminance | Sentetik luminance | Birden fazla kanaldan matematiksel olarak üretilen parlaklık bileşeni. | [Luminance Hazırlama](08-lrgb/luminance-hazirlama.md) |
| White point | Beyaz nokta | Histogramın parlak sınırı; yanlış taşınması highlight clipping oluşturabilir. | [Histogram ve Ton Dağılımı](02-pixinsight-temelleri/histogram.md) |

## İlgili Başvuru Sayfaları

- [Başlangıç](index.md)
- [Hızlı Referans](quick-reference.md)
- [Hata Kütüphanesi](14-hata-kutuphanesi/index.md)
- [Teknik Doğrulama Kaydı](https://github.com/esenbaytekin/PixInsight-Master-Guide/blob/main/TECHNICAL_VERIFICATION.md)

## Önceki ve Sonraki Bölüm

[← Başlangıç](index.md) · [Hızlı Referans →](quick-reference.md)
