# FAZ 1B Teknik İnceleme Raporu

**İnceleme türü:** İçerik ve doğrulama açığı envanteri; Revizyon 1 sonuçlarıyla güncellendi  
**Kapsam:** FAZ 1B kapsamında güncellenen yedi kalibrasyon dokümanı  
**Revizyon durumu:** Yapısal ve render bulguları giderildi; teknik kanıt açıkları izlenmeye devam ediyor.

## Revizyon 1 sonucu

- Teori tablolarındaki literal satır sonu kaçışları gerçek Markdown satırlarına dönüştürüldü.
- Yedi Decision Tree geçerli karar akışları olarak yeniden yazıldı.
- Process sayfalarındaki dekoratif ortak pipeline diyagramları konuya özgü akışlarla değiştirildi.
- Her sayfaya A–D teknik doğrulama sınıflandırması ve görünür doğrulama durumu kutusu eklendi.
- Ekran görüntüsü, gerçek veri, console logu ve kurulu PixInsight 1.9.3 arayüz doğrulaması hâlâ bekliyor.

### Yapısal doğrulama sonucu

- Kapsamdaki 12 dosyada normal Markdown, tablo, liste, admonition veya Mermaid alanında literal satır sonu kaçışı kalmadı.
- Repository genelindeki metin taramasının tek eşleşmesi Faz 1A içindeki bilinçli LaTeX “eşit değildir” komutudur; satır sonu kaçışı değildir ve kapsam dışında bırakılmıştır.
- Başlık sırası, code fence dengesi, zorunlu SSS/Quick Reference/Decision Tree bölümleri ve doğrulama kutuları kontrol edildi.
- Mermaid CLI ortamda bulunmadığından bağımsız CLI render testi yapılamadı. Mermaid blokları MkDocs Material yapılandırması ve yapısal syntax denetimiyle kontrol edildi.
- `mkdocs build --strict` başarıyla tamamlandı.

## Genel bulgular

- Tüm sayfalar PixInsight 1.9.3’ü hedeflediğini belirtiyor; ancak kurulu PixInsight 1.9.3 üzerinde ekran, tooltip, process documentation ve console log karşılaştırması yapıldığına dair dosya içi kanıt bulunmuyor.
- Sayfalardaki genel “kurulu build’den doğrulanmalıdır” uyarısı doğru bir inceleme sınırı koyuyor; buna rağmen tek tek iddiaların yanında kaynak künyesi bulunmuyor.
- İlk incelemede bulunan literal satır sonu kaçışları Revizyon 1 kapsamında gerçek satır sonlarına dönüştürüldü.
- Hiçbir FAZ 1B sayfasında PixInsight 1.9.3 ekran görüntüsü, gerçek sample dataset, console log parçası, statistics ölçümü veya before/after karşılaştırması bulunmuyor.
- Menü yollarının çoğu “process arama alanı” düzeyinde; tam menü grubu doğrulanmış değil.

---

## Dosya

`docs/03-kalibrasyon/index.md`

### Kapsanan konular

Pipeline kapsamı; frame grouping; lineerlik; calibration masters; CosmeticCorrection; StarAlignment; LocalNormalization; ImageIntegration; rejection maps ve temel kalite kapıları.

### Kullanılan PixInsight process ve parametre adları

`WeightedBatchPreprocessing`, `CosmeticCorrection`, `StarAlignment`, `LocalNormalization`, `ImageIntegration`, `ScreenTransferFunction`; Bias, Dark, Flat, Light, filter, exposure, binning, gain/offset, reference ve rejection maps.

### PixInsight 1.9.3 doğrulama durumu

**Kısmi / dokümantasyon içi beyan.** Pipeline sırası kavramsal olarak tutarlı; tam menü yolu ve kurulu 1.9.3 arayüzüyle karşılaştırma kanıtlanmamış. Menü yolundaki `Image` ifadesi belirli bir process adı değildir.

### Doğrulama bekleyen ifadeler

- Kamera modeline ve script build’ine bağlı ayrıntılar.
- Tam menü grupları.
- LocalNormalization’ın hangi koşulda gerekli sayılacağı.
- Audit output adlarının ve seçeneklerinin kurulu build’deki karşılıkları.

### Birincil kaynak gerektiren teknik iddialar

- Pipeline’ın nonlinear stretch uygulamadan lineerliği koruduğu.
- Sistematik calibration hatasının frame sayısı artırılarak giderilemeyeceği.
- Registration ve LocalNormalization reference seçimlerinin farklı amaçlara dayanabileceği.
- CosmeticCorrection’ın pipeline içindeki önerilen yeri.

### Bilinen riskler

- Decision Tree satır sonu sorunu Revizyon 1’de giderildi.
- Üst düzey özet, veri türüne göre değişen sıra seçeneklerini fazla genelleyebilir.
- Menü yolu okuyucuyu kesin bir process’e yönlendirmiyor.

### Eksik ekran görüntüleri

- WBPP pipeline özeti.
- Process Explorer’da ilgili process’ler.
- Rejection map örneği.
- Lineer master ve STF görünümü.

### Eksik gerçek veri örnekleri

- Aynı LRGB setinin calibrated, registered ve integrated ara çıktıları.
- Hatalı master eşleşmesinin ölçülebilir sonucu.
- Temiz ve problemli rejection map karşılaştırması.

---

## Dosya

`docs/03-kalibrasyon/calibration-pipeline.md`

### Kapsanan konular

Calibration Pipeline tanımı; lineer veri; RAW → Calibration → Cosmetic Correction → Star Alignment → Local Normalization → Image Integration → Master Image yaşam döngüsü; her aşamanın amaç, girdi, çıktı ve ardışık ilişkisi.

### Kullanılan PixInsight process ve parametre adları

`ImageCalibration`, `CosmeticCorrection`, `StarAlignment`, `LocalNormalization`, `ImageIntegration`, `ScreenTransferFunction`, `DrizzleIntegration`; Bias, Dark, Flat, Light, normalization data, rejection maps ve drizzle data.

### PixInsight 1.9.3 doğrulama durumu

**Kısmi.** Process zinciri genel düzeyde doğrulanabilir; ancak 1.9.3 interface ekranları, process instance kaynakları veya console loglarıyla dosya içinde doğrulama yapılmamış.

### Doğrulama bekleyen ifadeler

- Tam process menü grupları.
- LocalNormalization’ın zorunlu/opsiyonel seçim ölçütleri.
- Drizzle ve normalization yardımcı dosyalarının kesin uzantı ve üretim koşulları.
- Registration sonrası CosmeticCorrection alternatifi olup olmadığına dair kapsam sınırı.

### Birincil kaynak gerektiren teknik iddialar

- LocalNormalization’ın DBE olmadığı ve integration uyumluluğu sağladığı.
- Registration’ın pixel rejection yapmadığı.
- Calibration sonrası CosmeticCorrection sıralamasının önerilen standart olduğu.
- Drizzle data üretiminin DrizzleIntegration’dan ayrı olduğu.

### Bilinen riskler

- “Teori” alt başlık ve tablo render sorunu Revizyon 1’de giderildi.
- Decision Tree satır sonu sorunu Revizyon 1’de giderildi.
- “RAW” terimi kamera üreticisi RAW formatıyla karıştırılabilir.

### Eksik ekran görüntüleri

- Her pipeline aşamasının input/output dosya ağacı.
- WBPP output klasörleri.
- LocalNormalization data ve ImageIntegration input eşlemesi.
- Master/rejection maps birlikte görünümü.

### Eksik gerçek veri örnekleri

- Tek bir Ha frame’in tüm yaşam döngüsü.
- LocalNormalization kullanılan ve kullanılmayan integration karşılaştırması.
- Drizzle yardımcı dosyasıyla gerçek workflow.

---

## Dosya

`docs/03-kalibrasyon/wbpp.md`

### Kapsanan konular

WBPP’nin amacı, batch script niteliği, avantajları, sınırları, Diagnostics, grouping, caching, loglama, arka planda çağırabileceği process ailesi ve manuel pipeline tercihi.

### Kullanılan PixInsight process ve parametre adları

`WeightedBatchPreprocessing`, `ImageIntegration`, `ImageCalibration`, `CosmeticCorrection`, `Debayer`, `StarAlignment`, `LocalNormalization`; Frames, Calibration, Registration, Local Normalization, Integration, reference, interpolation, distortion, drizzle data, combination, weights, normalization ve rejection.

### PixInsight 1.9.3 doğrulama durumu

**Doğrulama bekliyor.** Dosya, kesin çağrı listesinin kurulu WBPP build logundan doğrulanması gerektiğini doğru biçimde belirtiyor; fakat script sürümü ve gerçek log eklenmemiş.

### Doğrulama bekleyen ifadeler

- PixInsight 1.9.3 ile gelen WBPP sürümü.
- Seçeneklere göre çağrılan process’lerin kesin listesi ve sırası.
- Diagnostics ve caching davranışı.
- Output klasör yapısı ve yardımcı dosya adları.
- Tam menü yolu ve arayüz sekme adları.

### Birincil kaynak gerektiren teknik iddialar

- WBPP’nin belirtilen process ailesini hangi koşullarda çağırdığı.
- Grouping ve Diagnostics kuralları.
- Cache’in hangi ara ürünleri yeniden kullandığı.
- Manuel pipeline ile eşdeğer process zinciri kurulabileceği.

### Bilinen riskler

- WBPP build belirtilmeden 1.9.3 uyumluluğu genelleniyor.
- “Ölçüm/weighting” bileşeninin gerçek process adı verilmemiş.
- Decision Tree satır sonu sorunu Revizyon 1’de giderildi.
- Script seçenekleri sürümler arasında hızla değişebilir.

### Eksik ekran görüntüleri

- WBPP ana ekranı ve sekmeleri.
- Grouping tablosu.
- Diagnostics uyarısı.
- Pipeline graph.
- Cache özeti ve log ekranı.

### Eksik gerçek veri örnekleri

- Metadata’sı düzgün ve hatalı iki grouping örneği.
- Manuel process zinciri ile WBPP output karşılaştırması.
- Cache açık/kapalı yeniden çalışma logu.

---

## Dosya

`docs/03-kalibrasyon/image-calibration.md`

### Kapsanan konular

Master Bias, Master Dark, Master Flat, Optimize Master Dark, Dark Scaling, Pedestal, Overscan, CFA, Superbias; kullanım alanları, avantajları, dezavantajları ve calibration riskleri.

### Kullanılan PixInsight process ve parametre adları

`ImageCalibration`, `Master Bias`, `Master Dark`, `Master Flat`, `Calibrate`, `Optimize`, Dark Scaling, Pedestal, Overscan, CFA, Superbias, gain, offset, binning, temperature ve exposure.

### PixInsight 1.9.3 doğrulama durumu

**Kısmi / yüksek öncelikli doğrulama gerekli.** Kavramlar kapsanmış; interface’teki kesin parametre adları, option etkileşimleri ve calibration formülü 1.9.3 yerleşik documentation ile satır satır doğrulanmamış.

### Doğrulama bekleyen ifadeler

- `Calibrate` ve `Optimize` seçeneklerinin tam 1.9.3 davranışı.
- Dark Scaling algoritması ve uygunluk ölçütleri.
- Pedestal input/output ve metadata davranışı.
- Overscan source/target region uygulama sırası.
- CFA pattern algılama ve calibration davranışı.
- Superbias’ın güncel sensör ailelerinde önerilen kapsamı.

### Birincil kaynak gerektiren teknik iddialar

- Bias/dark çıkarımı ve flat bölme modeli.
- Aynı bias bileşenini iki kez çıkarma riski.
- Amp glow içeren CMOS veride dark scaling riski.
- Master Bias’ın CMOS pipeline’larında her zaman gerekli olmadığı.
- Superbias’ın sensöre bağlı yararı.
- Pedestal’ın clipping/negatif değer yönetimindeki rolü.

### Bilinen riskler

- Teori tablosunun satır sonu sorunu Revizyon 1’de giderildi.
- “Amp glow nedeniyle Optimize kapalı” önerisi kamera ve dark eşleşmesine bağlıdır.
- Parametrelerin gerçek UI etiketleri kısmen genelleştirilmiştir.
- Decision Tree satır sonu sorunu Revizyon 1’de giderildi.

### Eksik ekran görüntüleri

- ImageCalibration arayüzündeki Overscan, Master Bias, Master Dark ve Master Flat panelleri.
- `Calibrate` ve `Optimize` seçenekleri.
- Pedestal ve CFA seçenekleri.
- Statistics ile clipping kontrolü.

### Eksik gerçek veri örnekleri

- Matching ve scaled dark karşılaştırması.
- Amp glow over/under-correction örneği.
- Doğru/yanlış Master Flat sonucu.
- Overscan uygulanmış calibration.
- CFA pattern hatası.
- Superbias ve Master Bias ölçüm karşılaştırması.

---

## Dosya

`docs/03-kalibrasyon/cosmetic-correction.md`

### Kapsanan konular

Hot pixel, cold pixel, Auto Detect, Sigma, Defect List, Master Dark referansı, CFA farkındalığı, gerçek defect senaryosu ve yanlış kullanım.

### Kullanılan PixInsight process ve parametre adları

`CosmeticCorrection`, Hot/Cold Auto Detect, Sigma, Defect List, Master Dark, CFA, ScreenTransferFunction ve Difference view yaklaşımı.

### PixInsight 1.9.3 doğrulama durumu

**Kısmi.** Genel defect yaklaşımı tutarlı; Auto Detect algoritması, Sigma yönü, Master Dark tabanlı detection ve CFA davranışı kurulu 1.9.3 yardımından doğrulanmamış.

### Doğrulama bekleyen ifadeler

- Sigma azaldıkça detection’ın “genellikle” agresifleşmesi.
- CFA seçeneğinin kesin etkisi.
- Master Dark ile defect detection’ın çalışma biçimi.
- Defect List formatı ve row/column sözdizimi.
- Düzeltmede kullanılan interpolation yöntemi.

### Birincil kaynak gerektiren teknik iddialar

- Auto Detect’in yerel dağılım ve sigma eşikleriyle çalışması.
- Hot/cold pixel tanımları ve detection yönü.
- Cosmic ray’in Defect List yerine integration rejection’a bırakılması.
- CosmeticCorrection’ın önerilen pipeline konumu.

### Bilinen riskler

- Sayısal Sigma örneği ve kabul ölçütü yok.
- “Difference görüntüsü” üretim yöntemi açıklanmamış.
- Decision Tree satır sonu sorunu Revizyon 1’de giderildi.
- Gerçek yıldız ile hot pixel ayrımı yalnız nitel anlatılmış.

### Eksik ekran görüntüleri

- CosmeticCorrection Auto Detect panelleri.
- Hot/cold Sigma kontrolleri.
- Defect List editörü.
- Correction öncesi/sonrası ve difference görüntüsü.

### Eksik gerçek veri örnekleri

- Sabit hot pixel koordinat takibi.
- Bad column Defect List örneği.
- Agresif Sigma ile yıldız hasarı örneği.
- CFA frame üzerinde yanlış/doğru correction.

---

## Dosya

`docs/03-kalibrasyon/star-alignment.md`

### Kapsanan konular

Registration mantığı, Reference Image seçimi, registration model, Interpolation, Distortion Correction, Generate drizzle data, Star detection ve pixel rejection ile ilişki.

### Kullanılan PixInsight process ve parametre adları

`StarAlignment`, Reference Image, Registration model, Interpolation, Distortion Correction, Generate drizzle data, Star detection, `DrizzleIntegration`, `ImageIntegration`.

### PixInsight 1.9.3 doğrulama durumu

**Kısmi.** Temel registration ve drizzle ayrımı doğrulanabilir; 1.9.3’te mevcut model/interpolation seçenekleri, varsayılanlar ve distortion implementation ayrıntıları listelenmemiş.

### Doğrulama bekleyen ifadeler

- Reference seçiminde kullanılacak ölçümlerin kesin önceliği.
- Registration model seçenekleri ve varsayılanları.
- Interpolation algoritmaları ve ringing davranışları.
- Distortion Correction’ın 1.9.3 parametreleri.
- Generate drizzle data output uzantısı ve metadata içeriği.
- Star detection ayarlarının düşük SNR davranışı.

### Birincil kaynak gerektiren teknik iddialar

- Registration’ın star matching, geometric model ve resampling aşamalarından oluşması.
- Registration’ın pixel rejection yapmaması.
- Distortion Correction’ın farklı optikler ve wide-field mosaic için gerekli olabilmesi.
- Generate drizzle data’nın final drizzle image üretmemesi.
- Interpolation’ın örnek değerlerini değiştirmesi fakat nonlinear stretch olmaması.

### Bilinen riskler

- Reference seçim ölçütleri nicel değil.
- Interpolation seçenekleri isimleriyle kapsanmamış.
- Residual difference üretim yöntemi verilmemiş.
- Decision Tree satır sonu sorunu Revizyon 1’de giderildi.

### Eksik ekran görüntüleri

- StarAlignment Reference Image ve registration model panelleri.
- Interpolation seçenekleri.
- Distortion Correction kontrolleri.
- Generate drizzle data seçeneği.
- Başarılı/başarısız star matching logu.

### Eksik gerçek veri örnekleri

- İyi ve kötü reference karşılaştırması.
- Köşe distortion residual’ları.
- İki interpolation kernel sonucu.
- Drizzle data içeren gerçek registered frame seti.
- Misregistration’ın rejection map’e etkisi.

---

## Dosya

`docs/03-kalibrasyon/image-integration.md`

### Kapsanan konular

Average, Median, Winsorized Sigma Clipping, Linear Fit Clipping, ESD/Generalized ESD, Percentile Clipping, Weighting, Normalization, rejection normalization, Rejection Maps, Weight Maps ve output files.

### Kullanılan PixInsight process ve parametre adları

`ImageIntegration`, Average, Median, Winsorized Sigma Clipping, Linear Fit Clipping, ESD/Generalized ESD, Percentile Clipping, Combination, Normalization, Weighting, Rejection normalization, Rejection algorithm, Rejection Maps, Weight Maps, low/high rejection maps ve slope/auxiliary maps.

### PixInsight 1.9.3 doğrulama durumu

**Kısmi / yüksek öncelikli doğrulama gerekli.** Algoritma aileleri listelenmiş; 1.9.3’teki kesin UI adları, uygun frame-count aralıkları, threshold parametreleri, normalization seçenekleri ve output map davranışları doğrulanmamış.

### Doğrulama bekleyen ifadeler

- Generalized ESD’nin kesin implementation ve UI adı.
- Linear Fit Clipping algoritmasının varsayımları.
- Percentile Clipping parametreleri.
- Winsorized Sigma Clipping threshold ve iki aşamalı davranışı.
- Weighting seçenekleri ve keyword adları.
- Normalization ve rejection normalization seçenekleri.
- Weight/slope/auxiliary map üretim koşulları.
- Output dosya adları.

### Birincil kaynak gerektiren teknik iddialar

- Average’ın uygun rejection ile Median’dan daha yüksek SNR verimliliği.
- Winsorization’ın uç örnek etkisini sınırlaması.
- Algoritma seçiminin frame sayısı ve dağılıma bağlı olması.
- Normalization, weighting ve rejection’ın sıralı etkileşimi.
- Rejection maps’te sistematik yıldız yapısının misregistration veya aşırı rejection gösterebilmesi.

### Bilinen riskler

- Teori tablosunun satır sonu sorunu Revizyon 1’de giderildi.
- Algoritma seçimi için sayısal veya kategorik karar eşiği yok.
- “Otuz Ha frame” senaryosu tek algoritmayı örtük öneri gibi gösterebilir.
- Decision Tree satır sonu sorunu Revizyon 1’de giderildi.
- Weight Maps teriminin 1.9.3 output adıyla eşleşmesi doğrulanmamış.

### Eksik ekran görüntüleri

- Image Integration ve Pixel Rejection panelleri.
- Combination, Normalization ve Weights kontrolleri.
- Her rejection algoritmasının seçim ekranı.
- Low/high rejection maps.
- Weight/slope map ve output console özeti.

### Eksik gerçek veri örnekleri

- Aynı stack’in Average/Median karşılaştırması.
- Winsorized, Linear Fit, ESD ve Percentile rejection karşılaştırması.
- Uydu izi ve cosmic ray high rejection map örnekleri.
- Gerçek sinyalin yanlış reddedildiği map.
- Weighting açık/kapalı SNR ve PSF ölçümü.

---

## İnceleme sonucu

FAZ 1B dokümanları kapsam iskeleti ve kavramsal yönlendirme bakımından kullanılabilir durumdadır; ancak “PixInsight 1.9.3 teknik olarak doğrulandı” statüsüne geçmeleri için aşağıdaki kanıtlar eksiktir:

1. Kurulu PixInsight 1.9.3 üzerinde process interface ve tooltip doğrulaması.
2. İlgili process documentation sürüm/kaynak kayıtları.
3. Gerçek WBPP ve console logları.
4. Kamera metadata’sı açıklanmış en az bir mono ve tercihen bir CFA sample dataset.
5. Ara frame, statistics, rejection map ve residual karşılaştırmaları.
6. Markdown ve Mermaid render düzeltmeleri tamamlandı; yeniden oluşmasını önlemek için checklist uygulanması.

---

# Sprint 2.1 Teknik Review Özeti

Sprint 2.1 içerikleri yapısal olarak tamamlanmış; PixInsight 1.9.3 arayüzü, birincil kaynaklar, gerçek veri ve görseller açısından doğrulama kuyruğundadır. Sprint tamamen yayıma hazır değildir.

## İncelenen Dosyalar

- `docs/04-gradient/index.md`
- `docs/04-gradient/gradient-theory.md`
- `docs/04-gradient/abe.md`
- `docs/04-gradient/dbe.md`
- `mkdocs.yml`

## Yapısal Durum

Dört içerik dosyasında standart başlıklar, en az beş SSS, Quick Reference, Decision Tree ve teknik doğrulama durumu vardır. Dokuz Mermaid bloğu içerikle karşılaştırılmış; karar sonuçları kesin reçete yerine inceleme eylemine yönlendirilmiştir. Giriş sayfasındaki teori tekrarı kısaltılmış, kavramsal temel Gradient Teorisi’ne taşınmıştır.

## Navigation Durumu

`gradient-theory.md`, Gradient navigasyonuna giriş sayfasından sonra eklendi. Sıra: Gradient Bölümüne Giriş, Gradient Teorisi, AutomaticBackgroundExtractor, DynamicBackgroundExtraction ve mevcut diğer gradient sayfaları.

## Teknik Riskler

- Additive ve multiplicative gösterimler kavramsaldır; PixInsight correction algoritmasının eksiksiz tanımı değildir.
- ABE’nin otomatik background ölçüm ve model üretim algoritması birincil kaynakla doğrulanmalıdır.
- ABE/DBE control adları, varsayılanları ve etkileşimleri PixInsight 1.9.3 ekranında doğrulanmalıdır.
- ABE “basit”, DBE “karmaşık” gradient şeklinde mutlak ayrılmamıştır; kabul Model Image ve veri kanıtına bağlıdır.
- DBE samples gerçek diffuse signal içerirse background model hedef sinyali kaldırabilir.
- Subtraction ve Division ayrıntılı karşılaştırması Sprint 2.2’ye bırakılmıştır.
- “Less than three samples were generated” için hiçbir tekil parametre değişikliği garanti çözüm olarak sunulmamıştır.

## Doğrulama Matrisi

| ID | Dosya | Konu | Kategori | Öncelik | Doğrulama yöntemi | Durum |
| --- | --- | --- | --- | --- | --- | --- |
| UI-1.01 | index.md | ABE/DBE tam menü yolları | UI-1 | Orta | PixInsight 1.9.3 menü ekranı | Bekliyor |
| UI-1.02 | abe.md | Function Degree ve Smoothing Factor etiketleri | UI-1 | Yüksek | ABE interface + tooltip | Bekliyor |
| UI-1.03 | abe.md | Model Image, Replace Target, Replace Background | UI-1 | Yüksek | ABE interface + output testi | Bekliyor |
| UI-1.04 | dbe.md | Tolerance, Radius, Shadows Relaxation | UI-1 | Yüksek | DBE interface + tooltip | Bekliyor |
| UI-1.05 | dbe.md | Discard Model, Normalize, Replace Target | UI-1 | Yüksek | DBE interface + output testi | Bekliyor |
| UI-1.06 | dbe.md | Polynomial Degree, Interpolation ve Correction seçenekleri | UI-1 | Yüksek | DBE interface + process documentation | Bekliyor |
| DOC-1.01 | gradient-theory.md | Additive ve multiplicative model sınırları | DOC-1 | Yüksek | Resmî background extraction documentation | Bekliyor |
| DOC-1.02 | gradient-theory.md | Polynomial modelin PixInsight uygulaması | DOC-1 | Yüksek | Resmî ABE/DBE documentation | Bekliyor |
| DOC-1.03 | gradient-theory.md | Interpolation ve sınır davranışı | DOC-1 | Yüksek | Resmî DBE documentation | Bekliyor |
| DOC-1.04 | abe.md | Otomatik background ölçüm/model üretimi | DOC-1 | Yüksek | Resmî ABE documentation | Bekliyor |
| DOC-1.05 | abe.md | Function Degree ve Smoothing Factor algoritmik etkisi | DOC-1 | Yüksek | Resmî ABE documentation | Bekliyor |
| DOC-1.06 | dbe.md | Sample acceptance ve Tolerance algoritması | DOC-1 | Yüksek | Resmî DBE documentation | Bekliyor |
| DOC-1.07 | dbe.md | Shadows Relaxation ve Normalize davranışı | DOC-1 | Yüksek | Resmî DBE documentation | Bekliyor |
| DATA-1.01 | abe.md | Galaxy halo korunumu | DATA-1 | Yüksek | Açıklamalı galaxy dataset A/B testi | Bekliyor |
| DATA-1.02 | abe.md | Emission/reflection nebula model contamination | DATA-1 | Yüksek | Nebula dataset + Model Image | Bekliyor |
| DATA-1.03 | abe.md | Narrowband kanal davranışı | DATA-1 | Orta | Ha/OIII/SII ayrı testleri | Bekliyor |
| DATA-1.04 | dbe.md | Sample coverage ve density etkisi | DATA-1 | Yüksek | Aynı image üzerinde kontrollü sample setleri | Bekliyor |
| DATA-1.05 | dbe.md | Subtraction ve Division sonuçları | DATA-1 | Yüksek | Clone, STF, histogram ve model karşılaştırması | Sprint 2.2 |
| DATA-1.06 | dbe.md | Residual gradient ve signal preservation | DATA-1 | Yüksek | Before/after residual ölçümü | Bekliyor |
| IMG-1.01 | dbe.md | Less than three samples hata mesajı | IMG-1 | Yüksek | 1.9.3 ekran görüntüsü | Bekliyor |
| IMG-1.02 | dbe.md | Hatalı ve kontrollü sample yerleşimi | IMG-1 | Yüksek | Karşılaştırmalı ekran görüntüsü | Bekliyor |
| IMG-1.03 | dbe.md | Nebulaya benzeyen Background model | IMG-1 | Yüksek | Target/Model Image yan yana | Bekliyor |
| IMG-1.04 | dbe.md | Division sonrası aşırı parlama | IMG-1 | Orta | STF + histogram ekranları | Bekliyor |
| IMG-1.05 | dbe.md | Subtraction sonrası siyah arka plan | IMG-1 | Orta | Eski/yeni STF + histogram | Bekliyor |
| IMG-1.06 | dbe.md | Residual gradient | IMG-1 | Orta | Before/after/model görüntüleri | Bekliyor |

## Birincil Kaynak Gerektiren İddialar

1. ABE’nin otomatik background ölçümlerini nasıl seçtiği.
2. ABE `Function Degree` kontrolünün kesin matematiksel etkisi.
3. ABE `Smoothing Factor` kontrolünün kesin matematiksel etkisi.
4. DBE `Tolerance` kontrolünün sample acceptance üzerindeki kesin yönü.
5. DBE `Radius` ölçümünün statistics ve contamination davranışı.
6. DBE `Shadows Relaxation` kontrolünün algoritmik işlevi.
7. DBE `Normalize` seçeneğinin target ve kanal seviyelerine etkisi.
8. DBE `Discard Model` ve `Replace Target` output etkileşimi.
9. DBE `Polynomial Degree` ve `Interpolation` seçeneklerinin uygulaması.
10. “Less than three samples were generated” hatasının kesin tetikleme koşulu ve process’in sunduğu öneriler.

## PixInsight 1.9.3 Ekran Doğrulaması Gereken Alanlar

- AutomaticBackgroundExtractor ve DynamicBackgroundExtraction menü yolları
- ABE parametre etiketleri, varsayılanları ve output seçenekleri
- DBE sample generation ve model parameter panelleri
- Tolerance, Radius, Shadows Relaxation, Normalize ve Discard Model tooltip’leri
- Correction, Polynomial Degree, Interpolation ve Replace Target seçenekleri
- “Less than three samples were generated” hata metni ve önerileri

## Gerçek Veri Testleri

- Galaxy dış halo korunumu
- Emission ve reflection nebula contamination
- Narrowband kanal bazlı ABE modeli
- Wide-field gradient ve background erişimi
- DBE sample coverage/density karşılaştırması
- Subtraction–Division clone karşılaştırması
- Residual gradient ve gerçek signal preservation
- ABE ile DBE’nin aynı dataset üzerindeki çelişkisiz kabul testi

## Ekran Görüntüsü Listesi

1. ABE ana arayüzü ve Model Image output’u
2. DBE ana arayüzü ve sample controls
3. “Less than three samples were generated” mesajı
4. Hatalı ve kontrollü sample dağılımı
5. Nebulaya benzeyen Background model
6. Division sonrası aşırı parlama
7. Subtraction sonrası siyah arka plan
8. Residual gradient before/after/model karşılaştırması

## Dosya Bazlı Yayın Durumu

| Dosya | Yapısal Durum | Teknik Durum | Görsel Durum | Yayına Hazırlık |
| --- | --- | --- | --- | --- |
| index.md | Hazır | Genel kavramlar ayrıştırıldı | Yönlendirme görseli opsiyonel | Kısmen hazır |
| gradient-theory.md | Hazır | Birincil kaynak bekliyor | Teori diyagramları hazır | Teknik doğrulama bekliyor |
| abe.md | Hazır | UI ve DOC doğrulaması bekliyor | ABE ekranları eksik | Teknik doğrulama bekliyor |
| dbe.md | Hazır | UI, DOC ve DATA doğrulaması bekliyor | Altı kritik görsel eksik | Görsel doğrulama bekliyor |
