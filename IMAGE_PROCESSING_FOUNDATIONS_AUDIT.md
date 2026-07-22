# Image Processing Foundations Audit — Phase 7.3

## Amaç ve kapsam

Bu audit, evrensel görüntü işleme teorisi ile PixInsight process dokümantasyonunun sahiplik sınırlarını kaydeder. Canonical URL’ler korunmuş; process parametreleri concept sayfalarına taşınmamıştır.

## İncelenen sayfalar

| Sayfa | Mevcut rol | Önerilen rol | Tamamlanma | Process çakışması | Duplicate riski | Önerilen işlem | Canonical URL etkisi |
|---|---|---|---:|---|---|---|---|
| Histogram ve Ton Dağılımı | Karma concept/process | Saf histogram concept | %100 | Yüksekti | Yüksekti | Process prosedürünü ayır; concept’i yeniden yaz | Yok |
| HistogramTransformation | Process + kısa teori | Saf process operasyonu | %100 | Vardı | Yüksekti | Evrensel teoriyi concept’e bağla | Yok |
| ScreenTransferFunction | PixInsight process | Display process | %100 | Kontrollü | Orta | Lineer/nonlineer concept’e bağla | Yok |
| GeneralizedHyperbolicStretch | PixInsight process | Stretch process | %100 | Kontrollü | Orta | Evrensel stretch’i yeni concept’e bırak | Yok |
| CurvesTransformation | PixInsight process | Final tonal process | %100 | Kontrollü | Orta | Global/local contrast concept’e bağlanabilir | Yok |
| SNR ve Dinamik Aralık | Acquisition concept | SNR/integration/dynamic-range concept | %100 | Yok | Orta | Noise türlerini ayrı strict scope’a bağla | Yok |
| Gradient Teorisi | Concept + eski süreç kalıntıları | Canonical gradient concept | %95 | Orta | Orta | Sprint dili ve parametre kapsamını temizle | Yok |
| Maske Mantığı | Concept | Canonical mask concept | %100 | Düşük | Düşük | Polarity diyagramı ve process zinciri ekle | Yok |
| Astronomik Renk Teorisi | Astronomik color concept | Spektrum ve calibration concept | %95 | Düşük | Orta | Evrensel channel teorisini ayrı concept’e bağla | Yok |
| Detay ve Kontrast | Concept + process selector | Bölüm/process yönlendiricisi | %95 | Orta | Orta | Universal local-contrast teorisini ayrı concept’e bağla | Yok |
| HDRMultiscaleTransform | Process | Dynamic-range compression process | %100 | Kontrollü | Orta | Yeni concept ön bilgisine bağlanabilir | Yok |
| LocalHistogramEqualization | Process | Local-contrast process | %100 | Kontrollü | Orta | Yeni concept ön bilgisine bağlanabilir | Yok |

## Yeni canonical sayfa kararları

| Yeni sayfa | Karar | Strict scope | Gerekçe |
|---|---|---|---|
| Lineer ve Nonlineer Görüntü | Oluşturuldu | Veri durumu, display/permanent transform | Mevcut açıklamalar STF ve stretch process’lerine dağılmıştı. |
| Stretch Temelleri | Oluşturuldu | Evrensel tonal dönüşüm ve aşırı stretch ölçütleri | Süreçler arasında ortak teori tekrar ediliyordu. |
| Sinyal ve Gürültü | Oluşturuldu | Noise türü, pattern, scale, estimation ve görünürlük | SNR sayfası integration matematiğine odaklanırken uzamsal noise sınıflandırması eksikti. |
| Renk ve Kanallar | Oluşturuldu | RGB, luminance, chrominance, separation ve clipping | Astronomik Renk Teorisi instrument response’a odaklandığı için evrensel kanal sahipliği yoktu. |
| Dinamik Aralık ve Yerel Kontrast | Oluşturuldu | Processing dynamic range, compression ve scale-dependent contrast | Acquisition dinamik aralığı ile detail process seçimi arasında concept boşluğu vardı. |

## Histogram ayrıştırma sonucu

`docs/02-pixinsight-temelleri/histogram.md` aynı URL’de evrensel histogram concept sayfası olarak yeniden yazıldı. Menü yolu, slider tablosu, STF’den instance aktarma ve uygulama prosedürü yalnız `docs/07-stretch/histogram-transformation.md` içinde bırakıldı. İki sayfa karşılıklı bağlantılıdır.

Canonical öğrenme zinciri:

`Histogram → Stretch Temelleri → HistogramTransformation → LRGB/OSC workflow → Hata Kütüphanesi`

## Canonical concept sahipliği

| Kavram | Canonical sahip | Process veya workflow devamı |
|---|---|---|
| Histogram, axes, clipping | Histogram ve Ton Dağılımı | HistogramTransformation |
| Lineer/nonlineer veri | Lineer ve Nonlineer Görüntü | STF, HistogramTransformation, GHS |
| Stretch ilkeleri | Stretch Temelleri | HT, GHS, MaskedStretch, CurvesTransformation |
| Noise türleri ve scale | Sinyal ve Gürültü | ImageIntegration, MMT, NoiseXTerminator |
| SNR ve integration time | SNR ve Dinamik Aralık | ImageIntegration, Veri Kalitesi Stratejileri |
| Gradient ve model sınırı | Gradient Teorisi | ABE, DBE, GradientCorrection |
| Mask polarity ve ağırlık | Maske Mantığı | RangeSelection, StarMask, ColorMask |
| RGB/luminance/chrominance | Renk ve Kanallar | ChannelCombination, LRGBCombination |
| Spektrum ve color calibration | Astronomik Renk Teorisi | SPCC, PCC, BackgroundNeutralization |
| Processing dynamic range/local contrast | Dinamik Aralık ve Yerel Kontrast | HDRMultiscaleTransform, LHE, CurvesTransformation |

## Duplicate ve process overlap temizliği

- Histogram concept’inden PixInsight menü yolu, kontrol tablosu ve uygulama adımları kaldırıldı.
- HistogramTransformation içindeki genel teori kısa process davranışına indirildi.
- Gradient Teorisi içindeki sprint-spesifik gelecek zaman notu kalıcı kapsam açıklamasına dönüştürüldü.
- Astronomik Renk Teorisi, evrensel channel theory’nin sahibi olmaktan çıkarılarak spektrum/instrument response sınırına alındı.
- Detay ve Kontrast giriş sayfası, evrensel dynamic-range/local-contrast teorisini yeni canonical sayfaya devretti.
- Sinyal ve Gürültü sayfası SNR formülü ve integration-time içeriğini tekrar etmez.

## Diagram ve visual plan

| Öncelik | Konu | Biçim | Durum |
|---:|---|---|---|
| 1 | Lineer → display stretch → permanent transform | Mermaid | Eklendi |
| 2 | Histogram anatomy | Mermaid | Eklendi |
| 3 | Mask polarity | Mermaid | Eklendi |
| 4 | Signal/noise/integration ilişkisi | Mermaid | Eklendi |
| 5 | Gerçek nebulosity ve unwanted gradient | Structured illustration | Gerçek veri gerekli |
| 6 | RGB/luminance/chrominance | Mermaid + structured illustration | Plan eklendi |
| 7 | Local contrast ve overprocessing | Structured illustration | Gerçek veri gerekli |

Structured illustration placeholder’ları eğitim amacı, kaynak görüntü, durumlar, annotation gereksinimi ve gerçek veri gereksinimini açıkça içerir.

## Kaynak kalitesi gözlemleri

- Linearity ve PixInsight implementation ayrımı için PixInsight staff açıklaması kullanıldı.
- HistogramTransformation ve stretch davranışı resmi PixInsight reference/documentation bağlantılarına dayandırıldı.
- Noise türleri için üretici teknik kaynakları kullanıldı; unsupported numeric threshold eklenmedi.
- Forum kaynakları yalnız PixInsight geliştirici/staff veya process’in yayın bağlamını açıklayan içeriklerde kullanıldı.
- Concept sayfalarında UI default, exact parameter veya sürüme bağlı kontrol iddiası üretilmedi.

## Deferred topics

- Narrowband palette foundations, channel mapping ve palette intent Phase 7.4’e bırakıldı.
- Sampling, seeing, pixel scale ve resampling bağımsız concept sayfaları ileride değerlendirilmeli.
- Quantization için ayrıntılı bit-depth/dithering görsel laboratuvarı gerçek veri gerektirir.
- Color-management, gamut ve output profile konusu final export alanında ayrı audit gerektirir.
- Illustration placeholder’ları gerçek proje verisi ve annotation üretimi tamamlanana kadar binary asset’e dönüştürülmeyecek.

## Doğrulama sonuçları

| Kontrol | Sonuç |
|---|---|
| `mkdocs build --strict` | Başarılı |
| `git diff --check` | Başarılı |
| Navigasyon hedefleri | 131 / 131 mevcut ve benzersiz |
| Maksimum derinlik | 3 |
| Yerel link, anchor ve asset | 28.812 kontrol; 0 kırık |
| Canonical kayıtları | 135; duplicate 0 |
| Orphan sayfalar | Yalnız dört kasıtlı legacy Color Calibration redirect’i |
| Arama terimleri | 14 / 14 bulundu |
| Previous/next | Altı concept sayfası ve PixInsight Temelleri geçişi doğru |
| Desktop/tablet/mobile | Aktif durum, drawer ve yatay overflow kontrolü başarılı |
| Expanded/collapsed | Klavye ile iki durum doğrulandı |
| Level 2 indentation | Üç viewport’ta 16 px |
| Light/dark uyumu | Ek CSS renk tanımlamaz; Material renk ve focus stillerini miras alır |

Strict build yalnız bilinen dört legacy redirect sayfasının navigasyon dışında olduğunu bildirir. MkDocs 2.0 hakkındaki Material bildirimi, repository içeriğinden kaynaklanan bir build hatası değildir.

## Phase 7.4 önerisi

Phase 7.4, narrowband veri ve palette foundations üzerine kurulmalıdır: emission-line anlamı, kanal SNR dengesizliği, palette intent, SHO/HOO/Foraxx kavramsal ayrımı, star color stratejisi ve channel normalization sınırları. PixelMath reçeteleri concept sayfalarından ayrı tutulmalıdır.
