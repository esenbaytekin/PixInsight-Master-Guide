# Process Documentation Inventory — Sprint 4.0.1

## Kapsam ve yöntem

- İncelenen Markdown dosyası: **119**
- İncelenen benzersiz MkDocs navigation hedefi: **115**
- Hariç tutulan kaynaklar: `validation/`, `prompts/`, `site/`, `build/`, `archive/`, generated output ve geçici dosyalar
- Kayıt ölçütü: H1/process kimliği, process arayüz-parametre amacı, MkDocs process guide navigasyonu veya açık canonical process beyanı

Bir sayfada process adının yalnız anılması kayıt için yeterli sayılmadı. Workflow, teori, troubleshooting, decision tree, quick-reference ve overview sayfaları ayrı tutuldu.

## Sonuç özeti

| Ölçüt | Sayı |
|---|---:|
| Process sayfası | 32 |
| Core process | 24 |
| Script | 4 |
| Plugin/integration | 4 |
| Registry dışında kalan Markdown | 87 |
| Ambiguous candidate | 0 |
| Eksik canonical process adayı | 1 |

## Slug-to-canonical-file

| Slug | Display name | Tür | Canonical file | Confidence |
|---|---|---|---|---|
| abe | AutomaticBackgroundExtractor | core-process | `docs/04-gradient/abe.md` | high |
| arcsinh-stretch | ArcsinhStretch | core-process | `docs/07-stretch/arcsinh-stretch.md` | medium |
| background-neutralization | BackgroundNeutralization | core-process | `docs/05-color-calibration/background-neutralization-process.md` | high |
| blurxterminator | BlurXTerminator | plugin | `docs/06-ai-eklentileri/blurxterminator.md` | medium |
| channel-combination | ChannelCombination | core-process | `docs/08-lrgb/channel-combination.md` | medium |
| color-mask | ColorMask | script | `docs/11-maskeler/color-mask.md` | medium |
| cosmetic-correction | CosmeticCorrection | core-process | `docs/03-kalibrasyon/cosmetic-correction.md` | high |
| curves-transformation | CurvesTransformation | core-process | `docs/13-final/curves-transformation.md` | medium |
| dark-structure-enhance | DarkStructureEnhance | script | `docs/12-detay-ve-kontrast/dark-structure-enhance.md` | medium |
| dbe | DynamicBackgroundExtraction | core-process | `docs/04-gradient/dbe.md` | high |
| generalized-hyperbolic-stretch | Generalized Hyperbolic Stretch | script | `docs/07-stretch/generalized-hyperbolic-stretch.md` | medium |
| gradient-correction | GradientCorrection | core-process | `docs/04-gradient/gradient-correction.md` | high |
| graxpert | GraXpert | plugin | `docs/04-gradient/graxpert.md` | medium |
| hdr-multiscale-transform | HDRMultiscaleTransform | core-process | `docs/12-detay-ve-kontrast/hdr-multiscale-transform.md` | medium |
| histogram-transformation | HistogramTransformation | core-process | `docs/07-stretch/histogram-transformation.md` | high |
| image-calibration | ImageCalibration | core-process | `docs/03-kalibrasyon/image-calibration.md` | high |
| image-integration | ImageIntegration | core-process | `docs/03-kalibrasyon/image-integration.md` | high |
| local-histogram-equalization | LocalHistogramEqualization | core-process | `docs/12-detay-ve-kontrast/local-histogram-equalization.md` | medium |
| lrgb-combination | LRGBCombination | core-process | `docs/08-lrgb/lrgb-combination.md` | medium |
| masked-stretch | MaskedStretch | core-process | `docs/07-stretch/masked-stretch.md` | medium |
| multiscale-median-transform | MultiscaleMedianTransform | core-process | `docs/12-detay-ve-kontrast/multiscale-median-transform.md` | medium |
| noisexterminator | NoiseXTerminator | plugin | `docs/06-ai-eklentileri/noisexterminator.md` | medium |
| pcc | PhotometricColorCalibration | core-process | `docs/05-color-calibration/pcc.md` | high |
| pixelmath | PixelMath | core-process | `docs/10-pixelmath/index.md` | high |
| range-mask | RangeMask | core-process | `docs/11-maskeler/range-mask.md` | medium |
| scnr | SCNR | core-process | `docs/13-final/scnr.md` | medium |
| screen-transfer-function | ScreenTransferFunction | core-process | `docs/02-pixinsight-temelleri/stf.md` | high |
| spcc | SpectrophotometricColorCalibration | core-process | `docs/05-color-calibration/spcc.md` | high |
| star-alignment | StarAlignment | core-process | `docs/03-kalibrasyon/star-alignment.md` | high |
| star-mask | StarMask | core-process | `docs/11-maskeler/star-mask.md` | medium |
| starxterminator | StarXTerminator | plugin | `docs/06-ai-eklentileri/starxterminator.md` | medium |
| wbpp | WeightedBatchPreprocessing | script | `docs/03-kalibrasyon/wbpp.md` | high |

## Registry dışında bırakılan sayfalar

| Sayfa sınıfı | Karar | Temsilî örnekler |
|---|---|---|
| Workflow | Process registry'ye alınmadı | `calibration-pipeline.md`, `real-workflows.md`, uygulama sayfaları |
| Concept/reference | Alınmadı | `gradient-theory.md`, `background-neutrality.md`, `white-balance.md` |
| Troubleshooting | Alınmadı | `spcc-troubleshooting.md`, `error-cards.md`, hata kütüphanesi |
| Decision tree | Ayrı canonical process sayfası değil | Process sayfalarındaki gömülü decision tree bölümleri |
| Quick reference | Alınmadı | `gradient-quick-reference.md`, root `quick-reference.md` |
| Index/overview | Processin canonical rehberi değilse alınmadı | Gradient, Calibration, Maskeler ve Final index sayfaları |
| Legacy redirect | Alınmadı | `docs/05-renk-kalibrasyonu/` yönlendirmeleri |
| Process alt konusu | Ayrı process kaydı yapılmadı | SPCC prerequisites/broadband/narrowband, PixelMath alt konu sayfaları |

`docs/10-pixelmath/index.md`, H1 ve navigation açısından doğrudan PixelMath processinin canonical girişidir; bu nedenle genel index dışlama kuralının bilinçli istisnasıdır.

## Ambiguous candidates

Yok. Birden fazla sayfanın aynı process için yakın canonical aday oluşturduğu bir durum saptanmadı.

## Eksik dokümantasyon adayları

| Process | Kanıt | Sonuç |
|---|---|---|
| LinearFit | Validation slug ve UI kanıtı mevcut; repository'de yalnız `Linear Fit Clipping` mention'ı var | Canonical process page yok; registry'ye eklenmedi |

Eksik sayfa oluşturulmadı ve tamamlanmış olarak işaretlenmedi.

## Önceden kullanılan validation slug denetimi

| Slug | Sonuç | Canonical veya açıklama |
|---|---|---|
| spcc | registered | `docs/05-color-calibration/spcc.md` |
| pcc | registered | `docs/05-color-calibration/pcc.md` |
| background-neutralization | registered | `docs/05-color-calibration/background-neutralization-process.md` |
| dbe | registered | `docs/04-gradient/dbe.md` |
| abe | registered | `docs/04-gradient/abe.md` |
| gradient-correction | registered | `docs/04-gradient/gradient-correction.md` |
| linear-fit | documentation not present | No canonical process page; ImageIntegration mention is not a process guide |
| histogram-transformation | registered | `docs/07-stretch/histogram-transformation.md` |
| curves-transformation | registered | `docs/13-final/curves-transformation.md` |
| scnr | registered | `docs/13-final/scnr.md` |
| local-histogram-equalization | registered | `docs/12-detay-ve-kontrast/local-histogram-equalization.md` |
| noisexterminator | registered | `docs/06-ai-eklentileri/noisexterminator.md` |
| blurxterminator | registered | `docs/06-ai-eklentileri/blurxterminator.md` |
| starxterminator | registered | `docs/06-ai-eklentileri/starxterminator.md` |
| star-alignment | registered | `docs/03-kalibrasyon/star-alignment.md` |
| image-integration | registered | `docs/03-kalibrasyon/image-integration.md` |

## Duplicate mapping denetimi

Registry içinde iki slug'ın aynı `canonical_doc` yolunu paylaştığı kayıt yoktur.

