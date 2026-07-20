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
---

# Sprint 2.2 Teknik Review Özeti

## İncelenen Dosyalar

- `sample-placement.md`
- `division-vs-subtraction.md`
- `gradient-diagnostics.md`
- `index.md`
- `mkdocs.yml`

## Yapısal Durum

Üç yeni sayfa ortak belge standardını, minimum SSS sayısını, Quick Reference, Decision Tree ve teknik doğrulama tablosunu içeriyor. Toplam yedi yeni Mermaid diyagramı reçete değil değerlendirme akışı sunuyor.

## Teknik Riskler

- DBE `Radius`, `Tolerance`, `Shadows Relaxation` ve `Minimum sample weight` davranışları PixInsight 1.9.3 üzerinde doğrulanmalıdır.
- Sample placement önerileri gerçek galaxy, nebula, narrowband, wide-field ve mosaic dataset’lerinde test edilmemiştir.
- Subtraction ve Division saf fiziksel kaynak teşhisi değildir; gerçek image’larda etkiler karışabilir.
- Rotate/flip, filter ve night karşılaştırmaları tek başına kesin kök neden kanıtı değildir.
- Artefact sınıfları gerçek ekran görüntüleri ve acquisition metadata ile doğrulanmayı bekliyor.

## Doğrulama Matrisi

| ID | Dosya | Konu | Kategori | Öncelik | Doğrulama yöntemi | Durum |
| --- | --- | --- | --- | --- | --- | --- |
| UI-2.01 | sample-placement.md | Radius ve Tolerance controls | UI-1 | Yüksek | DBE 1.9.3 interface/tooltip | Bekliyor |
| UI-2.02 | sample-placement.md | Shadows Relaxation ve Minimum sample weight | UI-1 | Yüksek | DBE 1.9.3 interface/tooltip | Bekliyor |
| UI-2.03 | division-vs-subtraction.md | Correction ve Normalize controls | UI-1 | Yüksek | DBE/ABE interface | Bekliyor |
| DOC-2.01 | sample-placement.md | Sample acceptance algoritması | DOC-1 | Yüksek | Resmî DBE documentation | Bekliyor |
| DOC-2.02 | sample-placement.md | Sample weight ve Radius etkisi | DOC-1 | Yüksek | Resmî DBE documentation | Bekliyor |
| DOC-2.03 | division-vs-subtraction.md | Subtraction implementation | DOC-1 | Yüksek | Resmî process documentation | Bekliyor |
| DOC-2.04 | division-vs-subtraction.md | Division/normalization implementation | DOC-1 | Yüksek | Resmî process documentation | Bekliyor |
| DATA-2.01 | sample-placement.md | Galaxy halo sample testi | DATA-1 | Yüksek | Açıklamalı galaxy dataset | Bekliyor |
| DATA-2.02 | sample-placement.md | Nebula/OIII sample testi | DATA-1 | Yüksek | Ha/OIII dataset | Bekliyor |
| DATA-2.03 | sample-placement.md | Wide-field/mosaic coverage | DATA-1 | Orta | Panel dataset karşılaştırması | Bekliyor |
| DATA-2.04 | division-vs-subtraction.md | Aynı modelde iki correction | DATA-1 | Yüksek | Clone/STF/histogram ölçümü | Bekliyor |
| DATA-2.05 | gradient-diagnostics.md | Raw/calibrated ve rotate/filter/night testleri | DATA-1 | Yüksek | Kontrollü frame seti | Bekliyor |
| IMG-2.01 | sample-placement.md | Hatalı/doğru sample alanları | IMG-1 | Yüksek | DBE ekran görüntüsü | Bekliyor |
| IMG-2.02 | sample-placement.md | Less than three samples hatası | IMG-1 | Yüksek | 1.9.3 error ekranı | Bekliyor |
| IMG-2.03 | division-vs-subtraction.md | STF/histogram comparison | IMG-1 | Yüksek | Before/after ekranları | Bekliyor |
| IMG-2.04 | gradient-diagnostics.md | Gradient ve flat artefact sınıfları | IMG-1 | Yüksek | Raw/calibrated örnekler | Bekliyor |

## Dosya Bazlı Yayın Durumu

| Dosya | Yapısal Durum | Teknik Durum | Görsel Durum | Yayına Hazırlık |
| --- | --- | --- | --- | --- |
| sample-placement.md | Hazır | UI/DOC/DATA bekliyor | Kritik örnekler eksik | Teknik doğrulama bekliyor |
| division-vs-subtraction.md | Hazır | DOC/DATA bekliyor | Karşılaştırma eksik | Teknik doğrulama bekliyor |
| gradient-diagnostics.md | Hazır | DATA doğrulaması bekliyor | Artefact atlası eksik | Görsel doğrulama bekliyor |

---

# Sprint 2.3 Teknik Review Özeti

## İncelenen dosyalar

- `gradient-correction.md`
- `graxpert.md`
- `moonlight-gradients.md`
- `light-pollution-gradients.md`
- `flat-field-vs-gradient.md`
- `index.md`
- `mkdocs.yml`

## Yapısal durum

Beş içerik sayfası ortak başlıkları, en az beş SSS'yi, Quick Reference ve gerçek karar akışı içeren Decision Tree'yi kapsıyor. `GradientCorrection` parametreleri ve menü yolu PixInsight 1.9.3 kurulumu görülmeden ayrıntılandırılmadı. GraXpert sürümü, AI model adı ve değişebilir arayüz alanları sabitlenmedi. Görsel placeholder'ları, ileride eklenecek kanıtın neyi göstermesi gerektiğini tanımlıyor.

## Teknik riskler

- `GradientCorrection` processinin PixInsight 1.9.3 içindeki varlığı, menü yolu ve kontrolleri gerçek kurulumla doğrulanmadı.
- GraXpert'in güncel arayüzü, dosya formatı seçenekleri ve model davranışı kullanılan sürümde doğrulanmalı.
- Ay ışığı, ışık kirliliği, airglow, haze ve ince bulut tek bir görüntüden kesin olarak ayrılamayabilir.
- Broadband/narrowband ve renkli/mono çalışma kararları açıklamalı gerçek veri seti gerektiriyor.
- Flat-field artefact ile sky gradient aynı görüntüde birlikte bulunabilir; karar matrisi tek başına fiziksel kanıt değildir.
- Forum iletileri yalnız geliştirici açıklaması açıkça tanımlanabildiğinde teknik bağlam sağlar; üçüncü taraf pratik yorumlar algoritmik gerçek kaynağı sayılmadı.

## Doğrulama matrisi

| ID | Dosya | Konu | Kategori | Öncelik | Doğrulama yöntemi | Durum |
| --- | --- | --- | --- | --- | --- | --- |
| UI-3.01 | gradient-correction.md | 1.9.3 process varlığı ve menü yolu | UI-3 | Yüksek | PixInsight 1.9.3 kurulum ekranı | Bekliyor |
| DOC-3.01 | gradient-correction.md | Background model ve output davranışı | DOC-3 | Yüksek | Resmî process documentation | Bekliyor |
| DATA-3.01 | gradient-correction.md | Renkli/mono ve ABE/DBE karşılaştırması | DATA-3 | Yüksek | Açıklamalı gerçek veri A/B testi | Bekliyor |
| IMG-3.01 | gradient-correction.md | Arayüz, model ve residual | IMG-3 | Yüksek | 1.9.3 ekran görüntüsü | Bekliyor |
| UI-3.02 | graxpert.md | Güncel sürüm ve arayüz alanları | UI-3 | Yüksek | Resmî release ve kurulu uygulama | Bekliyor |
| DOC-3.02 | graxpert.md | Klasik/AI yöntem ve format desteği | DOC-3 | Yüksek | Resmî dokümantasyon ve release notes | Bekliyor |
| DATA-3.02 | graxpert.md | Floating-point round-trip ve DBE kıyası | DATA-3 | Yüksek | FITS/XISF/TIFF kontrollü test | Bekliyor |
| IMG-3.02 | graxpert.md | Arayüz, model, corrected image ve DBE kıyası | IMG-3 | Yüksek | Karşılaştırmalı ekranlar | Bekliyor |
| UI-3.03 | moonlight-gradients.md | İlgili process kontrolleri | UI-3 | Orta | 1.9.3 arayüz doğrulaması | Bekliyor |
| DOC-3.03 | moonlight-gradients.md | LocalNormalization ve correction kapsamı | DOC-3 | Yüksek | Resmî process documentation | Bekliyor |
| DATA-3.03 | moonlight-gradients.md | Ay açısı, haze, filtre ve zaman serisi | DATA-3 | Yüksek | Metadata'lı subframe seti | Bekliyor |
| IMG-3.03 | moonlight-gradients.md | Ay gradient'i ve haze karşılaştırması | IMG-3 | Yüksek | Zaman/yön açıklamalı görseller | Bekliyor |
| UI-3.04 | light-pollution-gradients.md | Model processlerinin 1.9.3 arayüzleri | UI-3 | Orta | Kurulu process ekranları | Bekliyor |
| DOC-3.04 | light-pollution-gradients.md | Color calibration ve extraction ayrımı | DOC-3 | Yüksek | Resmî process documentation | Bekliyor |
| DATA-3.04 | light-pollution-gradients.md | Broadband/narrowband ve gece farkları | DATA-3 | Yüksek | Aynı alanın çok geceli veri seti | Bekliyor |
| IMG-3.04 | light-pollution-gradients.md | Şehir, horizon ve kanal gradient'i | IMG-3 | Yüksek | Yön açıklamalı karşılaştırma | Bekliyor |
| UI-3.05 | flat-field-vs-gradient.md | ImageCalibration menü ve kontrolleri | UI-3 | Yüksek | PixInsight 1.9.3 ekranı | Bekliyor |
| DOC-3.05 | flat-field-vs-gradient.md | Flat calibration ve Division sınırları | DOC-3 | Yüksek | Resmî calibration/DBE documentation | Bekliyor |
| DATA-3.05 | flat-field-vs-gradient.md | Flat mismatch, dust, vignetting ve mosaic seam | DATA-3 | Yüksek | Raw/flat/calibrated kontrollü set | Bekliyor |
| IMG-3.05 | flat-field-vs-gradient.md | Doğru/yanlış flat ve sky gradient ayrımı | IMG-3 | Yüksek | Sensör/gökyüzü koordinat karşılaştırması | Bekliyor |

## Kaynak tablosu

| Kaynak ID | Kaynak türü | Desteklediği iddia | Birincil kaynak mı? | Durum |
| --- | --- | --- | --- | --- |
| SRC-3.01 | GraXpert resmî GitHub deposu — https://github.com/Steffenhir/GraXpert/ | Bağımsız açık kaynak proje; klasik interpolation ve AI yaklaşımı | Evet | Kullanıldı; sürüm sabitlenmedi |
| SRC-3.02 | GraXpert resmî sitesi — https://graxpert.com/ | Haricî gradient removal uygulaması | Evet | Kullanıldı |
| SRC-3.03 | GraXpert resmî dokümantasyonu — https://graxpert.com/docs/ | Sürüm ve arayüz doğrulaması için hedef kaynak | Evet | Sürüm bazlı inceleme bekliyor |
| SRC-3.04 | PixInsight geliştirici forumu — https://pixinsight.com/forum/index.php?threads/another-question-about-when-to-use-gradientcorrection.22947/ | Renkli ve mono/kanal bazlı değerlendirmenin veri bağlamına bağlılığı | Evet, geliştirici açıklaması | Kavramsal bağlam kullanıldı |
| SRC-3.05 | PixInsight geliştirici forumu — https://pixinsight.com/forum/index.php?threads/dbe-symmetries.3065/ | Vignetting'in doğru flat frame'lerle düzeltilmesi gereği | Evet, geliştirici açıklaması | Kavramsal sınır kullanıldı |
| SRC-3.06 | PixInsight geliştirici forumu — https://pixinsight.com/forum/index.php?threads/if-gradient-correction-diverges-across-your-masters-what-parameters-do-you-tweak-first-to-get-it-to-work.23888/ | GradientCorrection için resmî eğitim serisinin varlığı | Evet, geliştirici açıklaması | 1.9.3 UI kanıtı değildir |

## Dosya bazlı yayın durumu

| Dosya | Yapısal durum | Teknik durum | Görsel durum | Yayına hazırlık |
| --- | --- | --- | --- | --- |
| gradient-correction.md | Hazır | 1.9.3 UI ve DOC bekliyor | Arayüz/model eksik | Teknik doğrulama bekliyor |
| graxpert.md | Hazır | Sürüm, format ve round-trip testi bekliyor | Dört karşılaştırma eksik | Teknik doğrulama bekliyor |
| moonlight-gradients.md | Hazır | DATA doğrulaması bekliyor | Ay ve haze örnekleri eksik | Gerçek veri bekliyor |
| light-pollution-gradients.md | Hazır | DOC ve DATA doğrulaması bekliyor | Şehir/horizon örneği eksik | Gerçek veri bekliyor |
| flat-field-vs-gradient.md | Hazır | DOC ve DATA doğrulaması bekliyor | Flat/dust/vignetting örnekleri eksik | Gerçek veri bekliyor |

## Yayın kararı

Sprint 2.3 sayfaları yapısal olarak teknik incelemeye hazırdır; PixInsight 1.9.3 `GradientCorrection` doğrulaması, GraXpert sürüm/arayüz testi, gerçek broadband/narrowband veri testleri ve planlanan görseller tamamlanmadan “tam teknik doğrulandı” veya nihai yayına hazır olarak işaretlenmemelidir.

---

# Sprint 2.4 Teknik Review Özeti

## Yapısal durum

Beş yeni içerik sayfası gerçek veri üretilmiş izlenimi vermeden iş akışı, test prosedürü ve kanıt planı sunuyor. M31 ve NGC 6888 için sekizer test, başlangıçta “Gerçek veri bekliyor” durumundadır. Hata kütüphanesi 30 karttan, Quick Reference bağımsız yazdırılabilir kontrol sayfasından oluşur.

## Doğrulama matrisi

| ID | Dosya | Konu | Kategori | Öncelik | Doğrulama yöntemi | Durum |
| --- | --- | --- | --- | --- | --- | --- |
| UI-4.01 | real-workflows.md | Araç ekranları ve model output | UI-4 | Yüksek | PixInsight 1.9.3 ve GraXpert ekranları | Bekliyor |
| DOC-4.01 | real-workflows.md | Araç seçimi ve correction davranışları | DOC-4 | Yüksek | Birincil process documentation | Bekliyor |
| DATA-4.01 | real-workflows.md | Uçtan uca workflow karşılaştırması | DATA-4 | Yüksek | Açıklamalı master setleri | Bekliyor |
| IMG-4.01 | real-workflows.md | Original/Model/Corrected planı | IMG-4 | Yüksek | Eş gösterimli ekranlar | Bekliyor |
| UI-4.02 | m31-gradient-workflow.md | LRGB process ekranları | UI-4 | Orta | PixInsight 1.9.3 ekranları | Bekliyor |
| DOC-4.02 | m31-gradient-workflow.md | Kanal/birleşim sırası riskleri | DOC-4 | Yüksek | Birincil kaynak ve kontrollü test | Bekliyor |
| DATA-4.02 | m31-gradient-workflow.md | Sekiz M31 testi | DATA-4 | Yüksek | Lineer LRGB master seti | Bekliyor |
| IMG-4.02 | m31-gradient-workflow.md | Sample haritası ve halo kanıtı | IMG-4 | Yüksek | Katmanlı ekran görüntüsü | Bekliyor |
| UI-4.03 | ngc6888-gradient-workflow.md | DBE/ABE narrowband ekranları | UI-4 | Yüksek | PixInsight 1.9.3 ekranları | Bekliyor |
| DOC-4.03 | ngc6888-gradient-workflow.md | Subtraction/Division ve sample davranışı | DOC-4 | Yüksek | Birincil process documentation | Bekliyor |
| DATA-4.03 | ngc6888-gradient-workflow.md | Sekiz NGC 6888 testi | DATA-4 | Yüksek | Lineer Ha/OIII master seti | Bekliyor |
| IMG-4.03 | ngc6888-gradient-workflow.md | Sample haritası ve OIII koruma | IMG-4 | Yüksek | Katmanlı ekran görüntüsü | Bekliyor |
| UI-4.04 | error-cards.md | Hata metinleri ve ilgili kontroller | UI-4 | Yüksek | 1.9.3 hata ekranları | Bekliyor |
| DOC-4.04 | error-cards.md | Kartlardaki neden/eylem ilişkileri | DOC-4 | Yüksek | Birincil dokümantasyon | Bekliyor |
| DATA-4.04 | error-cards.md | Otuz hata kartı yeniden üretimi | DATA-4 | Yüksek | Kontrollü hata veri setleri | Bekliyor |
| IMG-4.04 | error-cards.md | Hata atlası | IMG-4 | Yüksek | Belirti/model/correction ekranları | Bekliyor |
| UI-4.05 | gradient-quick-reference.md | Araç adları ve 1.9.3 karşılığı | UI-4 | Orta | Kurulu arayüz kontrolü | Bekliyor |
| DOC-4.05 | gradient-quick-reference.md | Kısa karar tabloları | DOC-4 | Yüksek | Önceki DOC-1–DOC-4 kayıtları | Bekliyor |
| DATA-4.05 | gradient-quick-reference.md | Kontrol listesinin saha testi | DATA-4 | Orta | M31/NGC 6888 uygulaması | Bekliyor |
| IMG-4.05 | gradient-quick-reference.md | A4 render ve okunabilirlik | IMG-4 | Orta | PDF/print preview | Bekliyor |

## Gerçek veri test envanteri

| Test ID | Target | Kanal | Araç | Kanıtlanacak konu | Gereken dosyalar | Durum |
| --- | --- | --- | --- | --- | --- | --- |
| M31-L-01 | M31 | L | Karşılaştırmalı model | L gradient ve halo | Original/Model/Corrected | Gerçek veri bekliyor |
| M31-R-01 | M31 | R | Kanal modeli | Red background ve disk | Original/Model/Corrected | Gerçek veri bekliyor |
| M31-G-01 | M31 | G | Kanal modeli | Green background ve disk | Original/Model/Corrected | Gerçek veri bekliyor |
| M31-B-01 | M31 | B | Kanal modeli | Blue gradient/reflection | Original/Model/Corrected | Gerçek veri bekliyor |
| M31-LRGB-01 | M31 | LRGB | Sıra karşılaştırması | Kanal dengesi | İki workflow çıktısı | Gerçek veri bekliyor |
| M31-HALO-01 | M31 | L/LRGB | Signal preservation | Outer halo | Original/fark/profile | Gerçek veri bekliyor |
| M31-FLAT-01 | M31 | Raw/flat | Calibration tanısı | Flat ile halo ayrımı | Raw/Flat/Calibrated | Gerçek veri bekliyor |
| M31-MODEL-01 | M31 | LRGB | Model denetimi | Spiral/disk contamination | Model atlası | Gerçek veri bekliyor |
| N6888-HA-01 | NGC 6888 | Ha | Kanal modeli | Diffuse Ha | Original/Model/Corrected | Gerçek veri bekliyor |
| N6888-OIII-01 | NGC 6888 | OIII | Kanal modeli | Zayıf dış kabuk | Original/Model/Corrected | Gerçek veri bekliyor |
| N6888-SAMPLE-01 | NGC 6888 | Ha/OIII | DBE sample | Filament contamination | Sample haritaları | Gerçek veri bekliyor |
| N6888-MODEL-01 | NGC 6888 | Ha/OIII | Model denetimi | Nebulaya benzeyen model | Model atlası | Gerçek veri bekliyor |
| N6888-SUB-01 | NGC 6888 | OIII | Subtraction | Clipping/residual | Original/Model/Corrected/statistics | Gerçek veri bekliyor |
| N6888-DIV-01 | NGC 6888 | OIII | Division | Parlaklık/noise | Original/Model/Corrected/statistics | Gerçek veri bekliyor |
| N6888-HOO-01 | NGC 6888 | HOO | Sıra karşılaştırması | Color gradient | İki workflow çıktısı | Gerçek veri bekliyor |
| N6888-OIII-SIGNAL-01 | NGC 6888 | OIII | Signal preservation | Faint OIII halo | Original/fark/profile | Gerçek veri bekliyor |

## Görsel envanteri

| Görsel ID | Dosya | Açıklama | Gerekli ekran | Önerilen dosya adı | Durum |
| --- | --- | --- | --- | --- | --- |
| IMG4-WF-01 | real-workflows.md | Uçtan uca araç karşılaştırması | Original/Model/Corrected | `gradient-real-workflow-comparison-01` | Bekliyor |
| IMG4-M31-01 | m31-gradient-workflow.md | M31 sample ve koruma katmanları | LRGB sample overlay | `m31-sample-map-01` | Bekliyor |
| IMG4-M31-02 | m31-gradient-workflow.md | Outer halo signal preservation | Model/fark/profile | `m31-lrgb-gradient-signal-preservation-01` | Bekliyor |
| IMG4-N68-01 | ngc6888-gradient-workflow.md | Ha/OIII sample katmanları | Ha/OIII overlay | `ngc6888-sample-map-01` | Bekliyor |
| IMG4-N68-02 | ngc6888-gradient-workflow.md | Faint OIII koruma testi | Original/Model/Corrected | `ngc6888-oiii-dbe-signal-preservation-01` | Bekliyor |
| IMG4-ERR-01 | error-cards.md | Otuz kart için hata atlası | Belirti/model/ölçüm | `gradient-error-card-atlas-01` | Bekliyor |
| IMG4-QR-01 | gradient-quick-reference.md | A4 yazdırma kontrolü | Print preview | `gradient-quick-reference-a4-01` | Bekliyor |

## Faz 2 yayın durumu

| Sprint | Yapısal durum | Teknik doğrulama | Veri doğrulaması | Görseller | Durum |
| --- | --- | --- | --- | --- | --- |
| Sprint 2.1 | Hazır | UI/DOC bekliyor | Bekliyor | Eksik | Teknik inceleme bekliyor |
| Sprint 2.2 | Hazır | UI/DOC bekliyor | Bekliyor | Eksik | Teknik inceleme bekliyor |
| Sprint 2.3 | Hazır | UI/DOC bekliyor | Bekliyor | Eksik | Teknik inceleme bekliyor |
| Sprint 2.4 | Hazır | UI/DOC bekliyor | 16 test bekliyor | 7 envanter kaydı bekliyor | Yapısal incelemeye hazır |

Faz 2 tamamen yayıma hazır değildir. PixInsight 1.9.3 ekran doğrulaması, birincil kaynak denetimi, 16 gerçek veri testi, görsel entegrasyonu, bağımsız Mermaid render testi ve teknik editör/yayın onayı beklemektedir.

---

# Faz 2 — Gradient Removal Kapanış İncelemesi

## Mimari, terminoloji ve çelişki sonucu

- On yedi Gradient sayfası teori → araçlar → diagnostics → çevresel/calibration ayrımı → gerçek iş akışları → hata kartları → Quick Reference sırasıyla tutarlıdır.
- `index.md` amacı tüm bölüm kapsamını yansıtacak biçimde genişletildi; navigation içindeki 17 sayfanın tamamına Quick Navigation bağlantısı vardır.
- Eski “Sprint 2.2’de ele alınacaktır” yönlendirmesi güncel Subtraction/Division bağlantısıyla değiştirildi.
- `background model`, `Background Model`, `Model Image` ve `signal preservation` yazımları kullanım bağlamına göre standardize edildi. `Background Model`/`Model Image` görünür process çıktısını, lowercase `background model` genel kavramı ifade eder.
- Hata kartı 4 düşük seviyeli residual belirsizliğine, kart 5 belirgin ve aynı geometrili correction residual'ına ayrıldı.
- ABE yalnız basit gradient aracı, DBE her zaman üstün veya GraXpert/GradientCorrection doğrulanmış üstün araç olarak sunulmuyor.
- Subtraction/Division seçimi bağlama ve model kanıtına bağlıdır; Division hiçbir sayfada doğru flat-field calibration'ın eşdeğeri değildir.
- Doğrudan teknik çelişki bulunmadı. Bir riskli kesinlik ifadesi (`mutlaka`) bağlamsal dile çevrildi.
- Gerçek M31/NGC 6888 sonucu üretilmiş izlenimi veya hata kartlarında sayısal parametre reçetesi bulunmadı.

## Konsolide doğrulama ve yayın engelleri

Eski UI-1…UI-4, DOC-1…DOC-4, DATA-1…DATA-4 ve IMG-1…IMG-4 kayıtları tarihçe olarak korunmuştur. Aşağıdaki kayıtlar aynı konuları Faz 2 düzeyinde birleştirir.

| ID | Konu | İlgili dosyalar | Öncelik | Doğrulama yöntemi | Yayın engeli mi? | Durum |
| --- | --- | --- | --- | --- | --- | --- |
| UI-GRAD-001 | ABE/DBE kontrol adları, tooltip ve menü yolları | abe.md, dbe.md, sample-placement.md, division-vs-subtraction.md | Kritik | PixInsight 1.9.3 kurulum ekranı ve process documentation | Evet | Bekliyor |
| UI-GRAD-002 | GradientCorrection varlığı, arayüzü ve parametreleri | gradient-correction.md | Kritik | PixInsight 1.9.3 gerçek kurulum | Evet | Bekliyor |
| UI-GRAD-003 | GraXpert sürümü, arayüzü ve format seçenekleri | graxpert.md | Yüksek | Güncel resmî release ve kurulu uygulama | Kısmi | Bekliyor |
| DOC-GRAD-001 | ABE/DBE sample, model ve interpolation davranışı | gradient-theory.md, abe.md, dbe.md, sample-placement.md | Kritik | Resmî process documentation | Evet | Bekliyor |
| DOC-GRAD-002 | Subtraction, Division, Normalize ve correction uygulaması | division-vs-subtraction.md, dbe.md | Kritik | Resmî process documentation ve kontrollü numeric test | Evet | Bekliyor |
| DOC-GRAD-003 | Flat-field calibration ile extraction sınırı | flat-field-vs-gradient.md, gradient-diagnostics.md | Kritik | ImageCalibration/DBE resmî dokümantasyonu | Evet | Bekliyor |
| DOC-GRAD-004 | GradientCorrection, GraXpert ve çevresel tanı kapsamı | gradient-correction.md, graxpert.md, moonlight-gradients.md, light-pollution-gradients.md | Yüksek | Birincil kaynak ve sürüm notları | Kısmi | Bekliyor |
| DATA-GRAD-001 | M31 LRGB model ve signal preservation | m31-gradient-workflow.md | Yüksek | Sekiz açıklamalı M31 testi | Kısmi | Bekliyor |
| DATA-GRAD-002 | NGC 6888 Ha/OIII model ve signal preservation | ngc6888-gradient-workflow.md | Yüksek | Sekiz açıklamalı NGC 6888 testi | Kısmi | Bekliyor |
| DATA-GRAD-003 | Araç/correction karşılaştırması | real-workflows.md, gradient-quick-reference.md | Yüksek | Aynı master üzerinde Original/Model/Corrected | Kısmi | Bekliyor |
| DATA-GRAD-004 | Calibration, çevresel ve optik artefact ayrımı | gradient-diagnostics.md, flat-field-vs-gradient.md, moonlight-gradients.md | Yüksek | Raw/flat/calibrated ve zaman/yön serileri | Kısmi | Bekliyor |
| IMG-GRAD-001 | PixInsight 1.9.3 ve GraXpert UI kanıtı | araç sayfaları | Yüksek | Sürüm görünür ekran görüntüleri | Kısmi | Bekliyor |
| IMG-GRAD-002 | M31/NGC 6888 sample ve model görselleri | iki hedef workflow'u | Yüksek | Katmanlı sample ve üçlü çıktı | Kısmi | Bekliyor |
| IMG-GRAD-003 | Hata kartı atlası | error-cards.md | Orta | Belirti/model/ölçüm ekranları | Hayır | Bekliyor |
| IMG-GRAD-004 | Quick Reference A4 görünümü | gradient-quick-reference.md | Düşük | Print preview | Hayır | Bekliyor |

### Yayın engeli özeti

| Sınıf | Sayı | Açıklama |
| --- | ---: | --- |
| Kritik yayın engeli | 5 | UI/algoritma/calibration sınırı doğrulanmadan teknik olarak doğrulandı etiketi verilemez |
| Kısmi yayın engeli | 8 | Görünür uyarıyla taslak/kısmi yayın mümkündür; sürüm, veri veya görsel kanıt bekler |
| Yayın engeli olmayan eksik | 2 | Hata atlası ve A4 print preview kalite iyileştirmesidir |

## Konsolide gerçek veri testleri

| Test ID | Target | Kanal | Girdi | Yöntem | Kanıtlanacak nokta | Başarı ölçütü | Durum |
| --- | --- | --- | --- | --- | --- | --- | --- |
| M31-L-01 | M31 | L | Lineer L master | Model karşılaştırması | L gradient ve outer halo ayrımı | Modelde disk/halo izi görülmemesi; residual ile birlikte değerlendirme | Gerçek veri bekliyor |
| M31-R-01 | M31 | R | Lineer R master | Kanal modeli | Red background ve disk ayrımı | Modelde disk yapısı olmaması; clipping gözlenmemesi | Gerçek veri bekliyor |
| M31-G-01 | M31 | G | Lineer G master | Kanal modeli | Green background ve disk ayrımı | Model/Corrected kıyasında galaxy yapısının çıkarılmaması | Gerçek veri bekliyor |
| M31-B-01 | M31 | B | Lineer B master | Kanal modeli | Blue gradient ve reflection ayrımı | Reflection/halo ile geniş gradient geometrisinin ayrılması | Gerçek veri bekliyor |
| M31-LRGB-01 | M31 | LRGB | Dört kanal ve birleşik master | Sıra karşılaştırması | Kanal bazlı/birleşik model riski | Yeni kanal uyumsuzluğu oluşturmadan residual davranışının belgelenmesi | Gerçek veri bekliyor |
| M31-HALO-01 | M31 | L/LRGB | Original ve corrected | Fark/profile | Outer halo signal preservation | Farkta halo geometrisi görülmemesi; profile değişiminin kaydı | Gerçek veri bekliyor |
| M31-FLAT-01 | M31 | Raw/flat/calibrated | Eşleşmiş frame seti | Koordinat tanısı | Flat artefact ile halo ayrımı | Sensör ve gökyüzü koordinatı davranışının ayrılması | Gerçek veri bekliyor |
| M31-MODEL-01 | M31 | LRGB | Tüm Background Model çıktıları | Model atlası | Spiral/disk contamination | Modellerde spiral, disk ve companion izi görülmemesi | Gerçek veri bekliyor |
| N6888-HA-01 | NGC 6888 | Ha | Lineer Ha master | Kanal modeli | Diffuse Ha ayrımı | Modelde filament/diffuse Ha görünmemesi | Gerçek veri bekliyor |
| N6888-OIII-01 | NGC 6888 | OIII | Lineer OIII master | Kanal modeli | Zayıf dış kabuk | Modelde dış kabuk izi görülmemesi; clipping gözlenmemesi | Gerçek veri bekliyor |
| N6888-SAMPLE-01 | NGC 6888 | Ha/OIII | Sample overlay ve master | Sample seti karşılaştırması | Filament contamination | Sample'ların işaretli gerçek sinyal bölgelerine girmemesi | Gerçek veri bekliyor |
| N6888-MODEL-01 | NGC 6888 | Ha/OIII | Background Model setleri | Model atlası | Nebulaya benzeyen model | Modelin kabuk/filament geometrisini izlememesi | Gerçek veri bekliyor |
| N6888-SUB-01 | NGC 6888 | OIII | Original/Model/Corrected | Subtraction testi | Clipping ve residual | Clipping gözlenmeden residual değişiminin ölçülmesi | Gerçek veri bekliyor |
| N6888-DIV-01 | NGC 6888 | OIII | Original/Model/Corrected | Division testi | Parlaklık ve noise davranışı | Aynı ROI'de noise/parlaklık değişiminin belgelenmesi | Gerçek veri bekliyor |
| N6888-HOO-01 | NGC 6888 | HOO | Kanal ve birleşik çıktılar | Sıra karşılaştırması | Color gradient ile kanal dengesi | Yeni color gradient oluşup oluşmadığının kanal modelleriyle ayrılması | Gerçek veri bekliyor |
| N6888-OIII-SIGNAL-01 | NGC 6888 | OIII | Original/corrected/fark/profile | Signal preservation | Faint OIII halo | Fark/profile içinde dış OIII yapısının kayıp belirtisi göstermemesi | Gerçek veri bekliyor |

On altı test gereklidir; birebir yinelenen test yoktur. Kanal testleri model davranışını, HALO/OIII-SIGNAL testleri signal preservation'ı, FLAT testi kök neden ayrımını ve MODEL testleri toplu contamination denetimini kapsar.

## Konsolide görsel envanteri

| Görsel ID | Konu | İlgili dosya | Kanıtlanacak nokta | Gerekli görüntüler | Öncelik | Durum |
| --- | --- | --- | --- | --- | --- | --- |
| VIS-GRAD-001 | ABE arayüz ve output | abe.md | 1.9.3 kontrol adları ve Model Image | UI + Original/Model | Kritik | Bekliyor |
| VIS-GRAD-002 | DBE arayüz ve samples | dbe.md, sample-placement.md | Sample controls ve model ilişkisi | UI + sample overlay + Model | Kritik | Bekliyor |
| VIS-GRAD-003 | Subtraction/Division | division-vs-subtraction.md | Clipping, parlaklık ve noise kıyası | Original/Model/iki Corrected/statistics | Yüksek | Bekliyor |
| VIS-GRAD-004 | GradientCorrection | gradient-correction.md | 1.9.3 process varlığı ve gerçek kontroller | Sürüm + UI + output | Kritik | Bekliyor |
| VIS-GRAD-005 | GraXpert round-trip | graxpert.md | UI, Background, Corrected ve metadata | GraXpert/PixInsight ekranları | Yüksek | Bekliyor |
| VIS-GRAD-006 | Ay/haze zaman serisi | moonlight-gradients.md | Yön ve zaman değişimi | Subframe serisi + metadata | Orta | Bekliyor |
| VIS-GRAD-007 | Işık kirliliği | light-pollution-gradients.md | Şehir/horizon ve kanal davranışı | Yön işaretli RGB/kanallar | Orta | Bekliyor |
| VIS-GRAD-008 | Flat/dust/vignetting | flat-field-vs-gradient.md | Sensör koordinatı ile sky gradient ayrımı | Raw/Flat/Calibrated/rotated | Kritik | Bekliyor |
| VIS-GRAD-009 | M31 sample haritası | m31-gradient-workflow.md | Disk, halo ve güvenilir background | Katmanlı sample overlay | Yüksek | Bekliyor |
| VIS-GRAD-010 | M31 halo testi | m31-gradient-workflow.md | Outer halo signal preservation | Original/Model/Corrected/fark | Yüksek | Bekliyor |
| VIS-GRAD-011 | NGC 6888 sample haritası | ngc6888-gradient-workflow.md | Ha/OIII gerçek sinyal bölgeleri | İki kanal overlay | Yüksek | Bekliyor |
| VIS-GRAD-012 | NGC 6888 OIII testi | ngc6888-gradient-workflow.md | Faint OIII signal preservation | Original/Model/Corrected/profile | Yüksek | Bekliyor |
| VIS-GRAD-013 | Hata kartı atlası | error-cards.md | Belirti ile neden ayrımı | Kart bazlı ekran seti | Orta | Bekliyor |
| VIS-GRAD-014 | Quick Reference A4 | gradient-quick-reference.md | Tek başına okunabilirlik | Print preview | Düşük | Bekliyor |

## Dosya bazlı Faz 2 yayın durumu

| Dosya | Yapısal durum | Teknik doğruluk riski | UI doğrulaması | Kaynak doğrulaması | Veri testi | Görsel durumu | Yayın kararı |
| --- | --- | --- | --- | --- | --- | --- | --- |
| index.md | Hazır | Düşük | Kısmi | Kısmi | Gerekli değil | Diyagram mevcut | Uyarıyla yayımlanabilir |
| gradient-theory.md | Hazır | Orta | Gerekli değil | Bekliyor | Kısmi | Teori diyagramı mevcut | Teknik doğrulama bekliyor |
| abe.md | Hazır | Yüksek | Bekliyor | Bekliyor | Bekliyor | UI/model eksik | Teknik doğrulama bekliyor |
| dbe.md | Hazır | Yüksek | Bekliyor | Bekliyor | Bekliyor | UI/sample eksik | Teknik doğrulama bekliyor |
| sample-placement.md | Hazır | Yüksek | Bekliyor | Bekliyor | Bekliyor | Sample setleri eksik | Teknik doğrulama bekliyor |
| division-vs-subtraction.md | Hazır | Yüksek | Bekliyor | Bekliyor | Bekliyor | Numeric kıyas eksik | Teknik doğrulama bekliyor |
| gradient-diagnostics.md | Hazır | Orta | Kısmi | Bekliyor | Bekliyor | Artefact atlası eksik | Gerçek veri bekliyor |
| gradient-correction.md | Hazır | Yüksek | Bekliyor | Bekliyor | Bekliyor | UI/output eksik | Teknik doğrulama bekliyor |
| graxpert.md | Hazır | Orta | Bekliyor | Kısmi | Bekliyor | Round-trip eksik | Uyarıyla yayımlanabilir |
| moonlight-gradients.md | Hazır | Orta | Gerekli değil | Bekliyor | Bekliyor | Zaman serisi eksik | Gerçek veri bekliyor |
| light-pollution-gradients.md | Hazır | Orta | Gerekli değil | Bekliyor | Bekliyor | Yön/kanal örneği eksik | Gerçek veri bekliyor |
| flat-field-vs-gradient.md | Hazır | Yüksek | Kısmi | Bekliyor | Bekliyor | Calibration seti eksik | Teknik doğrulama bekliyor |
| real-workflows.md | Hazır | Orta | Kısmi | Bekliyor | Bekliyor | Üçlü kıyas eksik | Gerçek veri bekliyor |
| m31-gradient-workflow.md | Hazır | Düşük | Gerekli değil | Kısmi | Sekiz test bekliyor | M31 seti eksik | Gerçek veri bekliyor |
| ngc6888-gradient-workflow.md | Hazır | Düşük | Gerekli değil | Kısmi | Sekiz test bekliyor | Ha/OIII seti eksik | Gerçek veri bekliyor |
| error-cards.md | Hazır | Orta | Kısmi | Bekliyor | Bekliyor | Hata atlası eksik | Uyarıyla yayımlanabilir |
| gradient-quick-reference.md | Hazır | Orta | Kısmi | Bekliyor | Bekliyor | A4 kontrolü eksik | Uyarıyla yayımlanabilir |

## Faz 2 genel kararı

**Faz 2 teknik doğrulama bekliyor.** İçerik ve bölüm mimarisi tamamlanmıştır; beş kritik doğrulama engeli nedeniyle genel yayına hazır değildir. Faz 3 içerik çalışması paralel başlayabilir, ancak Faz 2 UI/DOC doğrulama kayıtları kapatılmadan Gradient bölümü “teknik olarak doğrulandı” etiketi almamalıdır.

---

# Sprint 3.1 — Color Calibration Foundations Teknik Review

## Kapsam ve yayın durumu

Altı yeni temel sayfa, mevcut `SPCC`, `PCC` ve `BackgroundNeutralization` taslakları korunarak bunların önüne yerleştirildi. Bu sprint process parametre rehberi değildir. Sabit RGB/background değeri, estetik renk garantisi veya gerçek test sonucu verilmedi.

## Doğrulama matrisi

| ID | Dosya | Konu | Kategori | Öncelik | Doğrulama yöntemi | Durum |
| --- | --- | --- | --- | --- | --- | --- |
| UI-5.01 | color-theory.md | Linear/nonlinear ve STF örnek ekranları | UI-5 | Orta | PixInsight 1.9.3 ekranı | Bekliyor |
| UI-5.02 | white-balance.md | Kamera/OSC ve channel workflow karşılığı | UI-5 | Orta | 1.9.3 ve acquisition metadata | Bekliyor |
| UI-5.03 | photometric-calibration-theory.md | Solve, catalog ve response alanları | UI-5 | Yüksek | PixInsight 1.9.3 process ekranı/logu | Bekliyor |
| UI-5.04 | background-neutrality.md | Preview ve neutrality process alanları | UI-5 | Yüksek | 1.9.3 ekranı ve output testi | Bekliyor |
| UI-5.05 | color-calibration-diagnostics.md | SPCC/PCC hata ve log ekranları | UI-5 | Yüksek | 1.9.3 gerçek hata ekranları | Bekliyor |
| DOC-5.01 | photometric-calibration-theory.md | Response estimation yaklaşımı | DOC-5 | Kritik | Resmî process documentation | Bekliyor |
| DOC-5.02 | photometric-calibration-theory.md | Stellar color index kullanımı | DOC-5 | Yüksek | Resmî documentation/catalog tanımı | Bekliyor |
| DOC-5.03 | white-balance.md | Channel scaling mantığı | DOC-5 | Yüksek | Resmî color calibration documentation | Bekliyor |
| DOC-5.04 | background-neutrality.md | Background neutrality statistic yaklaşımı | DOC-5 | Kritik | Resmî process documentation | Bekliyor |
| DOC-5.05 | color-theory.md | Atmospheric extinction ve instrument response | DOC-5 | Yüksek | Akademik/birincil teknik kaynak | Bekliyor |
| DOC-5.06 | index.md | PixInsight color calibration için linear image gereksinimi | DOC-5 | Kritik | PixInsight 1.9.3 process documentation | Bekliyor |
| DOC-5.07 | photometric-calibration-theory.md | Plate solving metadata gereksinimleri | DOC-5 | Kritik | 1.9.3 documentation ve solve testi | Bekliyor |
| DOC-5.08 | photometric-calibration-theory.md | Narrowband photometric calibration sınırı | DOC-5 | Yüksek | Resmî passband/model documentation | Bekliyor |
| DATA-5.01 | color-theory.md | Mono LRGB ve OSC response zinciri | DATA-5 | Yüksek | Açıklamalı iki acquisition seti | Bekliyor |
| DATA-5.02 | white-balance.md | Kamera/star/background/photometric referans kıyası | DATA-5 | Yüksek | Aynı broadband master A/B testi | Bekliyor |
| DATA-5.03 | photometric-calibration-theory.md | Solve, catalog match ve response | DATA-5 | Yüksek | Broadband star field + logs | Bekliyor |
| DATA-5.04 | background-neutrality.md | Galaxy halo ve diffuse nebula reference | DATA-5 | Yüksek | İki gerçek target ve Preview statistics | Bekliyor |
| DATA-5.05 | color-calibration-diagnostics.md | Belirti matrisi yeniden üretimi | DATA-5 | Orta | LRGB/OSC/narrowband tanı setleri | Bekliyor |
| IMG-5.01 | color-theory.md | Spectrum, mono, OSC ve linear/nonlinear | IMG-5 | Yüksek | Dört açıklamalı görsel | Bekliyor |
| IMG-5.02 | white-balance.md | Referans yaklaşımı özeti | IMG-5 | Düşük | Karşılaştırmalı workflow görseli | Opsiyonel |
| IMG-5.03 | photometric-calibration-theory.md | Zincir, catalog match ve solve tanısı | IMG-5 | Yüksek | Üç açıklamalı görsel | Bekliyor |
| IMG-5.04 | background-neutrality.md | Reference, halo, nebula ve black/neutral | IMG-5 | Yüksek | Dört açıklamalı görsel | Bekliyor |
| IMG-5.05 | color-calibration-diagnostics.md | Clipping ve color cast | IMG-5 | Yüksek | İki açıklamalı görsel | Bekliyor |

## Kritik doğrulanamayan iddialar

- PixInsight 1.9.3 color calibration processlerinin exact lineer image gereksinimi.
- Photometric response estimation, star rejection ve channel scaling algoritmaları.
- Plate solving için gerekli/zorunlu metadata alanları ve fallback davranışı.
- Background neutrality için kullanılan exact statistics ve reference uygulaması.
- Narrowband passband'lerinin PixInsight photometric modelindeki exact kapsamı.

## Dosya bazlı yayın durumu

| Dosya | Yapısal durum | Teknik durum | Veri/görsel | Yayın hazırlığı |
| --- | --- | --- | --- | --- |
| index.md | Hazır | DOC-5 bekliyor | Navigation hazır | Uyarıyla yayımlanabilir |
| color-theory.md | Hazır | DOC-5 bekliyor | Mono/OSC ve dört görsel bekliyor | Teknik doğrulama bekliyor |
| white-balance.md | Hazır | DOC/DATA bekliyor | Gerçek kıyas bekliyor | Teknik doğrulama bekliyor |
| photometric-calibration-theory.md | Hazır | UI/DOC kritik kayıtları bekliyor | Solve/catalog görselleri bekliyor | Teknik doğrulama bekliyor |
| background-neutrality.md | Hazır | UI/DOC kritik kayıtları bekliyor | Reference testleri bekliyor | Teknik doğrulama bekliyor |
| color-calibration-diagnostics.md | Hazır | UI/DOC bekliyor | Tanı setleri bekliyor | Gerçek veri bekliyor |

**Sprint 3.1 yapısal olarak teknik incelemeye hazırdır; birincil kaynak, PixInsight 1.9.3 UI, gerçek broadband/LRGB/OSC veri ve görsel doğrulaması tamamlanmadan genel teknik yayına hazır değildir.**

## Sprint 3.1 Revizyon 1 — Teknik kesinlik sonucu

Linear-stage ifadeleri genel astrophotography workflow önerisi olarak yeniden yazıldı; exact gereksinimler dört PixInsight processi için ayrı kaydedildi. Photometric zincir astrometric tanım, source detection, catalog matching, star sample değerlendirmesi, response tahmini, color correction ve doğrulama düzeyinde tutuldu. Algoritmik iç matematik veya rejection kuralı doğrulanmış gibi anlatılmadı.

Metadata; sky position/WCS, image scale ve observation/system context olarak üçe ayrıldı. Geçerli astrometric solution'ın bazı acquisition alanlarından daha doğrudan olabileceği, yanlış metadata'nın eksik metadata'dan daha yanıltıcı olabileceği ve fallback davranışının process/sürüm bağımlı olduğu belirtildi.

`background neutrality` genel kavramı ile `BackgroundNeutralization` processi ayrıldı. Channel medians/robust statistics genel candidate karşılaştırma yöntemleri olarak tutuldu; process algoritması sayılmadı. Broadband stellar color calibration; narrowband normalization, palette mapping, star color reconstruction ve artistic mixing'den ayrıldı.

### Revize konsolide doğrulama tablosu

Eski UI-5/DOC-5/DATA-5/IMG-5 kimlikleri korunmuştur. Aşağıdaki kayıtlar Revizyon 1'in process-bazlı ayrımlarını konsolide eder.

| ID | Ana konu | İlgili dosyalar | Kategori | Öncelik | Yayın engeli | Doğrulama yöntemi | Durum |
| --- | --- | --- | --- | --- | --- | --- | --- |
| UI-5-R1.01 | SPCC exact linear-image requirement | index.md, color-calibration-diagnostics.md, spcc.md | UI-5 | Kritik | Kritik | PixInsight 1.9.3 UI ve process documentation | Bekliyor |
| UI-5-R1.02 | PCC exact linear-image requirement | index.md, color-calibration-diagnostics.md, pcc.md | UI-5 | Kritik | Kritik | PixInsight 1.9.3 UI ve process documentation | Bekliyor |
| UI-5-R1.03 | ColorCalibration exact linear-image requirement | index.md, white-balance.md | UI-5 | Kritik | Kritik | PixInsight 1.9.3 UI ve process documentation | Bekliyor |
| UI-5-R1.04 | BackgroundNeutralization exact linear-image requirement | index.md, background-neutrality.md | UI-5 | Kritik | Kritik | PixInsight 1.9.3 UI ve process documentation | Bekliyor |
| DOC-5-R1.01 | Photometric response estimation | photometric-calibration-theory.md | DOC-5 | Kritik | Kritik | Birincil process documentation | Bekliyor |
| DOC-5-R1.02 | Source detection, selection ve rejection behavior | photometric-calibration-theory.md | DOC-5 | Kritik | Kritik | Birincil process documentation ve log | Bekliyor |
| DOC-5-R1.03 | Metadata requirements ve fallback | photometric-calibration-theory.md, color-calibration-diagnostics.md | DOC-5 | Kritik | Kritik | 1.9.3 process documentation ve kontrollü solve | Bekliyor |
| DOC-5-R1.04 | Background reference statistics | background-neutrality.md | DOC-5 | Kritik | Kritik | BackgroundNeutralization documentation | Bekliyor |
| DOC-5-R1.05 | Narrowband photometric scope | index.md, white-balance.md, photometric-calibration-theory.md | DOC-5 | Yüksek | Kısmi | SPCC 1.9.3 UI ve passband/model documentation | Bekliyor |
| DOC-5-R1.06 | Color index interpretation | photometric-calibration-theory.md | DOC-5 | Yüksek | Kısmi | Catalog tanımı ve birincil process documentation | Bekliyor |

### Revizyon yayın engeli özeti

| Sınıf | Sayı | Durum |
| --- | ---: | --- |
| Kritik | 8 | Process-bazlı UI ve algoritma doğrulaması bekliyor |
| Kısmi | 2 | Narrowband kapsamı ve color index yorumu görünür uyarıyla kullanılabilir |
| Hayır | 0 | Bu konsolide tablo yalnız teknik doğrulama açıklarını içerir |

### Revizyon değişiklik sayımları

| Değişiklik | Sayı |
| --- | ---: |
| Azaltılan uzun tekrar | 3 |
| Değiştirilen linear-image kesinlik/workflow ifadesi | 5 |
| Bağlamlandırılan “doğru renk” ifadesi | 2 |
| Düzeltilen background neutrality/gradient veya process karışıklığı | 3 |
| Düzeltilen metadata zorunluluğu ifadesi | 4 |
| Yumuşatılan algoritmik kesinlik | 6 |
| Narrowband kapsam düzeltmesi | 6 |
| Diagnostics satırı güncellemesi | 26 |

**Revizyon 1 sonrası karar:** Sprint 3.1 yapısal ve kavramsal olarak teknik incelemeye hazırdır. Sekiz kritik process/UI/DOC kaydı kapanmadan genel teknik yayına hazır değildir.

---

# Sprint 3.2 — SpectrophotometricColorCalibration Teknik Review

## Doğrulama matrisi

| ID | Dosya | Konu | Kategori | Öncelik | Yayın engeli | Doğrulama yöntemi | Durum |
| --- | --- | --- | --- | --- | --- | --- | --- |
| UI-6.01 | spcc.md | SPCC 1.9.3 menu location | UI-6 | Kritik | Kritik | Gerçek 1.9.3 ekranı | Bekliyor |
| UI-6.02 | spcc.md | Exact linear/nonlinear behavior | UI-6 | Kritik | Kritik | UI + process documentation | Bekliyor |
| UI-6.03 | spcc.md | Catalog ve white reference options | UI-6 | Kritik | Kritik | UI + clean instance | Bekliyor |
| UI-6.04 | spcc.md | Sensor database behavior | UI-6 | Kritik | Kritik | UI + controlled lookup | Bekliyor |
| UI-6.05 | spcc.md | Filter database behavior | UI-6 | Kritik | Kritik | UI + controlled lookup | Bekliyor |
| UI-6.06 | spcc.md | Background neutralization controls | UI-6 | Yüksek | Kısmi | UI + output test | Bekliyor |
| UI-6.07 | spcc-narrowband.md | Narrowband controls/models | UI-6 | Kritik | Kritik | UI + primary source | Bekliyor |
| UI-6.08 | spcc.md | Star rejection controls | UI-6 | Yüksek | Kısmi | UI + log | Bekliyor |
| DOC-6.01 | spcc.md | Response estimation model | DOC-6 | Kritik | Kritik | Primary process documentation | Bekliyor |
| DOC-6.02 | spcc-troubleshooting.md | Star detection/rejection behavior | DOC-6 | Kritik | Kritik | Documentation + controlled log | Bekliyor |
| DOC-6.03 | spcc-prerequisites.md | Metadata fallback behavior | DOC-6 | Kritik | Kritik | Documentation + solve tests | Bekliyor |
| DOC-6.04 | spcc.md | Log and output behavior | DOC-6 | Yüksek | Kısmi | Full logs + output test | Bekliyor |
| DATA-6.01 | spcc-broadband.md | Sekiz broadband scenario | DATA-6 | Yüksek | Kısmi | Controlled datasets | Bekliyor |
| DATA-6.02 | spcc-narrowband.md | Sekiz narrowband scenario | DATA-6 | Yüksek | Kısmi | Controlled datasets | Bekliyor |
| IMG-6.01 | spcc.md | Main UI ve control groups | IMG-6 | Yüksek | Kısmi | 1.9.3 screenshots | Bekliyor |
| IMG-6.02 | spcc-prerequisites.md | WCS ve profiles | IMG-6 | Yüksek | Kısmi | UI/metadata screens | Bekliyor |
| IMG-6.03 | spcc-broadband.md | LRGB/OSC/M31 outputs | IMG-6 | Yüksek | Kısmi | Before/after/log | Bekliyor |
| IMG-6.04 | spcc-narrowband.md | Narrowband scope | IMG-6 | Yüksek | Kısmi | UI/scenario comparison | Bekliyor |
| IMG-6.05 | spcc-troubleshooting.md | Error/log atlas | IMG-6 | Yüksek | Kısmi | Real error screens | Bekliyor |

## Gerçek veri test envanteri

| Test ID | Veri türü | Target | Senaryo | Kanıtlanacak konu | Gereken çıktılar | Durum |
| --- | --- | --- | --- | --- | --- | --- |
| SPCC-BB-OSC-01 | Broadband | OSC field | Controlled SPCC test | CFA/profile response | Original/Output/Log/Statistics | Gerçek veri bekliyor |
| SPCC-BB-LRGB-01 | Broadband | Mono LRGB | Controlled SPCC test | Filter/channel response | Original/Output/Log/Statistics | Gerçek veri bekliyor |
| SPCC-BB-M31-01 | Broadband | M31 | Controlled SPCC test | Galaxy color preservation | Original/Output/Log/Statistics | Gerçek veri bekliyor |
| SPCC-BB-STARFIELD-01 | Broadband | Star field | Controlled SPCC test | Star sample diversity | Original/Output/Log/Statistics | Gerçek veri bekliyor |
| SPCC-BB-GRADIENT-01 | Broadband | Gradient set | Controlled SPCC test | Gradient/SPCC ayrımı | Original/Output/Log/Statistics | Gerçek veri bekliyor |
| SPCC-BB-SATURATION-01 | Broadband | Saturated field | Controlled SPCC test | Saturation/rejection | Original/Output/Log/Statistics | Gerçek veri bekliyor |
| SPCC-BB-METADATA-01 | Broadband | WCS variants | Controlled SPCC test | Metadata fallback | Original/Output/Log/Statistics | Gerçek veri bekliyor |
| SPCC-BB-REFERENCE-01 | Broadband | Reference variants | Controlled SPCC test | Reference sensitivity | Original/Output/Log/Statistics | Gerçek veri bekliyor |
| SPCC-NB-HA-01 | Narrowband | Ha target | Controlled scope test | Ha mode/profile scope | Original/Output/Log/Channels | Gerçek veri bekliyor |
| SPCC-NB-OIII-01 | Narrowband | OIII target | Controlled scope test | OIII faint signal | Original/Output/Log/Channels | Gerçek veri bekliyor |
| SPCC-NB-SHO-01 | Narrowband | SHO nebula | Controlled scope test | SHO palette ayrımı | Original/Output/Log/Channels | Gerçek veri bekliyor |
| SPCC-NB-HOO-01 | Narrowband | HOO nebula | Controlled scope test | HOO mapping ayrımı | Original/Output/Log/Channels | Gerçek veri bekliyor |
| SPCC-NB-RGBSTARS-01 | Narrowband | RGB stars + NB | Controlled scope test | Star reconstruction | Original/Output/Log/Channels | Gerçek veri bekliyor |
| SPCC-NB-STARLESS-01 | Narrowband | Starless nebula | Controlled scope test | Starless behavior | Original/Output/Log/Channels | Gerçek veri bekliyor |
| SPCC-NB-HA-RGB-01 | Narrowband | HaRGB galaxy | Controlled scope test | Galaxy blend preservation | Original/Output/Log/Channels | Gerçek veri bekliyor |
| SPCC-NB-DUALBAND-01 | Narrowband | Dual-band OSC | Controlled scope test | CFA/profile scope | Original/Output/Log/Channels | Gerçek veri bekliyor |

## Görsel envanteri

On sekiz açıklamalı placeholder beş SPCC sayfasına dağıtıldı: main UI; astrometry/WCS; catalog/reference; sensor profile; filter profile; white reference; background controls; narrowband controls; success/error logs; catalog match; saturated rejection; mono LRGB; OSC; M31 preservation; narrowband scope; starless error; metadata/WCS. Her kayıt 1.9.3 sürümü, target/data, ekran/output, kanıt noktası ve dosya adı içerir.

## Dosya yayın durumu

| Dosya | Yapısal durum | UI durumu | Kaynak durumu | Veri durumu | Görsel durumu | Yayına hazırlık |
| --- | --- | --- | --- | --- | --- | --- |
| spcc.md | Hazır | Bekliyor | Bekliyor | Bekliyor | Bekliyor | Teknik doğrulama bekliyor |
| spcc-prerequisites.md | Hazır | Bekliyor | Bekliyor | Bekliyor | Bekliyor | Teknik doğrulama bekliyor |
| spcc-broadband.md | Hazır | Kısmi | Bekliyor | 8 test bekliyor | Bekliyor | Gerçek veri bekliyor |
| spcc-narrowband.md | Hazır | Bekliyor | Bekliyor | 8 test bekliyor | Bekliyor | Teknik doğrulama bekliyor |
| spcc-troubleshooting.md | Hazır | Bekliyor | Bekliyor | 30 kart testi bekliyor | Bekliyor | Teknik doğrulama bekliyor |

**Sprint 3.2 yapısal olarak teknik incelemeye hazırdır. SPCC 1.9.3 UI, response/rejection/fallback/log davranışı, 16 gerçek veri testi ve görseller doğrulanmadan genel teknik yayına hazır değildir.**

## Sprint 3.2 Revizyon 1 — Canonical dizin ve legacy envanteri

Canonical Color Calibration dizini `docs/05-color-calibration/` olarak belirlenmiştir. `mkdocs.yml` bölüm girişi ve SPCC sayfaları için yalnız bu ağacı kullanır. Eski Türkçe dizin aktif ikinci bir index/SPCC ağacı değildir.

| Eski dosya | Yeni karşılığı | İçerik durumu | Gelen bağlantı var mı? | Önerilen işlem |
| --- | --- | --- | --- | --- |
| `05-renk-kalibrasyonu/index.md` | `05-color-calibration/index.md` | Tam karşılığı mevcut; eski taslak | Repository içi bağlantı canonical'a taşındı; geçmiş URL olası | Canonical dosyaya yönlendirilmelidir |
| `05-renk-kalibrasyonu/spcc.md` | `05-color-calibration/spcc.md` | Tam karşılığı mevcut; eski taslak | Repository içi bağlantı canonical'a taşındı; geçmiş URL olası | Canonical dosyaya yönlendirilmelidir |
| `05-renk-kalibrasyonu/pcc.md` | `05-color-calibration/pcc.md` | Tam karşılığı mevcut; yönlendirme | Hayır; yalnız geçmiş URL olası | Canonical dosyaya yönlendirilmiştir |
| `05-renk-kalibrasyonu/background-neutralization.md` | `05-color-calibration/background-neutralization-process.md` | Tam karşılığı mevcut; yönlendirme | Hayır; yalnız geçmiş URL olası | Canonical dosyaya yönlendirilmiştir |

### Uygulanan işlem

- Eski `index.md` ve `spcc.md`, geçmiş URL'leri koruyan kısa yönlendirme sayfalarına dönüştürüldü; silinmedi.
- Eski PCC ve BackgroundNeutralization taslakları Sprint 3.3'te canonical rehberlere taşındı; legacy sayfalar yönlendirmeye dönüştürüldü.
- Yeni temel sayfalardaki eski SPCC bağlantıları `05-color-calibration/spcc.md` hedefine güncellendi.
- PCC ve BackgroundNeutralization navigation hedefleri canonical sayfalardır; teorik `background-neutrality.md`, `BackgroundNeutralization` process rehberinin eşdeğeri sayılmaz.
- Beş SPCC sayfasında uzun birebir cümle tekrarı bulunmadı. Prerequisite, broadband, narrowband ve troubleshooting kapsamları ana referansa bağlantılı fakat ayrı sorumluluklardadır.

### Canonical yayın kararı

SPCC için tek canonical sayfa `docs/05-color-calibration/spcc.md`, Color Calibration bölüm girişi için tek canonical sayfa `docs/05-color-calibration/index.md` dosyasıdır. Legacy yönlendirmeler navigation'a eklenmez. Sprint 3.2'nin UI/DOC/DATA/IMG yayın engelleri önceki tabloda geçerliliğini korur.

### Revizyon 1 UI doğrulama özeti

Eski UI-6 kayıtları silinmemiştir. Aşağıdaki kayıtlar on iki UI konusunu ayrı ayrı konsolide eder.

| ID | Konu | İlgili dosyalar | Kategori | Öncelik | Yayın engeli | Doğrulama yöntemi | Durum |
| --- | --- | --- | --- | --- | --- | --- | --- |
| UI-6-R1.01 | Menu location | spcc.md | UI-6 | Kritik | Kritik | 1.9.3 menu screenshot | Bekliyor |
| UI-6-R1.02 | Process section names | spcc.md | UI-6 | Kritik | Kritik | Full 1.9.3 UI capture | Bekliyor |
| UI-6-R1.03 | Catalog controls | spcc.md | UI-6 | Kritik | Kritik | UI, documentation ve query log | Bekliyor |
| UI-6-R1.04 | White reference controls | spcc.md | UI-6 | Kritik | Kritik | UI ve controlled output test | Bekliyor |
| UI-6-R1.05 | Sensor profile controls | spcc.md, prerequisites | UI-6 | Kritik | Kritik | UI ve database lookup test | Bekliyor |
| UI-6-R1.06 | Filter profile controls | spcc.md, prerequisites | UI-6 | Kritik | Kritik | UI ve database lookup test | Bekliyor |
| UI-6-R1.07 | Background controls | spcc.md, background-neutrality.md | UI-6 | Yüksek | Kritik | UI ve reference/output test | Bekliyor |
| UI-6-R1.08 | Narrowband controls | spcc-narrowband.md | UI-6 | Kritik | Kritik | UI ve birincil kaynak | Bekliyor |
| UI-6-R1.09 | Star sample/rejection controls | spcc.md, troubleshooting | UI-6 | Kritik | Kritik | UI ve rejection log | Bekliyor |
| UI-6-R1.10 | Log and output controls | spcc.md, troubleshooting | UI-6 | Yüksek | Kritik | UI ve tam success/error logları | Bekliyor |
| UI-6-R1.11 | Default values | spcc.md | UI-6 | Kritik | Kritik | Temiz 1.9.3 process instance | Bekliyor |
| UI-6-R1.12 | Exact linear/nonlinear behavior | spcc.md, prerequisites | UI-6 | Kritik | Kritik | Documentation ve controlled input test | Bekliyor |

Bu kayıtlar kritiktir; yanlış UI, default, input kabulü veya mode bilgisi kullanıcıyı yanlış process yapılandırmasına yönlendirebilir. Ek before/after görseli ve bağımsız Mermaid render testi tek başına kritik değildir.

### Revizyon 1 konsolide gerçek veri testleri

#### Broadband

| Test ID | Veri türü | Girdi durumu | SPCC senaryosu | Karşılaştırılacak çıktılar | Gözlenecek kanıt | Durum |
| --- | --- | --- | --- | --- | --- | --- |
| SPCC-BB-OSC-01 | Broadband OSC | Linear, debayered, stars included, unclipped; valid WCS; CFA/profile recorded | OSC response | Original, output, log, statistics, metadata | Star diversity, clipping, cast ve metadata behavior | Gerçek veri bekliyor |
| SPCC-BB-LRGB-01 | Mono RGB | Linear aligned RGB before L integration; valid WCS/profiles | Mono RGB response | Original, output, log, channel statistics | Channel relationship without Luminance assumption | Gerçek veri bekliyor |
| SPCC-BB-M31-01 | M31 RGB | Linear RGB before L integration; valid WCS/profiles | Galaxy field | Original, output, log, core/disk/halo regions | Galaxy structures ve background behavior | Gerçek veri bekliyor |
| SPCC-BB-STARFIELD-01 | Star field | Linear unclipped star-rich image; valid WCS/profiles | Star samples | Original, output, match/rejection log, cutouts | Sample population ve color diversity | Gerçek veri bekliyor |
| SPCC-BB-GRADIENT-01 | Gradient pair | Linear matched images with/without residual gradient | Scope A-B | Inputs, outputs, logs, background maps | SPCC ile spatial correction ayrımı | Gerçek veri bekliyor |
| SPCC-BB-SATURATION-01 | Saturation pair | Linear saturated/unclipped variants; same WCS/profiles | Rejection A-B | Inputs, outputs, logs, readouts | Saturation/rejection relationship | Gerçek veri bekliyor |
| SPCC-BB-METADATA-01 | WCS variants | Linear same image with valid/missing/stale WCS | Fallback | Inputs, solve/query logs, outputs | Acceptance/fallback/error behavior | Gerçek veri bekliyor |
| SPCC-BB-REFERENCE-01 | Reference variants | Linear same image; fixed WCS/profiles; references recorded | Reference sensitivity | Original, outputs, logs, statistics | White/background sensitivity without winner claim | Gerçek veri bekliyor |

#### Narrowband

| Test ID | Veri türü | Girdi durumu | SPCC senaryosu | Karşılaştırılacak çıktılar | Gözlenecek kanıt | Durum |
| --- | --- | --- | --- | --- | --- | --- |
| SPCC-NB-HA-01 | Ha mono | Linear Ha with stars; WCS/filter context recorded | Ha scope | Original, output/error, log | Actual mode/input behavior | Gerçek veri bekliyor |
| SPCC-NB-OIII-01 | OIII mono | Linear faint OIII with stars; WCS/profile recorded | OIII scope | Original, output/error, log, signal regions | Faint signal ve sample behavior | Gerçek veri bekliyor |
| SPCC-NB-SHO-01 | SHO | Linear combination; mapping history/WCS/profiles recorded | SHO scope | Channels, combination, output/error, log | Calibration ile palette mapping ayrımı | Gerçek veri bekliyor |
| SPCC-NB-HOO-01 | HOO | Linear combination; mapping history/WCS/profiles recorded | HOO scope | Ha/OIII, combination, output/error, log | Red dominance, gradient ve scope ayrımı | Gerçek veri bekliyor |
| SPCC-NB-RGBSTARS-01 | RGB stars + NB | Linear separated layers; WCS/profiles recorded | Layered workflow | Layers, blend, output/error, logs | Star calibration ile nebula palette ayrımı | Gerçek veri bekliyor |
| SPCC-NB-STARLESS-01 | Starless NB | Linear starless + stars-included reference; WCS/profile recorded | Starless behavior | Inputs, output/error, full logs | Actual star-sample requirement | Gerçek veri bekliyor |
| SPCC-NB-HA-RGB-01 | HaRGB galaxy | Linear RGB/Ha before blend; WCS/profiles recorded | HaRGB blend | RGB, Ha, blends, outputs, logs | Broadband color ile Ha contribution ayrımı | Gerçek veri bekliyor |
| SPCC-NB-DUALBAND-01 | Dual-band OSC | Linear debayered data; WCS/CFA/filter context recorded | Dual-band scope | Original, output/error, log, statistics | Standard OSC broadband'den farklı profile behavior | Gerçek veri bekliyor |

Her test input state, astrometry, profile context, outputs ve gözlenebilir kanıtı tanımlar; sonuç iddiası içermez. Broadband ve narrowband testleri ayrı kalır.

### Revizyon 1 dosya görevleri

- `spcc.md`: genel teori, ana zincir, yüksek seviyeli UI grupları, SPCC/PCC karşılaştırması ve yönlendirme.
- `spcc-prerequisites.md`: image state, WCS/metadata, profiles ve reference suitability.
- `spcc-broadband.md`: OSC/mono RGB, Luminance sınırı, broadband tests ve output validation.
- `spcc-narrowband.md`: SHO/HOO/mixed/starless/dual-band scope ve tests.
- `spcc-troubleshooting.md`: yalnız kart bazlı symptom, root cause, first check, intervention, validation ve links.

## Sprint 3.3 — PCC ve BackgroundNeutralization incelemesi

### Canonical yayın kararı

PCC için tek canonical sayfa `docs/05-color-calibration/pcc.md`, bağımsız BackgroundNeutralization processi için tek canonical sayfa `docs/05-color-calibration/background-neutralization-process.md` dosyasıdır. `docs/05-renk-kalibrasyonu/` altındaki karşılıklar yalnız geçmiş URL yönlendirmesidir ve navigation dışında tutulur. Background neutrality kavram sayfası process rehberinin ikinci kopyası değildir.

### Ana doğrulama matrisi

| ID | Dosya | Konu | Kategori | Öncelik | Yayın engeli | Doğrulama yöntemi | Durum |
| --- | --- | --- | --- | --- | --- | --- | --- |
| UI-7.PCC.01 | pcc.md | process menu location | UI-7 | Kritik | Kritik | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.PCC.02 | pcc.md | section names | UI-7 | Kritik | Kritik | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.PCC.03 | pcc.md | exact linear/nonlinear behavior | UI-7 | Kritik | Kritik | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.PCC.04 | pcc.md | catalog options | UI-7 | Yüksek | Kısmi | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.PCC.05 | pcc.md | white reference controls | UI-7 | Yüksek | Kısmi | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.PCC.06 | pcc.md | background controls | UI-7 | Yüksek | Kısmi | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.PCC.07 | pcc.md | source detection | UI-7 | Yüksek | Kısmi | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.PCC.08 | pcc.md | star rejection | UI-7 | Yüksek | Kısmi | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.PCC.09 | pcc.md | metadata fallback | UI-7 | Yüksek | Kısmi | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.PCC.10 | pcc.md | default values | UI-7 | Kritik | Kritik | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.PCC.11 | pcc.md | log/output behavior | UI-7 | Yüksek | Kısmi | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.PCC.12 | pcc.md | PCC/SPCC algorithmic distinction | UI-7 | Kritik | Kritik | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.BN.01 | background-neutralization-process.md | process menu location | UI-7 | Kritik | Kritik | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.BN.02 | background-neutralization-process.md | section names | UI-7 | Kritik | Kritik | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.BN.03 | background-neutralization-process.md | reference controls | UI-7 | Yüksek | Kısmi | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.BN.04 | background-neutralization-process.md | lower/upper range behavior | UI-7 | Yüksek | Kısmi | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.BN.05 | background-neutralization-process.md | target background behavior | UI-7 | Yüksek | Kısmi | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.BN.06 | background-neutralization-process.md | statistics method | UI-7 | Kritik | Kritik | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.BN.07 | background-neutralization-process.md | clipping behavior | UI-7 | Yüksek | Kısmi | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.BN.08 | background-neutralization-process.md | exact linear/nonlinear behavior | UI-7 | Kritik | Kritik | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.BN.09 | background-neutralization-process.md | default values | UI-7 | Kritik | Kritik | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| UI-7.BN.10 | background-neutralization-process.md | log/output behavior | UI-7 | Yüksek | Kısmi | 1.9.3 UI, log ve kontrollü test | Bekliyor |
| DOC-7.01 | pcc.md | PCC/SPCC algoritmik ayrımı ve reference model | DOC-7 | Kritik | Kritik | Birincil process dokümantasyonu | Bekliyor |
| DOC-7.02 | background-neutralization-process.md | İstatistik, range ve channel dönüşümü | DOC-7 | Kritik | Kritik | Birincil process dokümantasyonu | Bekliyor |
| DATA-7.01 | pcc.md | 10 PCC gerçek veri testi | DATA-7 | Yüksek | Kısmi | Kontrollü test setleri ve loglar | Bekliyor |
| DATA-7.02 | background-neutralization-process.md | 10 BN gerçek veri testi | DATA-7 | Yüksek | Kısmi | Kontrollü test setleri ve ölçümler | Bekliyor |
| IMG-7.01 | pcc.md | 11 PCC UI/çıktı görseli | IMG-7 | Yüksek | Kısmi | 1.9.3 ekranları ve test çıktıları | Bekliyor |
| IMG-7.02 | background-neutralization-process.md | 11 BN UI/çıktı görseli | IMG-7 | Yüksek | Kısmi | 1.9.3 ekranları ve test çıktıları | Bekliyor |

### Gerçek veri test envanteri

| Test ID | Process | Durum |
| --- | --- | --- |
| PCC-BB-OSC-01 | PCC | Gerçek veri bekliyor |
| PCC-BB-RGB-01 | PCC | Gerçek veri bekliyor |
| PCC-BB-LRGB-01 | PCC | Gerçek veri bekliyor |
| PCC-BB-M31-01 | PCC | Gerçek veri bekliyor |
| PCC-BB-STARFIELD-01 | PCC | Gerçek veri bekliyor |
| PCC-BB-REFLECTION-01 | PCC | Gerçek veri bekliyor |
| PCC-BB-LOWSTAR-01 | PCC | Gerçek veri bekliyor |
| PCC-BB-GRADIENT-01 | PCC | Gerçek veri bekliyor |
| PCC-BB-METADATA-01 | PCC | Gerçek veri bekliyor |
| PCC-COMP-SPCC-01 | PCC | Gerçek veri bekliyor |
| BN-BB-EMPTYFIELD-01 | BackgroundNeutralization | Gerçek veri bekliyor |
| BN-BB-M31-HALO-01 | BackgroundNeutralization | Gerçek veri bekliyor |
| BN-BB-CIRRUS-01 | BackgroundNeutralization | Gerçek veri bekliyor |
| BN-BB-NEBULA-01 | BackgroundNeutralization | Gerçek veri bekliyor |
| BN-BB-GRADIENT-01 | BackgroundNeutralization | Gerçek veri bekliyor |
| BN-BB-STARFIELD-01 | BackgroundNeutralization | Gerçek veri bekliyor |
| BN-BB-CLIPPING-01 | BackgroundNeutralization | Gerçek veri bekliyor |
| BN-BB-REFLECTION-01 | BackgroundNeutralization | Gerçek veri bekliyor |
| BN-BB-MOONLIGHT-01 | BackgroundNeutralization | Gerçek veri bekliyor |
| BN-COMP-SPCC-PCC-01 | BackgroundNeutralization | Gerçek veri bekliyor |

### Görsel envanteri

| Görsel ID | Process | Kanıt | Durum |
| --- | --- | --- | --- |
| IMG-7.PCC.01 | PCC | PCC ana arayüzü | Görsel eklenecek |
| IMG-7.PCC.02 | PCC | Astrometry bölümü | Görsel eklenecek |
| IMG-7.PCC.03 | PCC | Catalog controls | Görsel eklenecek |
| IMG-7.PCC.04 | PCC | White reference controls | Görsel eklenecek |
| IMG-7.PCC.05 | PCC | Background controls | Görsel eklenecek |
| IMG-7.PCC.06 | PCC | Source detection controls | Görsel eklenecek |
| IMG-7.PCC.07 | PCC | Process log başarı | Görsel eklenecek |
| IMG-7.PCC.08 | PCC | Process log hata | Görsel eklenecek |
| IMG-7.PCC.09 | PCC | PCC mono RGB before/after | Görsel eklenecek |
| IMG-7.PCC.10 | PCC | PCC OSC before/after | Görsel eklenecek |
| IMG-7.PCC.11 | PCC | PCC ve SPCC karşılaştırması | Görsel eklenecek |
| IMG-7.BN.01 | BackgroundNeutralization | Process ana arayüzü | Görsel eklenecek |
| IMG-7.BN.02 | BackgroundNeutralization | Doğru reference preview | Görsel eklenecek |
| IMG-7.BN.03 | BackgroundNeutralization | Galaxy halo içeren yanlış preview | Görsel eklenecek |
| IMG-7.BN.04 | BackgroundNeutralization | Cirrus içeren yanlış preview | Görsel eklenecek |
| IMG-7.BN.05 | BackgroundNeutralization | Nebula içeren yanlış preview | Görsel eklenecek |
| IMG-7.BN.06 | BackgroundNeutralization | Star halo contamination | Görsel eklenecek |
| IMG-7.BN.07 | BackgroundNeutralization | Residual gradient | Görsel eklenecek |
| IMG-7.BN.08 | BackgroundNeutralization | Before/after histogram | Görsel eklenecek |
| IMG-7.BN.09 | BackgroundNeutralization | Over-neutralization | Görsel eklenecek |
| IMG-7.BN.10 | BackgroundNeutralization | Clipping örneği | Görsel eklenecek |
| IMG-7.BN.11 | BackgroundNeutralization | PCC/SPCC öncesi ve sonrası karşılaştırma | Görsel eklenecek |

### Dosya yayın durumu

| Dosya | Yapısal durum | UI durumu | Kaynak durumu | Veri durumu | Görsel durumu | Yayına hazırlık |
| --- | --- | --- | --- | --- | --- | --- |
| pcc.md | Hazır | Bekliyor | Bekliyor | 10 test bekliyor | 11 görsel bekliyor | Teknik doğrulama bekliyor |
| background-neutralization-process.md | Hazır | Bekliyor | Bekliyor | 10 test bekliyor | 11 görsel bekliyor | Teknik doğrulama bekliyor |
| index.md | Hazır | Uygulanamaz | İç bağlantılar hazır | Uygulanamaz | Uygulanamaz | Yapısal olarak hazır |
| legacy pcc.md | Yönlendirme | Uygulanamaz | Uygulanamaz | Uygulanamaz | Uygulanamaz | Navigation dışında |
| legacy background-neutralization.md | Yönlendirme | Uygulanamaz | Uygulanamaz | Uygulanamaz | Uygulanamaz | Navigation dışında |

### Sprint 3.3 yayın kararı

Yapısal entegrasyon tamamlandı. UI-7, DOC-7, DATA-7 ve IMG-7 kayıtları kapanmadan process sayfaları teknik olarak doğrulanmış yayın statüsünde değildir.
