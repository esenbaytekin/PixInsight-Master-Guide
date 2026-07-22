# Global Navigation Audit — Phase 7.1.1

## Amaç ve kapsam

Bu rapor, `docs/` altındaki her Markdown sayfasını kullanıcı niyetine göre sınıflandırır ve Phase 7.1.1 navigasyon kararlarını kaydeder. Teknik içerik değiştirilmemiş, dosya taşınmamış ve canonical URL yapısı korunmuştur.

## Mimari karar

Önerilen eğitim akışı şöyledir:

```text
Başlangıç
→ Foundations
→ Kalibrasyon ve Ön İşleme
→ Arka Plan ve Gradient
→ Renk Kalibrasyonu
→ Stretch
→ Maskeler
→ Gürültü ve Detay
→ PixelMath ve Kanal Birleştirme
→ Son İşlemler
→ İş Akışları
→ Sorun Giderme
→ Referans
```

Navigasyon dosya adlarına göre değil, kullanıcının gerçekleştirmek istediği işe göre düzenlenmiştir. Repository düzeni ile navigasyon düzeni bilinçli olarak birbirinden bağımsız tutulmuştur.

## Gruplama kararları

- `Kalibrasyon`, eğitim sırasını görünür kılmak için pipeline/otomasyon, kalibrasyon/düzeltme ve registration/integration alt gruplarına ayrıldı.
- `Gradient`, kavram/tanı, modelleme araçları, çevresel gradientler ve uygulama/referans olarak bölündü.
- `Renk Kalibrasyonu`, temel kavramlar, SPCC ve alternatifler/tanı olarak bölündü.
- `AI Eklentileri` ile `Detay ve Kontrast`, ortak kullanıcı amacı nedeniyle `Gürültü ve Detay` altında birleştirildi.
- `LRGB`, `Narrowband` ve `PixelMath`, kanal matematiği ve birleştirme ilişkisini göstermek için tek üst grupta birleştirildi.
- `Uygulamalı İş Akışları` ve `Uygulamalar`, rehberler ile gerçek projeleri tek görev odaklı alanda göstermek için birleştirildi.
- `Hata Kütüphanesi`, kullanıcı niyetini daha doğrudan ifade eden `Sorun Giderme` adıyla sunuldu.
- Hızlı referans, sözlük ve gizlilik sayfası `Referans` altında toplandı.
- Tek sayfalık `Başlangıç` bağımsız giriş noktasıdır; üç sayfadan az bölüm kuralına rağmen başka grupla birleştirilmemiştir çünkü tüm bilgi mimarisinin zorunlu köküdür.

## Birleştirilen ve bölünen gruplar

### Birleştirilenler

| Önceki gruplar | Yeni grup | Gerekçe |
|---|---|---|
| AI Eklentileri + Detay ve Kontrast | Gürültü ve Detay | Restorasyon, gürültü kontrolü ve detay yönetimi aynı işlem niyetini paylaşır. |
| LRGB + Narrowband + PixelMath | PixelMath ve Kanal Birleştirme | Kanal matematiği, palet üretimi ve kombinasyon ilişkisi görünür olur. |
| Uygulamalı İş Akışları + Uygulamalar | İş Akışları | Genel reçeteler ile gerçek hedef projeleri aynı öğrenme alanında kalır. |
| Başlangıç içindeki sözlük/referans + Proje | Referans | Süreç dışı başvuru sayfaları tek yerde bulunur. |

### Bölünenler

| Grup | Alt gruplar | Gerekçe |
|---|---|---|
| Kalibrasyon ve Ön İşleme | Pipeline ve Otomasyon; Kalibrasyon ve Düzeltme; Registration ve Integration | Fiziksel işlem sırasını görünür kılar. |
| Arka Plan ve Gradient | Kavramlar ve Tanı; Modelleme Araçları; Çevresel Gradientler; Uygulama ve Referans | 17 sayfalık düz listeyi görev odaklı kümelere ayırır. |
| Renk Kalibrasyonu | Renk Temelleri; SPCC; Alternatifler ve Tanı | Teori, ana yöntem ve alternatif/tanı ayrımını kurar. |
| İş Akışları | Kamera ve Veri Akışları; Hedefe Göre İş Akışları; Uygulamalı projeler | Kullanıcının veri kaynağı veya hedef türünden başlamasını sağlar. |

## Material yapılandırması

- Korundu: `navigation.sections`, `navigation.indexes`, `navigation.top`.
- Eklendi: `navigation.tracking`; aktif sayfanın URL parçasını konum takibinde kullanır.
- Eklendi: `navigation.footer`; eğitim sırasındaki önceki/sonraki sayfaları görünür kılar.
- Eklenmedi: `navigation.expand`; tüm dalları başlangıçta açarak uzun menüyü yeniden kalabalıklaştıracağı için uygun değildir.
- Eklenmedi: `navigation.instant`; bu sprintin bilgi mimarisi hedefi için gerekli değildir ve davranış kapsamını gereksiz genişletir.
- Özel JavaScript, özel ağaç kontrolü, animasyon veya renk değişikliği yoktur.
- Ek CSS gerekmedi.

## Navigasyon metrikleri

| Metrik | Sonuç |
|---|---:|
| Toplam Markdown sayfası | 130 |
| Aktif navigasyon sayfası | 126 |
| Eski URL yönlendirme sayfası | 4 |
| Üst düzey navigasyon öğesi | 13 |
| İçerik grubu | 12 + 1 başlangıç noktası |
| Aktif grup başına ortalama sayfa | 9,7 |
| En büyük grup | İş Akışları — 27 sayfa |
| En küçük içerik grubu | Referans — 3 sayfa |
| Bağımsız giriş | Başlangıç — 1 sayfa |
| Maksimum navigasyon derinliği | 3 |
| Alt gruba alınmadan kalan aktif sayfa | 31 |
| Önerilen birleşme | 4 |
| Önerilen bölünme | 4 |
| Dosya taşıma gereksinimi | 0 |
| Canonical URL değişikliği | 0 |
| Duplicate aktif navigasyon | 0 |

Doğrudan grup altında kalan 31 sayfa bir hata değildir: küçük ve kendi içinde okunabilir Stretch, Maskeler, Son İşlemler, Sorun Giderme ve Referans alanları ile bölüm giriş sayfalarından oluşur. Bunları ek alt seviyelere bölmek bilgi kazanımı sağlamaz.

## Sayfa sınıflandırması

| Sayfa | Mevcut konum | Önerilen navigasyon grubu | Gerekçe | Eğitim katmanı | Canonical URL etkilendi mi? | Repository taşıması gerekli mi? | Duplicate navigasyon? |
|---|---|---|---|---|---|---|---|
| Çekim Planlama | `01-temeller/cekim-planlama.md` (01-temeller) | Foundations | İleri süreçlerden önce gereken kavramsal ve arayüz bilgisini kurar. | Temel kavramlar | Hayır; URL korunuyor | Hayır | Hayır |
| CMOS ve Monokrom Kamera | `01-temeller/cmos-ve-monokrom-kamera.md` (01-temeller) | Foundations | İleri süreçlerden önce gereken kavramsal ve arayüz bilgisini kurar. | Temel kavramlar | Hayır; URL korunuyor | Hayır | Hayır |
| Filtreler | `01-temeller/filtreler.md` (01-temeller) | Foundations | İleri süreçlerden önce gereken kavramsal ve arayüz bilgisini kurar. | Temel kavramlar | Hayır; URL korunuyor | Hayır | Hayır |
| Foundations | `01-temeller/index.md` (01-temeller) | Foundations | İleri süreçlerden önce gereken kavramsal ve arayüz bilgisini kurar. | Temel kavramlar | Hayır; URL korunuyor | Hayır | Hayır |
| SNR ve Dinamik Aralık | `01-temeller/snr-ve-dinamik-aralik.md` (01-temeller) | Foundations | İleri süreçlerden önce gereken kavramsal ve arayüz bilgisini kurar. | Temel kavramlar | Hayır; URL korunuyor | Hayır | Hayır |
| Histogram ve HistogramTransformation | `02-pixinsight-temelleri/histogram.md` (02-pixinsight-temelleri) | Foundations | İleri süreçlerden önce gereken kavramsal ve arayüz bilgisini kurar. | Temel kavramlar | Hayır; URL korunuyor | Hayır | Hayır |
| PixInsight Temelleri | `02-pixinsight-temelleri/index.md` (02-pixinsight-temelleri) | Foundations | İleri süreçlerden önce gereken kavramsal ve arayüz bilgisini kurar. | Temel kavramlar | Hayır; URL korunuyor | Hayır | Hayır |
| Preview, Clone ve History Explorer | `02-pixinsight-temelleri/preview-clone-history.md` (02-pixinsight-temelleri) | Foundations | İleri süreçlerden önce gereken kavramsal ve arayüz bilgisini kurar. | Temel kavramlar | Hayır; URL korunuyor | Hayır | Hayır |
| Process Icons ve ProcessContainer | `02-pixinsight-temelleri/process-icons.md` (02-pixinsight-temelleri) | Foundations | İleri süreçlerden önce gereken kavramsal ve arayüz bilgisini kurar. | Temel kavramlar | Hayır; URL korunuyor | Hayır | Hayır |
| ScreenTransferFunction (STF) | `02-pixinsight-temelleri/stf.md` (02-pixinsight-temelleri) | Foundations | İleri süreçlerden önce gereken kavramsal ve arayüz bilgisini kurar. | Temel kavramlar | Hayır; URL korunuyor | Hayır | Hayır |
| Workspace | `02-pixinsight-temelleri/workspace.md` (02-pixinsight-temelleri) | Foundations | İleri süreçlerden önce gereken kavramsal ve arayüz bilgisini kurar. | Temel kavramlar | Hayır; URL korunuyor | Hayır | Hayır |
| Calibration Pipeline | `03-kalibrasyon/calibration-pipeline.md` (03-kalibrasyon) | Kalibrasyon ve Ön İşleme | Ham veriyi kayıt ve entegrasyona hazırlayan ardışık sürecin parçasıdır. | Lineer ön işleme | Hayır; URL korunuyor | Hayır | Hayır |
| CosmeticCorrection | `03-kalibrasyon/cosmetic-correction.md` (03-kalibrasyon) | Kalibrasyon ve Ön İşleme | Ham veriyi kayıt ve entegrasyona hazırlayan ardışık sürecin parçasıdır. | Lineer ön işleme | Hayır; URL korunuyor | Hayır | Hayır |
| ImageCalibration | `03-kalibrasyon/image-calibration.md` (03-kalibrasyon) | Kalibrasyon ve Ön İşleme | Ham veriyi kayıt ve entegrasyona hazırlayan ardışık sürecin parçasıdır. | Lineer ön işleme | Hayır; URL korunuyor | Hayır | Hayır |
| ImageIntegration | `03-kalibrasyon/image-integration.md` (03-kalibrasyon) | Kalibrasyon ve Ön İşleme | Ham veriyi kayıt ve entegrasyona hazırlayan ardışık sürecin parçasıdır. | Lineer ön işleme | Hayır; URL korunuyor | Hayır | Hayır |
| Image Calibration Pipeline | `03-kalibrasyon/index.md` (03-kalibrasyon) | Kalibrasyon ve Ön İşleme | Ham veriyi kayıt ve entegrasyona hazırlayan ardışık sürecin parçasıdır. | Lineer ön işleme | Hayır; URL korunuyor | Hayır | Hayır |
| StarAlignment | `03-kalibrasyon/star-alignment.md` (03-kalibrasyon) | Kalibrasyon ve Ön İşleme | Ham veriyi kayıt ve entegrasyona hazırlayan ardışık sürecin parçasıdır. | Lineer ön işleme | Hayır; URL korunuyor | Hayır | Hayır |
| WeightedBatchPreprocessing (WBPP) | `03-kalibrasyon/wbpp.md` (03-kalibrasyon) | Kalibrasyon ve Ön İşleme | Ham veriyi kayıt ve entegrasyona hazırlayan ardışık sürecin parçasıdır. | Lineer ön işleme | Hayır; URL korunuyor | Hayır | Hayır |
| AutomaticBackgroundExtractor (ABE) | `04-gradient/abe.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| DynamicBackgroundExtraction (DBE) | `04-gradient/dbe.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| Subtraction ve Division | `04-gradient/division-vs-subtraction.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| Gradient Hata Kartları | `04-gradient/error-cards.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| Flat-field Hatası ve Gradient Ayrımı | `04-gradient/flat-field-vs-gradient.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| GradientCorrection | `04-gradient/gradient-correction.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| Gradient Diagnostics | `04-gradient/gradient-diagnostics.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| Gradient Hızlı Referans | `04-gradient/gradient-quick-reference.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| Gradient Teorisi | `04-gradient/gradient-theory.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| GraXpert Entegrasyonu | `04-gradient/graxpert.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| Gradient Düzeltme | `04-gradient/index.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| Işık Kirliliği Gradientleri | `04-gradient/light-pollution-gradients.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| M31 Gradient İş Akışı | `04-gradient/m31-gradient-workflow.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| Ay Işığı Kaynaklı Gradientler | `04-gradient/moonlight-gradients.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| NGC 6888 Gradient İş Akışı | `04-gradient/ngc6888-gradient-workflow.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| Gerçek Gradient İş Akışları | `04-gradient/real-workflows.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| DBE Sample Yerleşimi | `04-gradient/sample-placement.md` (04-gradient) | Arka Plan ve Gradient | Arka plan tanısı, modelleme, düzeltme veya bu alandaki uygulamayı açıklar. | Lineer arka plan işleme | Hayır; URL korunuyor | Hayır | Hayır |
| Background Neutrality | `05-color-calibration/background-neutrality.md` (05-color-calibration) | Renk Kalibrasyonu | Renk modelini, fotometrik kalibrasyonu veya doğrulamasını destekler. | Lineer renk yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| BackgroundNeutralization | `05-color-calibration/background-neutralization-process.md` (05-color-calibration) | Renk Kalibrasyonu | Renk modelini, fotometrik kalibrasyonu veya doğrulamasını destekler. | Lineer renk yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| Renk Kalibrasyonu Tanısı | `05-color-calibration/color-calibration-diagnostics.md` (05-color-calibration) | Renk Kalibrasyonu | Renk modelini, fotometrik kalibrasyonu veya doğrulamasını destekler. | Lineer renk yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| Astronomik Renk Teorisi | `05-color-calibration/color-theory.md` (05-color-calibration) | Renk Kalibrasyonu | Renk modelini, fotometrik kalibrasyonu veya doğrulamasını destekler. | Lineer renk yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| Color Calibration Giriş | `05-color-calibration/index.md` (05-color-calibration) | Renk Kalibrasyonu | Renk modelini, fotometrik kalibrasyonu veya doğrulamasını destekler. | Lineer renk yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| PhotometricColorCalibration (PCC) | `05-color-calibration/pcc.md` (05-color-calibration) | Renk Kalibrasyonu | Renk modelini, fotometrik kalibrasyonu veya doğrulamasını destekler. | Lineer renk yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| Fotometrik Kalibrasyon Teorisi | `05-color-calibration/photometric-calibration-theory.md` (05-color-calibration) | Renk Kalibrasyonu | Renk modelini, fotometrik kalibrasyonu veya doğrulamasını destekler. | Lineer renk yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| SPCC Broadband İş Akışı | `05-color-calibration/spcc-broadband.md` (05-color-calibration) | Renk Kalibrasyonu | Renk modelini, fotometrik kalibrasyonu veya doğrulamasını destekler. | Lineer renk yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| SPCC Narrowband Kapsamı | `05-color-calibration/spcc-narrowband.md` (05-color-calibration) | Renk Kalibrasyonu | Renk modelini, fotometrik kalibrasyonu veya doğrulamasını destekler. | Lineer renk yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| SPCC Ön Koşulları | `05-color-calibration/spcc-prerequisites.md` (05-color-calibration) | Renk Kalibrasyonu | Renk modelini, fotometrik kalibrasyonu veya doğrulamasını destekler. | Lineer renk yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| SPCC Sorun Giderme | `05-color-calibration/spcc-troubleshooting.md` (05-color-calibration) | Renk Kalibrasyonu | Renk modelini, fotometrik kalibrasyonu veya doğrulamasını destekler. | Lineer renk yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| SpectrophotometricColorCalibration | `05-color-calibration/spcc.md` (05-color-calibration) | Renk Kalibrasyonu | Renk modelini, fotometrik kalibrasyonu veya doğrulamasını destekler. | Lineer renk yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| White Balance | `05-color-calibration/white-balance.md` (05-color-calibration) | Renk Kalibrasyonu | Renk modelini, fotometrik kalibrasyonu veya doğrulamasını destekler. | Lineer renk yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| Sayfa taşındı | `05-renk-kalibrasyonu/background-neutralization.md` (05-renk-kalibrasyonu) | Referans / Eski URL yönlendirmeleri | Canonical içeriği çoğaltmadan geçmiş bağlantıları korur. | Uyumluluk | Hayır; URL korunuyor | Hayır | Hayır; yönlendirme nav dışında |
| Sayfa taşındı | `05-renk-kalibrasyonu/index.md` (05-renk-kalibrasyonu) | Referans / Eski URL yönlendirmeleri | Canonical içeriği çoğaltmadan geçmiş bağlantıları korur. | Uyumluluk | Hayır; URL korunuyor | Hayır | Hayır; yönlendirme nav dışında |
| Sayfa taşındı | `05-renk-kalibrasyonu/pcc.md` (05-renk-kalibrasyonu) | Referans / Eski URL yönlendirmeleri | Canonical içeriği çoğaltmadan geçmiş bağlantıları korur. | Uyumluluk | Hayır; URL korunuyor | Hayır | Hayır; yönlendirme nav dışında |
| Sayfa taşındı | `05-renk-kalibrasyonu/spcc.md` (05-renk-kalibrasyonu) | Referans / Eski URL yönlendirmeleri | Canonical içeriği çoğaltmadan geçmiş bağlantıları korur. | Uyumluluk | Hayır; URL korunuyor | Hayır | Hayır; yönlendirme nav dışında |
| BlurXTerminator | `06-ai-eklentileri/blurxterminator.md` (06-ai-eklentileri) | Gürültü ve Detay / AI Eklentileri | AI tabanlı restorasyon, gürültü giderme veya yıldız ayırma aracıdır. | Lineer ve nonlineer işleme | Hayır; URL korunuyor | Hayır | Hayır |
| AI Eklentileri | `06-ai-eklentileri/index.md` (06-ai-eklentileri) | Gürültü ve Detay / AI Eklentileri | AI tabanlı restorasyon, gürültü giderme veya yıldız ayırma aracıdır. | Lineer ve nonlineer işleme | Hayır; URL korunuyor | Hayır | Hayır |
| NoiseXTerminator | `06-ai-eklentileri/noisexterminator.md` (06-ai-eklentileri) | Gürültü ve Detay / AI Eklentileri | AI tabanlı restorasyon, gürültü giderme veya yıldız ayırma aracıdır. | Lineer ve nonlineer işleme | Hayır; URL korunuyor | Hayır | Hayır |
| StarXTerminator | `06-ai-eklentileri/starxterminator.md` (06-ai-eklentileri) | Gürültü ve Detay / AI Eklentileri | AI tabanlı restorasyon, gürültü giderme veya yıldız ayırma aracıdır. | Lineer ve nonlineer işleme | Hayır; URL korunuyor | Hayır | Hayır |
| ArcsinhStretch | `07-stretch/arcsinh-stretch.md` (07-stretch) | Stretch | Lineer veriyi görünür tonal aralığa taşıyan yöntem veya süreçtir. | Lineerden nonlineere geçiş | Hayır; URL korunuyor | Hayır | Hayır |
| GeneralizedHyperbolicStretch | `07-stretch/generalized-hyperbolic-stretch.md` (07-stretch) | Stretch | Lineer veriyi görünür tonal aralığa taşıyan yöntem veya süreçtir. | Lineerden nonlineere geçiş | Hayır; URL korunuyor | Hayır | Hayır |
| HistogramTransformation | `07-stretch/histogram-transformation.md` (07-stretch) | Stretch | Lineer veriyi görünür tonal aralığa taşıyan yöntem veya süreçtir. | Lineerden nonlineere geçiş | Hayır; URL korunuyor | Hayır | Hayır |
| Stretch ve Doğrusal Olmayan Dönüşüm | `07-stretch/index.md` (07-stretch) | Stretch | Lineer veriyi görünür tonal aralığa taşıyan yöntem veya süreçtir. | Lineerden nonlineere geçiş | Hayır; URL korunuyor | Hayır | Hayır |
| MaskedStretch | `07-stretch/masked-stretch.md` (07-stretch) | Stretch | Lineer veriyi görünür tonal aralığa taşıyan yöntem veya süreçtir. | Lineerden nonlineere geçiş | Hayır; URL korunuyor | Hayır | Hayır |
| ChannelCombination | `08-lrgb/channel-combination.md` (08-lrgb) | PixelMath ve Kanal Birleştirme / LRGB | Luminance ve RGB kanallarının hazırlık ve birleştirme akışını açıklar. | Kanal birleştirme | Hayır; URL korunuyor | Hayır | Hayır |
| LRGB Teorisi ve İş Akışı | `08-lrgb/index.md` (08-lrgb) | PixelMath ve Kanal Birleştirme / LRGB | Luminance ve RGB kanallarının hazırlık ve birleştirme akışını açıklar. | Kanal birleştirme | Hayır; URL korunuyor | Hayır | Hayır |
| LRGBCombination | `08-lrgb/lrgb-combination.md` (08-lrgb) | PixelMath ve Kanal Birleştirme / LRGB | Luminance ve RGB kanallarının hazırlık ve birleştirme akışını açıklar. | Kanal birleştirme | Hayır; URL korunuyor | Hayır | Hayır |
| Luminance Hazırlama | `08-lrgb/luminance-hazirlama.md` (08-lrgb) | PixelMath ve Kanal Birleştirme / LRGB | Luminance ve RGB kanallarının hazırlık ve birleştirme akışını açıklar. | Kanal birleştirme | Hayır; URL korunuyor | Hayır | Hayır |
| PixelMath ile LRGB | `08-lrgb/pixelmath-lrgb.md` (08-lrgb) | PixelMath ve Kanal Birleştirme / LRGB | Luminance ve RGB kanallarının hazırlık ve birleştirme akışını açıklar. | Kanal birleştirme | Hayır; URL korunuyor | Hayır | Hayır |
| Foraxx | `09-narrowband/foraxx.md` (09-narrowband) | PixelMath ve Kanal Birleştirme / Narrowband | Dar bant kanallarının palet ve karışım yöntemlerini açıklar. | Kanal birleştirme | Hayır; URL korunuyor | Hayır | Hayır |
| Hargb | `09-narrowband/hargb.md` (09-narrowband) | PixelMath ve Kanal Birleştirme / Narrowband | Dar bant kanallarının palet ve karışım yöntemlerini açıklar. | Kanal birleştirme | Hayır; URL korunuyor | Hayır | Hayır |
| HOO | `09-narrowband/hoo.md` (09-narrowband) | PixelMath ve Kanal Birleştirme / Narrowband | Dar bant kanallarının palet ve karışım yöntemlerini açıklar. | Kanal birleştirme | Hayır; URL korunuyor | Hayır | Hayır |
| Narrowband | `09-narrowband/index.md` (09-narrowband) | PixelMath ve Kanal Birleştirme / Narrowband | Dar bant kanallarının palet ve karışım yöntemlerini açıklar. | Kanal birleştirme | Hayır; URL korunuyor | Hayır | Hayır |
| Doğal SHO | `09-narrowband/natural-sho.md` (09-narrowband) | PixelMath ve Kanal Birleştirme / Narrowband | Dar bant kanallarının palet ve karışım yöntemlerini açıklar. | Kanal birleştirme | Hayır; URL korunuyor | Hayır | Hayır |
| SHO | `09-narrowband/sho.md` (09-narrowband) | PixelMath ve Kanal Birleştirme / Narrowband | Dar bant kanallarının palet ve karışım yöntemlerini açıklar. | Kanal birleştirme | Hayır; URL korunuyor | Hayır | Hayır |
| PixelMath Hata Ayıklama | `10-pixelmath/hata-ayiklama.md` (10-pixelmath) | PixelMath ve Kanal Birleştirme / PixelMath | İfade tabanlı piksel ve kanal işlemlerinin kavramsal bütünüdür. | Kanal matematiği | Hayır; URL korunuyor | Hayır | Hayır |
| PixelMath | `10-pixelmath/index.md` (10-pixelmath) | PixelMath ve Kanal Birleştirme / PixelMath | İfade tabanlı piksel ve kanal işlemlerinin kavramsal bütünüdür. | Kanal matematiği | Hayır; URL korunuyor | Hayır | Hayır |
| PixelMath Kanal Karışımları ve Tarifler | `10-pixelmath/kanal-karisimlari.md` (10-pixelmath) | PixelMath ve Kanal Birleştirme / PixelMath | İfade tabanlı piksel ve kanal işlemlerinin kavramsal bütünüdür. | Kanal matematiği | Hayır; URL korunuyor | Hayır | Hayır |
| PixelMath Koşullar ve Fonksiyonlar | `10-pixelmath/kosullar-ve-fonksiyonlar.md` (10-pixelmath) | PixelMath ve Kanal Birleştirme / PixelMath | İfade tabanlı piksel ve kanal işlemlerinin kavramsal bütünüdür. | Kanal matematiği | Hayır; URL korunuyor | Hayır | Hayır |
| PixelMath Temelleri | `10-pixelmath/temeller.md` (10-pixelmath) | PixelMath ve Kanal Birleştirme / PixelMath | İfade tabanlı piksel ve kanal işlemlerinin kavramsal bütünüdür. | Kanal matematiği | Hayır; URL korunuyor | Hayır | Hayır |
| ColorMask | `11-maskeler/color-mask.md` (11-maskeler) | Maskeler | Yerel ve seçici işlemler için koruma/seçim mekanizması kurar. | Seçici işleme altyapısı | Hayır; URL korunuyor | Hayır | Hayır |
| Maskeler ve Seçici İşleme | `11-maskeler/index.md` (11-maskeler) | Maskeler | Yerel ve seçici işlemler için koruma/seçim mekanizması kurar. | Seçici işleme altyapısı | Hayır; URL korunuyor | Hayır | Hayır |
| Luminance Mask | `11-maskeler/luminance-mask.md` (11-maskeler) | Maskeler | Yerel ve seçici işlemler için koruma/seçim mekanizması kurar. | Seçici işleme altyapısı | Hayır; URL korunuyor | Hayır | Hayır |
| Maske Mantığı | `11-maskeler/maske-mantigi.md` (11-maskeler) | Maskeler | Yerel ve seçici işlemler için koruma/seçim mekanizması kurar. | Seçici işleme altyapısı | Hayır; URL korunuyor | Hayır | Hayır |
| RangeSelection (RangeMask) | `11-maskeler/range-mask.md` (11-maskeler) | Maskeler | Yerel ve seçici işlemler için koruma/seçim mekanizması kurar. | Seçici işleme altyapısı | Hayır; URL korunuyor | Hayır | Hayır |
| StarMask | `11-maskeler/star-mask.md` (11-maskeler) | Maskeler | Yerel ve seçici işlemler için koruma/seçim mekanizması kurar. | Seçici işleme altyapısı | Hayır; URL korunuyor | Hayır | Hayır |
| DarkStructureEnhance | `12-detay-ve-kontrast/dark-structure-enhance.md` (12-detay-ve-kontrast) | Gürültü ve Detay / Çok Ölçekli İşleme | Detay, yerel kontrast ve ölçek tabanlı işlemleri bir araya getirir. | Nonlineer detay yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| HDRMultiscaleTransform | `12-detay-ve-kontrast/hdr-multiscale-transform.md` (12-detay-ve-kontrast) | Gürültü ve Detay / Çok Ölçekli İşleme | Detay, yerel kontrast ve ölçek tabanlı işlemleri bir araya getirir. | Nonlineer detay yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| Detay ve Kontrast | `12-detay-ve-kontrast/index.md` (12-detay-ve-kontrast) | Gürültü ve Detay / Çok Ölçekli İşleme | Detay, yerel kontrast ve ölçek tabanlı işlemleri bir araya getirir. | Nonlineer detay yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| LocalHistogramEqualization | `12-detay-ve-kontrast/local-histogram-equalization.md` (12-detay-ve-kontrast) | Gürültü ve Detay / Çok Ölçekli İşleme | Detay, yerel kontrast ve ölçek tabanlı işlemleri bir araya getirir. | Nonlineer detay yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| MultiscaleMedianTransform | `12-detay-ve-kontrast/multiscale-median-transform.md` (12-detay-ve-kontrast) | Gürültü ve Detay / Çok Ölçekli İşleme | Detay, yerel kontrast ve ölçek tabanlı işlemleri bir araya getirir. | Nonlineer detay yönetimi | Hayır; URL korunuyor | Hayır | Hayır |
| CurvesTransformation | `13-final/curves-transformation.md` (13-final) | Son İşlemler | Renk, doygunluk ve dışa aktarım dahil son rötuşları toplar. | Nonlineer sonlandırma | Hayır; URL korunuyor | Hayır | Hayır |
| Dışa Aktarım | `13-final/export.md` (13-final) | Son İşlemler | Renk, doygunluk ve dışa aktarım dahil son rötuşları toplar. | Nonlineer sonlandırma | Hayır; URL korunuyor | Hayır | Hayır |
| Son İşlemler | `13-final/index.md` (13-final) | Son İşlemler | Renk, doygunluk ve dışa aktarım dahil son rötuşları toplar. | Nonlineer sonlandırma | Hayır; URL korunuyor | Hayır | Hayır |
| Doygunluk | `13-final/saturation.md` (13-final) | Son İşlemler | Renk, doygunluk ve dışa aktarım dahil son rötuşları toplar. | Nonlineer sonlandırma | Hayır; URL korunuyor | Hayır | Hayır |
| SCNR | `13-final/scnr.md` (13-final) | Son İşlemler | Renk, doygunluk ve dışa aktarım dahil son rötuşları toplar. | Nonlineer sonlandırma | Hayır; URL korunuyor | Hayır | Hayır |
| ChannelCombination RGB Hatası | `14-hata-kutuphanesi/channel-combination-rgb-error.md` (14-hata-kutuphanesi) | Sorun Giderme | Belirti odaklı hata tanısı ve kurtarma yolu sunar. | Tanı ve düzeltme | Hayır; URL korunuyor | Hayır | Hayır |
| DBE: Less Than Three Samples | `14-hata-kutuphanesi/dbe-less-than-three-samples.md` (14-hata-kutuphanesi) | Sorun Giderme | Belirti odaklı hata tanısı ve kurtarma yolu sunar. | Tanı ve düzeltme | Hayır; URL korunuyor | Hayır | Hayır |
| Hata Kütüphanesi | `14-hata-kutuphanesi/index.md` (14-hata-kutuphanesi) | Sorun Giderme | Belirti odaklı hata tanısı ve kurtarma yolu sunar. | Tanı ve düzeltme | Hayır; URL korunuyor | Hayır | Hayır |
| LRGB Source Image Not Found | `14-hata-kutuphanesi/lrgb-source-image-not-found.md` (14-hata-kutuphanesi) | Sorun Giderme | Belirti odaklı hata tanısı ve kurtarma yolu sunar. | Tanı ve düzeltme | Hayır; URL korunuyor | Hayır | Hayır |
| Maske Tüm Görüntüyü Kaplıyor | `14-hata-kutuphanesi/maske-tum-goruntuyu-kapliyor.md` (14-hata-kutuphanesi) | Sorun Giderme | Belirti odaklı hata tanısı ve kurtarma yolu sunar. | Tanı ve düzeltme | Hayır; URL korunuyor | Hayır | Hayır |
| OIII Kaybolması | `14-hata-kutuphanesi/oiii-kaybolmasi.md` (14-hata-kutuphanesi) | Sorun Giderme | Belirti odaklı hata tanısı ve kurtarma yolu sunar. | Tanı ve düzeltme | Hayır; URL korunuyor | Hayır | Hayır |
| Broadband Yansıma ve Karanlık Nebula İş Akışı | `15-workflows/broadband-nebula.md` (15-workflows) | İş Akışları / Rehberler | Kamera, veri veya hedef türüne göre kararların sırasını gösterir. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| Veri Kalitesi ve Entegrasyon Stratejileri | `15-workflows/data-quality-strategies.md` (15-workflows) | İş Akışları / Rehberler | Kamera, veri veya hedef türüne göre kararların sırasını gösterir. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| Emisyon Nebulası İş Akışı | `15-workflows/emission-nebula.md` (15-workflows) | İş Akışları / Rehberler | Kamera, veri veya hedef türüne göre kararların sırasını gösterir. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| Uygulamalı İş Akışları | `15-workflows/index.md` (15-workflows) | İş Akışları / Rehberler | Kamera, veri veya hedef türüne göre kararların sırasını gösterir. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| LRGB Galaksi İş Akışı | `15-workflows/lrgb-galaxy.md` (15-workflows) | İş Akışları / Rehberler | Kamera, veri veya hedef türüne göre kararların sırasını gösterir. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| LRGB + Ha Galaksi İş Akışı | `15-workflows/lrgb-ha-galaxy.md` (15-workflows) | İş Akışları / Rehberler | Kamera, veri veya hedef türüne göre kararların sırasını gösterir. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| Mono İş Akışı | `15-workflows/mono-workflow.md` (15-workflows) | İş Akışları / Rehberler | Kamera, veri veya hedef türüne göre kararların sırasını gösterir. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| OSC İş Akışı | `15-workflows/osc-workflow.md` (15-workflows) | İş Akışları / Rehberler | Kamera, veri veya hedef türüne göre kararların sırasını gösterir. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| Gezegenimsi Nebula İş Akışı | `15-workflows/planetary-nebula.md` (15-workflows) | İş Akışları / Rehberler | Kamera, veri veya hedef türüne göre kararların sırasını gösterir. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| SHO ve HOO Narrowband İş Akışı | `15-workflows/sho-hoo.md` (15-workflows) | İş Akışları / Rehberler | Kamera, veri veya hedef türüne göre kararların sırasını gösterir. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| Uygulamalar | `20-uygulamalar/index.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| Veri ve Hedef | `20-uygulamalar/m31-lrgb-ha/01-veri-ve-hedef.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| WBPP | `20-uygulamalar/m31-lrgb-ha/02-wbpp.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| DBE ve SPCC | `20-uygulamalar/m31-lrgb-ha/03-dbe-spcc.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| BlurX ve NoiseX | `20-uygulamalar/m31-lrgb-ha/04-blurx-noisex.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| Stretch | `20-uygulamalar/m31-lrgb-ha/05-stretch.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| LRGB | `20-uygulamalar/m31-lrgb-ha/06-lrgb.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| Ha Entegrasyonu | `20-uygulamalar/m31-lrgb-ha/07-ha-entegrasyonu.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| son işlemler | `20-uygulamalar/m31-lrgb-ha/08-final.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| M31 LRGB + Ha | `20-uygulamalar/m31-lrgb-ha/index.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| Veri ve Hedef | `20-uygulamalar/ngc6888-sho/01-veri-ve-hedef.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| Kanal Hazırlama | `20-uygulamalar/ngc6888-sho/02-kanal-hazirlama.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| SHO Kombinasyonu | `20-uygulamalar/ngc6888-sho/03-sho-kombinasyonu.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| Maskeler | `20-uygulamalar/ngc6888-sho/04-maskeler.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| OIII Koruma | `20-uygulamalar/ngc6888-sho/05-oiii-koruma.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| son işlemler | `20-uygulamalar/ngc6888-sho/06-final.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| NGC 6888 SHO | `20-uygulamalar/ngc6888-sho/index.md` (20-uygulamalar) | İş Akışları / Uygulamalı Projeler | Gerçek hedef üzerinde aşamalı ve doğrulanabilir uygulama akışı sunar. | Uçtan uca uygulama | Hayır; URL korunuyor | Hayır | Hayır |
| Terimler Sözlüğü | `glossary.md` (docs kökü) | Referans | Süreç akışından bağımsız, gerektiğinde danışılan bilgi sunar. | Başvuru | Hayır; URL korunuyor | Hayır | Hayır |
| Başlangıç | `index.md` (docs kökü) | Başlangıç | Başlangıç noktası ve görev odaklı rota seçimi sağlar. | Giriş ve yönlendirme | Hayır; URL korunuyor | Hayır | Hayır |
| Çerez ve Analitik Bilgilendirmesi | `privacy-and-analytics.md` (docs kökü) | Referans | Süreç akışından bağımsız, gerektiğinde danışılan bilgi sunar. | Başvuru | Hayır; URL korunuyor | Hayır | Hayır |
| Hızlı Referans | `quick-reference.md` (docs kökü) | Referans | Süreç akışından bağımsız, gerektiğinde danışılan bilgi sunar. | Başvuru | Hayır; URL korunuyor | Hayır | Hayır |


## Repository değişikliği gereksinimi

Dosya taşıma, yeniden adlandırma, redirect ekleme veya teknik içerik değişikliği gerekmez. Dört `docs/05-renk-kalibrasyonu/` sayfası geçmiş bağlantıları koruyan yönlendirmelerdir; aktif ikinci bir ağaç oluşturmamaları için navigasyon dışında kalır.

## Doğrulama sonuçları

| Kontrol | Sonuç |
|---|---|
| `mkdocs build --strict` | Başarılı |
| `git diff --check` | Başarılı |
| Aktif nav hedefleri | 126 / 126 mevcut ve benzersiz |
| Önceki/sonraki sıra | Görünür footer ile doğrulandı |
| Bölüm geçişi | `StarAlignment → ImageIntegration → Arka Plan ve Gradient` doğrulandı |
| Yerel HTML bağlantıları | 19.829 kontrol, 0 kırık |
| Canonical kayıtları | 130, duplicate 0 |
| Arama indeksi | Üretildi; 10 sık aranan kavramın tamamı bulundu |
| Masaüstü navigasyon | 13 üst öğe, aktif bölüm ve yatay taşma kontrolü başarılı |
| Tablet navigasyon | Drawer erişimi ve yatay taşma kontrolü başarılı |
| Mobil navigasyon | Üç seviyeli iç içe gruplar ve yatay taşma kontrolü başarılı |

Strict build çıktısında yalnızca bilinen dört eski Color Calibration yönlendirmesinin nav dışında olduğu bildirildi. Bunlar kasıtlı uyumluluk sayfalarıdır. Material for MkDocs’un MkDocs 2.0 hakkındaki gelecek sürüm bildirimi proje içeriğinden kaynaklanan bir build uyarısı değildir.

## Kalan öneriler

- İş Akışları 27 sayfayla en büyük gruptur; yeni proje sayısı arttığında ayrı bir “Uygulamalı Projeler” üst grubu ancak en az üç bağımsız proje oluştuğunda değerlendirilmelidir.
- Scripts ve Utilities için yeterli canonical içerik yoktur; boş veya iki sayfadan küçük grup oluşturulmamalıdır.
- Arama eş anlamlıları ve süreç alias’ları Phase 7.2’de kullanıcı sorguları üzerinden ölçülmelidir.
- Eski yönlendirme sayfalarının trafik gereksinimi analitik verilerle izlenmeli, yalnız kullanım kalmadığı kanıtlanırsa kaldırılmalıdır.

## Phase 7.2 için önerilen kapsam

Phase 7.2; görev odaklı giriş rotaları, arama eş anlamlıları, “hangi süreç?” karar sayfaları ve gerçek kullanıcı sorgularıyla findability testi üzerinde çalışmalıdır. Teknik süreç sayfalarını yeniden yazmadan, navigasyon ile arama arasındaki boşlukları ölçülebilir senaryolarla doğrulamalıdır.
