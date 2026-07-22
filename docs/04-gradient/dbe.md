# DynamicBackgroundExtraction (DBE)

**Durum: Teknik incelemeye hazır — Sprint 2.1**

## Amaç

DynamicBackgroundExtraction ile background sample seçimi, model üretimi ve correction kararlarını ayrıntılı, denetlenebilir ve gerçek sinyali korumaya odaklı biçimde açıklamak.

!!! note "DBE’nin temel fikri"
    DBE, kullanıcının belirlediği veya otomatik üretilip denetlediği samples üzerinden tüm image için bir background model tahmin eder. Sample bir “düzeltme fırçası” değil, model için ölçüm varsayımıdır.

## Teori

### DBE mantığı

Her kabul edilen `Sample`, o bölgenin gerçek background’u temsil ettiği varsayımıyla modele katkı verir. Sample değerleri bir yüzeye fit veya interpolate edilir; oluşan `Background model`, seçilen `Correction` ile target’a uygulanır.

```mermaid
flowchart LR
    image["Lineer calibrated image"] --> samples["Background Samples"]
    samples --> validation["Tolerance ve sample doğrulama"]
    validation --> surface["Polynomial veya interpolation yüzeyi"]
    surface --> model["Background model"]
    model --> correction["Subtraction veya Division"]
    correction --> result["Düzeltilmiş image"]
```

### Model oluşturma mantığı

Model kalitesi yalnız sample sayısıyla belirlenmez. Sample’ların spatial coverage’ı, gerçek sinyal contamination’ı, local statistics, model karmaşıklığı ve image sınırları birlikte önemlidir. Çok sayıda yanlış sample, az sayıda iyi sample’dan daha güvenilir değildir.

### Background model

Background model, image’ın hangi yapısının “arka plan” kabul edildiğini görünür kılar. Model image içinde nebula filamentleri, galaxy halo veya reflection yapısı belirginse model gerçek sinyali kaldırma riski taşır.

!!! warning "Sample ilkesi"
    Sample’lar gradient’in “koyu” veya “parlak” görünen noktalarına rastgele değil, gerçek hedef sinyali içermediği gerekçelendirilebilen background bölgelerine dağıtılmalıdır.

## Ne zaman kullanılır?

- ABE modelinin gerçek sinyal içerdiği veya residual bıraktığı durumlarda
- Background bölgelerinin kullanıcı tarafından denetlenmesi gerektiğinde
- Karmaşık veya düzensiz gradient için sample coverage tasarlanırken
- Model Image üzerinden correction öncesi kalite kontrol istendiğinde

## Ne zaman kullanılmaz?

- Alanın hiçbir yerinde güvenilir background tanımlanamıyorsa
- Hatalı Master Flat’i sentetik olarak “tamir etmek” için
- Sample’ları nebula/galaxy üzerine koyarak hedefi yeniden şekillendirmek için
- Yalnız arka planı siyahlaştırmak amacıyla
- Model Image incelenmeden `Replace target image` ile tek kopya üzerinde

## Menü yolu

Process adı: `DynamicBackgroundExtraction`

Görselde doğrulanan menü yolu: `Process → BackgroundModelization → DynamicBackgroundExtraction`.

Kanıt: `validation/ui/pi-1.9.3/dbe/screenshots/07-spcc-process-menu-location.png`.

!!! warning "Sürüm kanıtı sınırı"
    Screenshot içinde sürüm numarası görünmez. Dosya `pi-1.9.3` validation dizininde sınıflandırılmıştır; bu nedenle ekran içi PixInsight 1.9.3 sürüm kimliği kısmi kanıttır.

## Görsel kanıtla doğrulanan UI

Ana arayüzde şu section başlıkları okunur: `No target view`, `Model Parameters (1)`, `Model Parameters (2)`, `Sample Generation`, `Model Image` ve `Target Image Correction`.

`Correction` açık listesinde `None`, `Subtraction` ve `Division`; `Sample format` açık listesinde `Same as target`, `8-bit unsigned integer`, `16-bit unsigned integer`, `32-bit unsigned integer`, `32-bit IEEE 754 floating point` ve `64-bit IEEE 754 floating point` doğrudan görülür.

Kanıt dizini: `validation/ui/pi-1.9.3/dbe/screenshots/`. Ayrıntılı sınıflandırma: `validation/ui/pi-1.9.3/dbe/dbe-evidence-matrix.md`.

!!! note "Mevcut değerler varsayılan değildir"
    Arayüzde görünen sayısal değerler ve checkbox durumları yalnız screenshot anını gösterir. Reset/yeni instance kanıtı olmadığı için default olarak kullanılamaz.

## Parametreler

| Parametre | Amacı | Ne zaman artırılır? | Ne zaman azaltılır? | Yanlış kullanım sonucu |
| --- | --- | --- | --- | --- |
| `Sample` | Background ölçüm konumlarını tanımlamak | Coverage yetersizse, yalnız güvenilir bölgelerde yeni sample | Contaminated veya redundant sample varsa | Gerçek sinyal modelde; yetersiz model |
| `Tolerance` | Sample kabul davranışını etkileyen kontrol | Yalnız kabul edilen/reddedilen samples ve Model Image gözlenerek test edilir | Contamination artıyorsa geri alınır | Çok az sample veya contaminated samples |
| `Radius` | Sample ölçüm alanının spatial kapsamını etkileyen kontrol | Geniş alanın gerçek background olduğu kanıtlanabiliyorsa test edilir | Dar background boşluğu veya yapı yakınında test edilir | Yapı contamination veya kararsız ölçüm |
| `Shadows relaxation` | Koyu bölgelerde sample kabul davranışını etkileyen kontrol | Kesin koşul **Doğrulama bekliyor** | Kesin koşul **Doğrulama bekliyor** | Yanlış background adayları; yetersiz samples |
| `Correction` | Subtraction/Division modelini seçmek | Sayısal artırma yok; fiziksel hipotez seçilir | Sayısal azaltma yok | Yanlış düzeltme modeli |
| `Subtraction` | Additive background modelini çıkarmak | Parametre değildir; additive kanıtla seçilir | Uygulanmaz | Clipping veya gerçek sinyal kaybı |
| `Division` | Multiplicative modelle bölmek | Parametre değildir; multiplicative kanıtla seçilir | Uygulanmaz | Köşe/parlaklık amplifikasyonu, noise artışı |
| `Discard background model` | Model output’unu saklama/atma davranışı | Model ayrıca gerekmiyorsa, ancak QA sonrasında | Model inspection gerekiyorsa | Model kanıtı kaybolur |
| `Normalize` | Correction sonrası target seviyesini/ölçeğini yönetmek | Kesin koşul **Doğrulama bekliyor** | Kesin koşul **Doğrulama bekliyor** | Seviye veya renk ilişkisi değişebilir |
| `Replace target image` | Düzeltilmiş sonucu target’a yazmak | Ayrı clone ve geri dönüş noktası varsa | Karşılaştırma korunacaksa | Orijinal sonuç dalı kaybolur |
| `Polynomial Degree` | Model yüzeyinin esnekliğini etkileyen kontrol | Residual, coverage ve Model Image birlikte destekliyorsa test edilir | Model gerçek sinyale uyuyor veya kararsız yapı üretiyorsa test edilir | Overfitting/underfitting |
| `Interpolation` | Samples arasında background yüzeyi üretmek | Sayısal artırma değildir; uygun yöntem seçilir | Sayısal azaltma değildir | Edge artefact veya uygunsuz yüzey |

!!! warning "Doğrulama durumu"
    `Tolerance`, `Radius`, `Shadows relaxation`, `Discard background model`, `Normalize` ve `Replace target image` etiketleri görselde doğrulandı; davranışları doğrulanmadı. `Polynomial Degree` ve `Interpolation` bu screenshot setinde görünmedi ve birincil kaynak doğrulaması bekliyor.

## Adım adım kullanım

1. Calibrated lineer image’ın clone’unu oluşturun.
2. STF ile gerçek signal ve olası background bölgelerini haritalayın.
3. Gerekirse başlangıç sample grid’i üretin.
4. Nebula, galaxy halo, reflection, IFN, bright star halo ve artefact üzerindeki samples’ı kaldırın.
5. Image’ın tüm gradient yönlerini temsil edecek spatial coverage oluşturun.
6. `Tolerance`, `Radius` ve `Shadows relaxation` etkisini sample kabulü üzerinden kontrollü test edin.
7. En basit yeterli `Polynomial Degree` veya uygun `Interpolation` yaklaşımını seçin.
8. İlk çalışmada model output’unu saklayın; `Discard background model` ile kanıtı kaybetmeyin.
9. Background model’i güçlü STF ile gerçek sinyal açısından inceleyin.
10. `Subtraction` ve `Division` seçeneklerini yalnız etki modeline ilişkin kanıtla, ayrı clones üzerinde temel düzeyde test edin.
11. `Normalize` ve `Replace target image` davranışını orijinalle karşılaştırın.
12. STF’yi resetleyip yeniden hesaplayın.
13. Residual gradient, clipping, noise amplification ve signal preservation kontrolü yapın.

!!! info "Sprint kapsamı"
    Subtraction ve Division yöntemlerinin ayrıntılı karşılaştırması [Subtraction ve Division](division-vs-subtraction.md) sayfasındadır. Seçim; STF, Background Model, histogram ve gerçek veri kabul kontrolüyle değerlendirilir.

## Gerçek kullanım senaryosu

!!! example "Galaxy ve dış halo"
    Geniş bir galaxy’nin çevresinde background bölgeleri vardır; ancak dış halo sınırı belirsizdir. Samples, galaxy’den güvenli mesafede ve gradient boyunca dağıtılır. Model image’da halo benzeri yapı görülürse o sample seti reddedilir. Polynomial Degree yükseltmek yerine önce sample contamination ve coverage gözden geçirilir.

## Gerçek hatalar

### Less than three samples were generated

Process, model üretimi için yeterli sayıda kabul edilmiş sample elde edememiştir. Uygun background alanı yetersiz olabilir; sample generation koşulları fazla kısıtlayıcı olabilir; target yoğun nebula veya galaxy sinyaliyle kaplı olabilir; `Radius` veya model koşulları uygun olmayabilir. Otomatik üretim yerine kontrollü manuel sample yerleşimi olası bir müdahaledir, garanti çözüm değildir. PixInsight hata mesajının sunduğu olası müdahaleler ve kesin hata koşulu 1.9.3 üzerinde doğrulanmayı bekliyor.

!!! info "Görsel doğrulama ölçütü"
    Hata mesajı, sample generation ayarları ve kabul edilen sample sayısını gösteren ekran görüntüsü kayıt altında bulunmalıdır.

### Sample’ların nebulaya yerleştirilmesi

Nebula üzerindeki sample, gerçek emission/reflection yapısını background modeline taşıyabilir. Bu durumda correction hedef sinyali azaltabilir veya yeniden şekillendirebilir.

!!! info "Görsel doğrulama ölçütü"
    Nebula üzerindeki hatalı sample dağılımı ve temizlenmiş sample seti karşılaştırması kayıt altında bulunmalıdır.

### Model görüntüsünün nebulaya benzemesi { #model-goruntusunun-nebulaya-benzemesi }

Model image’ın nebulaya benzemesi, modelin gerçek sinyali background olarak öğrendiğine dair güçlü bir uyarıdır. Model kabul edilmemeli; samples, coverage ve model karmaşıklığı yeniden incelenmelidir.

!!! info "Görsel doğrulama ölçütü"
    Target ve Model Image aynı STF ölçeğinde yan yana gösterilecek.

### Division sonrası aşırı parlama

Division, düşük model değerlerinin bulunduğu bölgelerde correction etkisini büyütebilir. Aşırı parlama, multiplicative hipotezin veya model seviyesinin uygun olmadığını gösterebilir. Kesin neden model ve statistics ile incelenmelidir.

!!! info "Görsel doğrulama ölçütü"
    Division öncesi/sonrası ve model statistics karşılaştırması kayıt altında bulunmalıdır.

### Subtraction sonrası siyah arka plan

Siyah arka plan; modelin fazla çıkarılması, clipping, Normalize davranışı veya yalnız STF değişimiyle ilişkili olabilir. Histogram/Statistics ve yeniden hesaplanan STF görülmeden tek neden atanamaz.

!!! info "Görsel doğrulama ölçütü"
    Eski ve yeniden hesaplanan STF ile histogram karşılaştırması kayıt altında bulunmalıdır.

### Gradientin tamamen kaybolmaması

Residual gradient; yetersiz sample coverage, uygun olmayan model karmaşıklığı, gerçek signal/gradient belirsizliği veya correction türü uyuşmazlığından kaynaklanabilir. Gradient’i “tamamen yok etmek” uğruna gerçek sinyal modellemek doğru çözüm değildir.

!!! info "Görsel doğrulama ölçütü"
    Residual model ve kontrollü sample revizyonu örneği kayıt altında bulunmalıdır.

## Girdi gereksinimleri ve sample kabul ölçütleri

DBE'ye girecek görüntü lineer olmalı; calibration, registration ve integration artefact'ları önce sınıflandırılmalıdır. Bir sample yalnız konumu boş göründüğü için kabul edilmez. Lokal medyanın çevresine göre tutarlılığı, star halo uzaklığı, diffuse signal riski ve alan genelindeki coverage birlikte değerlendirilir.

| Değişiklik | Ne zaman gerekçeli? | Başarı ölçütü |
|---|---|---|
| `Tolerance` artırma | Temiz background adayları reddediliyorsa | Yeni sample'lar gerçek sinyale taşmıyor |
| `Radius` artırma | Lokal ölçüm küçük yapı/noise'dan etkileniyorsa | Model daha kararlı, halo contamination yok |
| `Polynomial Degree` artırma | Residual büyük ölçekli yapı düşük dereceyle temsil edilemiyorsa | Model gerçek hedefi kopyalamıyor |
| Sample sayısını artırma | Alan coverage'ında doğrulanmış boşluk varsa | Yeni noktalar bağımsız bilgi sağlıyor |

Tipik sample sayısı veya radius için evrensel değer yoktur; görüntü ölçeği, hedef doluluğu ve gradient geometrisi belirleyicidir.

## Subtraction, Division ve çıktı kabulü

Subtraction additive bir background hipotezini; Division multiplicative bir alan tepkisi hipotezini sınar. Flat calibration yerine DBE Division kullanmak fiziksel flat modelini geri getirmez. Modelin medyanı, düşük değerleri ve correction sonrası clipping istatistikleri incelenmeden Division kabul edilmemelidir.

- Modelde yıldız, halo, galaxy kolu veya nebula filamenti seçilmemelidir.
- Corrected image'da residual azalırken hedefin dış sınırı korunmalıdır.
- Aynı STF yalnız görsel kıyas için kullanılmalı; histogram ve Statistics ayrıca ölçülmelidir.
- Kabul edilen process instance, sample geometrisi ve model image saklanmalıdır.

## Performans ve en iyi uygulamalar

Çok sayıda sample tek başına daha iyi model değildir; hesap yükünü ve contamination fırsatını artırabilir. Önce seyrek ve güvenilir bir ağ kurun, yalnız coverage boşluklarını gerekçeli biçimde doldurun. Ayrıntılı yerleşim için [DBE Sample Yerleşimi](sample-placement.md), correction seçimi için [Subtraction ve Division](division-vs-subtraction.md) sayfasını kullanın.

## Sık yapılan hatalar

1. Sample sayısını kaliteyle eşitlemek.
2. Samples’ı nebula, galaxy halo veya bright star halo üzerine koymak.
3. `Tolerance` yükselterek üretilen her sample’ı kabul etmek.
4. `Polynomial Degree` ile gradient şiddetini karıştırmak.
5. Model Image’ı atmadan önce incelememek.
6. Subtraction ve Division’ı fiziksel ayrım yapmadan denemek.
7. `Normalize` ve `Replace target image` davranışını doğrulamadan tek kopyada uygulamak.
8. Düzeltme sonrası eski STF ile karar vermek.

## Sorun giderme

| Belirti | Olası neden | Kanıt | Eylem |
| --- | --- | --- | --- |
| Üçten az sample | Acceptance/coverage yetersiz | Sample count ve console | Sample generation ve kabul koşullarını inceleyin |
| Model nebula içeriyor | Contaminated samples/overfitting | Model Image | Samples’ı kaldırın, modeli sadeleştirin |
| Division parlatıyor | Yanlış multiplicative model/düşük model seviyesi | Model Statistics | Correction hipotezini reddedin veya yeniden kurun |
| Subtraction karartıyor | Over-subtraction, clipping veya STF | Histogram ve yeni STF | Model, Normalize ve data seviyesini inceleyin |
| Gradient kalıyor | Underfitting/coverage/model sınırı | Residual pattern | Samples ve en basit yeterli modeli yeniden kurun |
| Kenar artefact’ı | Yetersiz edge support/interpolation | Model kenarları | Edge sample coverage’ı inceleyin |

## SSS

??? question "DBE sample nedir?"
    Background’u temsil ettiği varsayılan yerel ölçüm bölgesidir; lokal düzeltme fırçası değildir.

??? question "Kaç sample gerekir?"
    Evrensel sayı yoktur. Modelin geometry’sini temsil eden, uncontaminated ve yeterli coverage sağlayan set gerekir.

??? question "Tolerance ne yapar?"
    Sample kabul davranışını etkiler. Kesin 1.9.3 algoritmik yönü ve eşik tanımı doğrulanmayı bekliyor.

??? question "Subtraction mı Division mı?"
    Additive veya multiplicative etkiye ilişkin kanıta bağlıdır. Rastgele estetik tercih olmamalıdır.

??? question "Polynomial Degree neden yükseltilmemeli?"
    Yalnız residual kaldığı için yükseltmek gerçek sinyale uyum riskini artırabilir; sample desteğiyle değerlendirilir.

??? question "Model Image neden nebulaya benziyor?"
    Samples gerçek sinyal içeriyor veya model fazla esnek olabilir; sonuç kabul edilmemelidir.

??? question "Gradient neden tamamen kaybolmadı?"
    Veri/model ayrımı sınırlı olabilir. Kontrollü residual, gerçek sinyal kaybından daha güvenilir olabilir.

## Hızlı Referans

!!! tip "Tek sayfalık kontrol listesi"
    - [ ] Image lineer ve calibrated
    - [ ] Background bölgeleri gerekçeli
    - [ ] Samples tüm gradient yönünü kapsıyor
    - [ ] Nebula/halo üzerindeki samples kaldırıldı
    - [ ] Tolerance/Radius etkisi sample kabulüyle izlendi
    - [ ] En basit yeterli model seçildi
    - [ ] Model Image saklandı ve incelendi
    - [ ] Correction türü fiziksel hipoteze bağlı
    - [ ] Normalize/Replace davranışı clone üzerinde kontrol edildi
    - [ ] STF yeniden hesaplandı
    - [ ] Residual ve signal preservation incelendi

## Karar Ağacı

```mermaid
flowchart TD
    start["DBE modeli sorunlu"] --> countq{"Yeterli sample üretildi mi?"}
    countq -- "Hayır" --> generation["Sample generation ve acceptance koşullarını incele"]
    countq -- "Evet" --> signalq{"Model gerçek sinyale benziyor mu?"}
    signalq -- "Evet" --> samples["Contaminated samples'ı kaldır ve modeli sadeleştir"]
    signalq -- "Hayır" --> residualq{"Gradient residual kaldı mı?"}
    residualq -- "Evet" --> coverage["Coverage ve model karmaşıklığını yeniden değerlendir"]
    residualq -- "Hayır" --> correctionq{"Correction sonucu clipping veya parlama üretiyor mu?"}
    correctionq -- "Evet" --> correction["Subtraction, Division ve Normalize hipotezini yeniden değerlendir"]
    correctionq -- "Hayır" --> accept["Model ve sonucu kabul kontrolüne geçir"]
```

## Teknik doğrulama durumu

| Sınıf | Durum |
| --- | --- |
| A | Sample tabanlı background model, contamination ve under/overfitting kavramları sürümden bağımsız |
| B | Menü, altı section, 43 control etiketi/tipi ve açık Correction/Sample format seçenekleri doğrulandı; default ve davranışlar bekliyor |
| C | Sample sayısı, Tolerance, Radius veya Degree için kesin değer verilmedi |
| D | Interpolation, Polynomial ve correction algoritmalarının ayrıntıları birincil kaynak gerektirir |

!!! warning "Doğrulama durumu"
    UI etiketlerinin görünen kısmı validation kanıtlarıyla eşlendi. Screenshot içinde sürüm numarası, default/reset durumu, tooltip, console veya gerçek uygulama sonucu bulunmadığından bunlar process documentation ve kontrollü veriyle doğrulanmalıdır.
