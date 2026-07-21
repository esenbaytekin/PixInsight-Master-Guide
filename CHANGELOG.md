# Değişiklik Günlüğü

Bu proje [Keep a Changelog](https://keepachangelog.com/tr/1.1.0/) yaklaşımını izler.

## [Unreleased]

### Eklendi

- PixInsight 1.9.3 UI validation dalgası: ArcsinhStretch, ChannelCombination, ColorMask, CosmeticCorrection, DarkStructureEnhance, GeneralizedHyperbolicStretch, GraXpert, HDRMultiscaleTransform, ImageCalibration, LRGBCombination, MaskedStretch, MultiscaleMedianTransform, PixelMath, StarMask ve WBPP için evidence matrix, UI notes ve validation checklist
- Bu 15 canonical process/script sayfasında kanıta bağlı UI doğrulama sınırı; görünen değer/default ayrımı ile DATA-REQUIRED ve DOC-REQUIRED kayıtları
- Sprint 4.0.2: process registry zorunlu single source of truth; exact case-sensitive slug preflight
- Sprint 4.0.2: unknown slug, invalid registry/canonical path ve screenshot path mismatch için file-change öncesi durdurma
- Sprint 4.0.2: display name/alias slug desteği ve automatic canonical execution fallback kaldırıldı; LinearFit orphan output korundu
- Sprint 4.0.1: 119 Markdown ve 115 MkDocs navigation hedefinden türetilen 32 kayıtlı process/script/plugin registry
- Sprint 4.0.1: process inventory, 16 validation slug denetimi ve registry-authoritative UI validation guard
- Sprint 4.0.1: LinearFit için eksik canonical dokümantasyon tespiti; yeni sayfa oluşturulmadı
- LinearFit UI validation yeniden keşfi: registry `null`, `linearfit` normalization, alias ve candidate-score raporu
- Sprint 4.0.0 discovery revizyonu: process registry, normalized identifier/alias karşılaştırması ve scored canonical candidates
- Sprint 4.0.0 discovery revizyonu: LinearFit canonical eksikliği için registry `null` kaydı, DOC-REQUIRED ve ambiguity karar akışı
- LinearFit UI validation: 15 kanıt kaydı, process/menu/control doğrulaması ve eksik canonical sayfa için DOC-REQUIRED kaydı
- GradientCorrection UI validation: automatic canonical discovery, 41 kanıt kaydı ve process/menu/section/control doğrulaması
- GradientCorrection UI validation: görünen değer/default ayrımı ve model/protection/output doğrulama sınırları
- DBE UI validation: automatic canonical discovery ile `docs/04-gradient/dbe.md` eşlemesi, 109 kanıt kaydı ve menu/section/control doğrulaması
- DBE UI validation: açık `Correction` ve `Sample format` seçeneklerinin kaydı; mevcut değer/default ayrımı
- Sprint 4.0.0 revizyonu: `PROCESS_SLUG` merkezli minimal UI validation çağrısı ve otomatik validation output yolları
- Sprint 4.0.0 revizyonu: canonical-document discovery preflight, belirsiz/eksik hedef güvenlik kuralları ve SPCC/PCC/BackgroundNeutralization/DBE/ABE örnekleri
- Sprint 4.0.0: UI, gerçek veri ve birincil kaynak doğrulaması için yeniden kullanılabilir prompt şablonları
- Sprint 4.0.0: sprint review ve release Go/No-Go kontrol altyapısı
- Faz 4.1A: SPCC görsel kanıt matrisi, UI notları ve doğrulama checklist'i
- Faz 4.1A: process adı, menü yolu, beş section ve 34 UI etiketi için kanıt eşlemesi
- Faz 4.1A: görünen mevcut değerlerin default değerlerden ayrılması ve SPCC UI kayıtlarının kısmi kapatılması
- Sprint 3.3: PCC ve BackgroundNeutralization canonical rehberleri, legacy içerik migrasyonu ve yönlendirmeleri
- Sprint 3.3: tarafsız PCC/SPCC karşılaştırması, PCC ve BackgroundNeutralization için 20'şer troubleshooting kartı
- Sprint 3.3: background reference seçim rehberi, 20 gerçek veri testi ve UI/görsel doğrulama envanteri
- Sprint 3.3: Color Calibration navigation ve canonical bağlantı güncellemesi
- Sprint 3.2 Revizyon 1: canonical Color Calibration dizin kararı, eski dizin envanteri ve legacy URL yönlendirmeleri
- Sprint 3.2 Revizyon 1: eski SPCC/index bağlantılarının canonical hedeflere taşınması ve PCC/BackgroundNeutralization taslaklarının korunması
- Sprint 3.2 Revizyon 1: SPCC dosya görevleri, tekrar, broadband/narrowband, Luminance ve background neutrality kapsam denetimleri
- Sprint 3.2 Revizyon 1: troubleshooting/test matrisi denetimi ve 12 konulu UI doğrulama konsolidasyonu
- Sprint 3.2: SPCC ana referansı, prerequisite rehberi, broadband workflow, narrowband scope ve 30 kartlık sorun giderme rehberi
- Sprint 3.2: 16 gerçek veri testi, UI/görsel doğrulama envanteri ve Color Calibration navigation güncellemesi
- Sprint 3.1 Revizyon 1: linear-image workflow önerileri ile process gereksinimlerinin ayrıştırılması ve process-bazlı doğrulama kayıtları
- Sprint 3.1 Revizyon 1: photometric teori sınırları, işlevsel metadata sınıflandırması, background neutrality/process ayrımı ve doğru renk terminolojisi
- Sprint 3.1 Revizyon 1: broadband/narrowband kapsamı, diagnostics kök nedenleri, tekrar azaltma ve ileri bağlantı iyileştirmeleri
- Sprint 3.1: Color Calibration giriş, astronomik renk teorisi, White Balance, photometric calibration teorisi, Background Neutrality ve Color Calibration Diagnostics temelleri
- Sprint 3.1: UI-5/DOC-5/DATA-5/IMG-5 doğrulama matrisi, 13 açıklamalı görsel planı ve Renk Kalibrasyonu navigation entegrasyonu
- Faz 2 kapanış incelemesi: Gradient bölümünün bütünsel yapısal ve terminolojik denetimi, sprintler arası çelişki kontrolü ve konsolide doğrulama kayıtları
- Faz 2 kapanış incelemesi: hata kartları ve Quick Reference denetimi, yayın engeli sınıflandırması, konsolide gerçek veri/görsel envanteri ve Faz 2 yayın kararı
- Sprint 2.4: gerçek gradient iş akışı altyapısı ile M31 LRGB ve NGC 6888 Ha/OIII doğrulanabilir iş akışı taslakları
- Sprint 2.4: 30 Gradient hata kartı ve yazdırılabilir Gradient Quick Reference
- Sprint 2.4: 16 gerçek veri testi, görsel envanteri ve genişletilmiş Gradient navigasyonu
- Sprint 2.3: GradientCorrection, GraXpert entegrasyonu, Ay ışığı ve ışık kirliliği gradientleri ile flat-field/gradient ayrımı referansları
- Sprint 2.3: UI-3/DOC-3/DATA-3/IMG-3 doğrulama matrisi, görsel kanıt planı ve genişletilmiş Gradient navigasyonu
- Sprint 2.2: DBE Sample Yerleşimi, Subtraction ve Division, Gradient Diagnostics ana referansları
- Sprint 2.2: Gradient navigasyonu, teknik doğrulama matrisi ve yayın hazırlık kayıtları
- Sprint 2.1 Revizyon 1: Gradient Theory navigation entegrasyonu ve UI-1/DOC-1/DATA-1/IMG-1 doğrulama matrisi
- Faz 1B Revizyon 1: A–D teknik doğrulama sınıflandırması ve görünür doğrulama durumu kutuları
- Faz 1B: Image Calibration Pipeline ve profesyonel WBPP, ImageCalibration, CosmeticCorrection, StarAlignment ve ImageIntegration bölümleri
- Proje geneli STYLE_GUIDE ve TECHNICAL_REVIEW_CHECKLIST
- Faz 1A kapsamında PixInsight 1.9.3 arayüz temelleri: Workspace, ScreenTransferFunction, HistogramTransformation, Preview, Clone, History Explorer, Process Icons ve ProcessContainer
- Her Faz 1A bölümüne Quick Reference kutusu, karar ağacı, Mermaid diyagramı, en az beş sık hata ve en az beş SSS
- MkDocs Material tabanlı Türkçe dokümantasyon altyapısı
- Tüm planlanan bölüm ve uygulama taslakları
- Göreli bağlantılar, ortak sayfa şablonu ve gezinme yapısı
- Katkı, lisans, yol haritası ve veri saklama kuralları

### Düzeltildi

- Sprint 2.1 Revizyon 1: içerik tekrarları azaltıldı; Mermaid ve Quick Reference kararları kesin reçete yerine kanıt incelemesine yönlendirildi
- Sprint 2.1 Revizyon 1: REVIEW_REPORT yayın hazırlık durumu ve teknik risk kayıtlarıyla güncellendi
- FAZ 1B teori tablolarındaki literal satır sonu kaçışları gerçek Markdown satırlarına dönüştürüldü
- Tüm FAZ 1B Decision Tree blokları tırnaklı etiketler ve benzersiz ASCII node kimlikleriyle yeniden yazıldı
- Tekrarlanan dekoratif pipeline diyagramları ilgili process akışlarını gösterecek biçimde özelleştirildi
### ScreenTransferFunction UI doğrulaması

- Registry tabanlı preflight ile `screen-transfer-function` canonical hedefi doğrulandı.
- İki ekran görüntüsünden process adı, `R/G/B/L` kanal etiketleri ve `Process > IntensityTransformations > ScreenTransferFunction` menü yolu kaydedildi.
- Default, tooltip, console ve davranış iddiaları doğrulanmış UI kapsamından ayrıldı.

### HistogramTransformation UI doğrulaması

- Registry tabanlı preflight ile `histogram-transformation` canonical hedefi doğrulandı.
- Dört ekran görüntüsünden process/menu, kanal ve parametre etiketleri ile açık graph-style ve plot-resolution seçenekleri kaydedildi.
- Görünen sayılar default sayılmadı; algoritmik anlam ve output davranışı DOC/DATA gereksinimi olarak ayrıldı.

### CurvesTransformation UI doğrulaması

- Registry tabanlı preflight ile `curves-transformation` canonical hedefi doğrulandı.
- İki ekran görüntüsünden process/menu yolu, on bir kanal etiketi ve `Input`/`Output` alanları kaydedildi.
- Görünen değer ve eğri default sayılmadı; kanal anlamları ile curve/output davranışı DOC/DATA gereksinimi olarak ayrıldı.

### SCNR UI doğrulaması

- Registry tabanlı preflight ile `scnr` canonical hedefi doğrulandı.
- Dört ekran görüntüsünden process/menu yolu, dört ana kontrol ve sekiz açık liste seçeneği kaydedildi.
- Seçili değerler default sayılmadı; protection algoritması ve output davranışı DOC/DATA gereksinimi olarak ayrıldı.

### LocalHistogramEqualization UI doğrulaması

- Registry tabanlı preflight ile `local-histogram-equalization` canonical hedefi doğrulandı.
- Üç ekran görüntüsünden process/menu yolu, beş ana kontrol ve üç açık histogram-resolution seçeneği kaydedildi.
- Görünen sayılar default sayılmadı; parametre anlamları ve local-contrast output davranışı DOC/DATA gereksinimi olarak ayrıldı.

### NoiseXTerminator UI doğrulaması

- Registry tabanlı preflight ile `noisexterminator` canonical hedefi doğrulandı.
- İki ekran görüntüsünden plugin 2.3.3, AI 3, process/menu yolu ve dokuz kontrol etiketi kaydedildi.
- Host PixInsight sürümü plugin sürümünden ayrıldı; görünen değerler default sayılmadı ve algoritma/output davranışı DOC/DATA gereksinimi olarak bırakıldı.

### BlurXTerminator UI doğrulaması

- Registry tabanlı preflight ile `blurxterminator` canonical hedefi doğrulandı.
- İki ekran görüntüsünden plugin 2.1.4, AI 4, process/menu yolu, üç section ve on kontrol etiketi kaydedildi.
- Host PixInsight sürümü plugin sürümünden ayrıldı; değer ve checkbox durumları default sayılmadı, algoritma/output davranışı DOC/DATA gereksinimi olarak bırakıldı.

### StarXTerminator UI doğrulaması

- Registry tabanlı preflight ile `starxterminator` canonical hedefi doğrulandı.
- Üç ekran görüntüsünden plugin 2.4.11, AI 11, process/menu yolu, ana ve Batch Processing kontrolleri kaydedildi.
- Host PixInsight sürümü plugin sürümünden ayrıldı; checkbox durumları default sayılmadı ve star-removal/batch davranışı DOC/DATA gereksinimi olarak bırakıldı.

### StarAlignment UI doğrulaması

- Registry tabanlı preflight ile `star-alignment` canonical hedefi doğrulandı.
- Dokuz ekran görüntüsünden menu path, altı section, ana controls ve yedi açık dropdown listesi kaydedildi.
- Mevcut seçimler default sayılmadı; registration, distortion, drizzle ve interpolation davranışı DOC/DATA gereksinimi olarak bırakıldı.

### ImageIntegration UI doğrulaması

- Registry tabanlı preflight ile `image-integration` canonical hedefi doğrulandı.
- Sekiz ekran görüntüsünden menu path, sekiz section, temel selectors ve altı açık dropdown listesindeki 40 seçenek kaydedildi.
- Mevcut seçimler default sayılmadı; integration, normalization, weighting ve rejection davranışı DOC/DATA gereksinimi olarak bırakıldı.

### Sprint 4.1 — Interim Review

- İlk UI validation dalgasındaki 15 registry kaydı, canonical belge, artifact seti, evidence matrix ve screenshot klasörü review-only olarak denetlendi.
- Registry/canonical bütünlüğü ve strict MkDocs build başarılı; duplicate canonical, orphan registry reference, invalid process type veya duplicate evidence ID bulunmadı.
- ABE artifact eksikliği, ImageIntegration içinde altı kırık screenshot reference, SPCC legacy evidence schema ve boş `process/screenshots/` orphan klasörü kaydedildi.
- İki malformed admonition, yedi generic draft/Quick Reference tutarsızlığı ve bir exact-byte cross-process screenshot duplicate riski raporlandı.
- Sprint kararı **REVIEW REQUIRED** olarak kaydedildi; commit veya push yapılmadı.
