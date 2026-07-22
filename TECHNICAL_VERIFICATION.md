# Teknik Doğrulama Kaydı — Phase 6.4

## Kapsam

Bu kayıt 129 Markdown dokümanının yapısal taramasını, 125 canonical sayfanın teknik iddia denetimini ve `prompts/process-registry.yml` içindeki 32 major process/script/plugin sayfasının ayrıntılı statik incelemesini özetler. Dört legacy yönlendirme sayfası yalnız bağlantı ve authority sınırı açısından kontrol edilmiştir; canonical teknik içerik sayılmamıştır.

Hedeflenen PixInsight sürümü **1.9.3**'tür. Bu sprint sırasında PixInsight çalıştırılmamış, yeni ekran görüntüsü incelenmemiş ve gerçek veri üzerinde process execution yapılmamıştır. “Verified” ifadesi bu kayıtta yalnız kaynağı veya statik olarak savunulabilir iş akışını belirtir; canlı uygulama testini ima etmez.

## Kaynak Hiyerarşisi

1. Kurulu PixInsight process documentation ve resmi PixInsight reference/tutorial içeriği
2. PixInsight geliştirici veya staff açıklamaları ve resmi release notes
3. Plugin geliştiricisinin teknik kılavuzu ve sürüm notları
4. Repository içindeki PixInsight 1.9.3 UI evidence matrix kayıtları
5. Açıkça sınıflandırılmış `Verified Workflow`, `Community Consensus` veya `Practical Recommendation`

Başlıca birincil kaynaklar:

- [PixInsight — Master Calibration Frames](https://www.pixinsight.com/tutorials/master-frames/index.html)
- [PixInsight — StarAlignment Distortion Correction](https://www.pixinsight.com/tutorials/sa-distortion/index.html)
- [PixInsight Reference Documentation](https://pixinsight.com/doc/)
- [RC Astro — BlurXTerminator Technical Manual](https://www.rc-astro.com/blurxterminator-technical-manual/)
- [RC Astro — NoiseXTerminator 2/AI3 User Manual](https://www.rc-astro.com/noisexterminator-2-ai3-user-manual-pixinsight/)
- [RC Astro — StarXTerminator Usage Notes](https://www.rc-astro.com/starxterminator-usage-notes/)

## Doğrulama Yöntemi

- Process adları registry, canonical H1, MkDocs navigation, metadata ve inline kullanımlar arasında karşılaştırıldı.
- Parametre/UI adları yalnız mevcut screenshot evidence matrix kayıtlarının açıkça gösterdiği alanlarda UI kanıtı sayıldı.
- Menü yolları sürüm hassasiyeti açısından tarandı; kanıtsız yollar kesin doğrulanmış sayılmadı.
- Lineer/nonlinear önerileri process, workflow ve troubleshooting sayfaları arasında karşılaştırıldı.
- PixelMath tarifleri identifier, parantez, kanal eşlemesi, maske polaritesi, aralık ve clipping riski açısından statik olarak incelendi.
- Exact numerical öneriler “resmî”, “örnek” veya “veriye bağlı” bağlamı açısından tarandı.
- Evidence Level ve Recipe Validation değerleri izin verilen sınıflarla karşılaştırıldı.
- Internal link, duplicate heading, Mermaid fence, placeholder, merge marker ve strict build kontrolleri otomatik olarak çalıştırıldı.

## Düzeltilen Bulgular

| Önem | Bulgu | Çözüm |
| --- | --- | --- |
| Major | `RangeMask` canonical process adı olarak kullanılıyordu; resmi process adı `RangeSelection`'dır. | Registry, H1, navigation ve menü yolu `RangeSelection` olarak düzeltildi; “range mask” üretilen maske ve stable slug alias'ı olarak korundu. |
| Minor | `Generalized Hyperbolic Stretch` başlığı resmi process identifier'ını boşluklu gösteriyordu. | H1, registry ve navigation `GeneralizedHyperbolicStretch` olarak eşlendi. |
| Moderate | AI plugin iddialarında canlı test ile geliştirici dokümantasyonu arasındaki sınır sayfa bazında görünür değildi. | Major process sayfalarına standardized verification block eklendi; canlı test yapılmadığı açıklandı. |

Release-blocking bulgu saptanmadı. Major process-name bulgusu bu sprintte giderildi.

## PixelMath Statik İnceleme Yöntemi

Tarifler PixInsight içinde çalıştırılmadı. 16 tarif/status kaydı şu kontrollerden geçirildi:

- `R/G/B`, `SII/Ha/OIII` kanal eşlemeleri ve identifier bağımlılığı
- `M*B + (1-M)*A` türü ifadelerde maske polaritesi
- Weight/mask girdilerinde `[0,1]` varsayımı
- Toplama, division ve continuum subtraction işlemlerinde range/clipping riski
- Starless/stars katman türünün additive veya screen recombination ile uyumu

Mevcut tariflerin hiçbiri canlı test yapılmış gibi `✅ Verified` sınıfına yükseltilmedi. Conceptual ifadeler evrensel çalıştırılabilir reçete olarak sınıflandırılmadı. Geçersiz parantez veya açıkça ters kanal eşlemesi bulunmadı.

## İş Akışı Tutarlılığı

On canonical workflow ve on beş uygulama/alt-adım sayfası calibration → integration → gradient → color calibration → restoration/noise → stretch → selective processing → final/export sırası açısından karşılaştırıldı. Veri setine bağlı dallar korunmuştur. Şu ayrımlar tutarlıdır:

- BlurXTerminator AI4: lineer ve noise reduction görmemiş girdi
- NoiseXTerminator: deconvolution sonrasında; lineer veya nonlinear kullanım mümkün
- StarXTerminator: mümkün olduğunca erken ve star-profile bozucu işlemlerden önce; layer türüne uygun recombination
- SCNR: zorunlu değil; meşru OIII/cyan sinyali korunmalı
- HDRMultiscaleTransform/LHE: çoğunlukla nonlinear, maskeli ve clipping denetimli kullanım
- Color calibration: broadband ve narrowband palette mapping'den ayrı değerlendirme

## Evidence Level İncelemesi

İzin verilen sınıflar `Official Documentation`, `Verified Workflow`, `Community Consensus` ve `Practical Recommendation` olarak denetlendi. Beş resmî kaynak sınıflandırması kaynak bağlantısı ve ihtiyatlı ifade bakımından korundu. On beş workflow/error-library kanıt ifadesi statik olarak incelendi. On iki callout etiketi izin verilen İngilizce sınıf adlarına normalize edildi; semantik sınıf değişikliği gerekmedi. UI kanıtı ifadeleri Evidence Level yerine ayrı `Doğrulama Durumu` etiketi altında tutuldu.

## Recipe Validation İncelemesi

İzin verilen değerler `✅ Verified`, `🟦 Community Practice` ve `🟨 Experimental` olarak denetlendi. 16 recipe status kaydı incelendi; status değişikliği yapılmadı. Canlı PixInsight testi bulunmadığı için yeni `✅ Verified` sınıfı verilmedi.

## Yapılandırılmış Doğrulama Kaydı

| Sayfa | Konu | Durum | Kaynak Türü | Sürüm Hassasiyeti | Sınırlama | Eylem |
| --- | --- | --- | --- | --- | --- | --- |
| `04-gradient/abe.md` | AutomaticBackgroundExtractor | Partially Verified | UI evidence + static review | Orta | Default ve davranış testi yok | Live validation |
| `07-stretch/arcsinh-stretch.md` | ArcsinhStretch | Partially Verified | UI evidence + static review | Orta | Output testi yok | Live validation |
| `05-color-calibration/background-neutralization-process.md` | BackgroundNeutralization | Partially Verified | UI evidence + source review | Yüksek | Exact statistics/default yok | Live validation |
| `06-ai-eklentileri/blurxterminator.md` | BlurXTerminator | Version-Sensitive | Developer manual + UI evidence | Yüksek | Plugin/AI model sürümü ayrı kaydedilmeli | Version pinning |
| `08-lrgb/channel-combination.md` | ChannelCombination | Partially Verified | UI evidence + static review | Orta | Output testi yok | Live validation |
| `11-maskeler/color-mask.md` | ColorMask | Version-Sensitive | UI evidence + static review | Yüksek | Script dağıtımı sürüme bağlı | Live validation |
| `03-kalibrasyon/cosmetic-correction.md` | CosmeticCorrection | Partially Verified | UI evidence + static review | Orta | Defect davranışı veriyle test edilmedi | Data validation |
| `13-final/curves-transformation.md` | CurvesTransformation | Partially Verified | UI evidence + static review | Düşük | Output testi yok | Live validation |
| `12-detay-ve-kontrast/dark-structure-enhance.md` | DarkStructureEnhance | Version-Sensitive | UI evidence + static review | Yüksek | Script konumu/parametreleri build'e bağlı | Live validation |
| `04-gradient/dbe.md` | DynamicBackgroundExtraction | Partially Verified | UI evidence + static review | Orta | Model davranışı veriyle test edilmedi | Data validation |
| `07-stretch/generalized-hyperbolic-stretch.md` | GeneralizedHyperbolicStretch | Version-Sensitive | UI evidence + developer docs | Yüksek | Module/script sürümü farklı olabilir | Version pinning |
| `04-gradient/gradient-correction.md` | GradientCorrection | Partially Verified | UI evidence + official tutorial reference | Yüksek | Convergence/output veri testi yok | Data validation |
| `04-gradient/graxpert.md` | GraXpert | Version-Sensitive | Developer source + UI evidence | Yüksek | External uygulama/model sürümü | Version pinning |
| `12-detay-ve-kontrast/hdr-multiscale-transform.md` | HDRMultiscaleTransform | Partially Verified | UI evidence + official example | Orta | Exact UI/default testi yok | Live validation |
| `07-stretch/histogram-transformation.md` | HistogramTransformation | Partially Verified | UI evidence + static review | Düşük | Canlı clipping testi yok | Live validation |
| `03-kalibrasyon/image-calibration.md` | ImageCalibration | Partially Verified | UI evidence + official tutorial | Yüksek | Sensor-specific sonuç testi yok | Data validation |
| `03-kalibrasyon/image-integration.md` | ImageIntegration | Partially Verified | UI evidence + static review | Yüksek | Rejection/normalization veri testi yok | Data validation |
| `12-detay-ve-kontrast/local-histogram-equalization.md` | LocalHistogramEqualization | Partially Verified | UI evidence + official example | Orta | Exact parameter UI testi yok | Live validation |
| `08-lrgb/lrgb-combination.md` | LRGBCombination | Partially Verified | UI evidence + static review | Orta | Color-space sonucu test edilmedi | Data validation |
| `07-stretch/masked-stretch.md` | MaskedStretch | Partially Verified | UI evidence + static review | Orta | Output testi yok | Live validation |
| `12-detay-ve-kontrast/multiscale-median-transform.md` | MultiscaleMedianTransform | Partially Verified | UI evidence + static review | Orta | Layer davranışı live test edilmedi | Live validation |
| `06-ai-eklentileri/noisexterminator.md` | NoiseXTerminator | Version-Sensitive | Developer manual + UI evidence | Yüksek | Plugin/AI model sürümü | Version pinning |
| `05-color-calibration/pcc.md` | PhotometricColorCalibration | Partially Verified | UI evidence + official source review | Yüksek | 1.9.3 exact behavior testi yok | Live validation |
| `10-pixelmath/index.md` | PixelMath | Static Review Only | UI evidence + syntax review | Orta | PixInsight execution yok | Live recipe validation |
| `11-maskeler/range-mask.md` | RangeSelection | UI Evidence Required | Official naming + static review | Yüksek | Screenshot klasörü boş | Capture UI evidence |
| `13-final/scnr.md` | SCNR | Partially Verified | UI evidence + static review | Orta | Output/OIII koruma testi yok | Data validation |
| `02-pixinsight-temelleri/stf.md` | ScreenTransferFunction | Partially Verified | UI evidence + static review | Düşük | AutoSTF exact defaults yok | Live validation |
| `05-color-calibration/spcc.md` | SpectrophotometricColorCalibration | Partially Verified | UI evidence + official reference | Yüksek | Catalog/profile/output testi yok | Live validation |
| `03-kalibrasyon/star-alignment.md` | StarAlignment | Partially Verified | UI evidence + official tutorial | Yüksek | Distortion/drizzle output testi yok | Data validation |
| `11-maskeler/star-mask.md` | StarMask | Partially Verified | UI evidence + official example | Orta | Exact UI/default testi yok | Live validation |
| `06-ai-eklentileri/starxterminator.md` | StarXTerminator | Version-Sensitive | Developer manual + UI evidence | Yüksek | Plugin/model ve layer behavior | Version pinning |
| `03-kalibrasyon/wbpp.md` | WeightedBatchPreprocessing | Version-Sensitive | UI evidence + script/log policy | Yüksek | Çağrılan aşamalar seçime/build'e bağlı | Live validation |

## Sürüm Hassas Konular

- WBPP orchestration, Diagnostics ve output dizinleri
- GradientCorrection convergence ve model seçenekleri
- PCC/SPCC catalog, plate-solving ve profile gereksinimleri
- Script dağıtımı: ColorMask, DarkStructureEnhance ve GeneralizedHyperbolicStretch
- RC Astro plugin ve AI model sürümleri
- Exact menu group, label, tooltip, default ve console messages

## UI Kanıt Açıkları

`validation/ui/pi-1.9.3/range-mask/screenshots/` altında kanıt bulunmadığı için RangeSelection sayfası `UI Evidence Required` durumundadır. Diğer registry girdilerinde screenshot bulunması yalnız görünür UI'yi kanıtlar; default/reset state veya process behavior kanıtı sayılmaz.

## Gelecekte Screenshot Doğrulaması Gerektiren Sayfalar

- [RangeSelection](docs/11-maskeler/range-mask.md)

## Gelecekte Canlı PixInsight Doğrulaması Gerektiren Alanlar

- Calibration/integration rejection, weighting, normalization ve output maps
- PCC/SPCC catalog/profile ve console behavior
- GradientCorrection/DBE model ve residual sonuçları
- PixelMath recipe execution ve channel/range sonuçları
- Menu path ve defaults için temiz PixInsight 1.9.3 instance
- Plugin sürümüyle AI output ve layer recombination testleri

## Bilinen Çözülmemiş Sınırlamalar

- Screenshot dosyalarının içinde görünmeyen build numarası 1.9.3 kimliğini tek başına kanıtlamaz.
- Statik screenshot tooltip, hidden dropdown, default/reset state veya algoritmik behavior kanıtlamaz.
- Community recipe sonuçları hedef, SNR, filter response ve image state'e bağlıdır.
- Dört legacy redirect canonical teknik authority değildir ve navigation dışında kalır.

## Release Durumu

| Sınıf | Açık Bulgu |
| --- | ---: |
| Release Blocking | 0 |
| Major | 0 |
| Moderate | 1 — RangeSelection UI screenshot eksikliği |
| Minor | 1 — MkDocs/Material gelecek sürüm bildirimi |

Mevcut açık konular non-blocking'dir; v1.0 release candidate için canlı PixInsight regression pass ayrıca önerilir.
