# GradientCorrection

!!! warning "Sürüm doğrulama sınırı"
    Process varlığı, menü yolu, üç section ve görünen kontrol etiketleri ekran kanıtıyla doğrulandı. Screenshot içinde sürüm numarası görünmediği için 1.9.3 kimliği kısmi kanıttır. Default değerler, algoritmik davranış ve output gerçek veri/birincil kaynak doğrulaması bekler.

## Amaç

`GradientCorrection` yaklaşımını, gerçek hedef sinyalini bir background modeliyle karıştırmadan değerlendirmek ve sonucu model, residual ve orijinal görüntü üzerinden denetlemek.

## Kavramsal açıklama

Gradient correction, gözlenen geniş ölçekli arka plan değişimini tahmin eden bir model üretir ve bu modeli görüntüden ayırmayı amaçlar. Model, gökyüzü kaynaklı istenmeyen bileşeni temsil etmelidir; galaksi halosu, nebula veya cirrus içeriyorsa düzeltme bilimsel sinyali de azaltabilir.

```mermaid
flowchart LR
    input["Lineer görüntü"] --> inspect["Gradient ve calibration kontrolü"]
    inspect --> model["Background modeli"]
    model --> validate{"Model gerçek sinyal içeriyor mu?"}
    validate -- "Evet" --> revise["Model yaklaşımını değiştir"]
    validate -- "Hayır" --> correct["Düzeltmeyi test et"]
    correct --> residual["Residual ve overcorrection kontrolü"]
```

Otomatik modelleme hız sağlar; kullanıcı kontrollü modelleme ise background kabul edilen bölgeler üzerinde daha fazla karar olanağı verir. Bu ayrım tek başına kalite sıralaması değildir. `ABE`, `DBE` ve `GradientCorrection` farklı veri geometrilerinde ayrı ayrı test edilmelidir.

!!! note "Renkli ve mono veri"
    Renkli görüntüde yoğunluk ve renk eğimi birlikte değerlendirilebilir. Mono veya narrowband kanallarda gerçek sinyal dağılımı kanaldan kanala değişebilir. Kanal bazlı ya da birleşik çalışma seçimi veri setiyle sınanmalıdır.

## Ne zaman kullanılır?

- Calibration zinciri doğrulanmış lineer görüntüde residual gradient kaldığında
- Background modelinin ayrıca incelenebildiği kontrollü bir testte
- ABE veya DBE sonucuna karşı bağımsız bir karşılaştırma gerektiğinde
- Renk ya da kanal davranışı orijinal görüntüyle karşılaştırılabildiğinde

## Ne zaman kullanılmaz?

- Yanlış Master Flat, dust shadow veya vignetting sorununu gizlemek için
- Hedef tüm kadrajı dolduruyor ve güvenilir background kanıtı yoksa
- Model gerçek nebula ya da galaksi halosunu içeriyorsa
- Yalnız arka planı siyaha yaklaştırmak amacıyla

## Ön koşullar

- Calibration ve registration çıktılarının kontrol edilmiş olması
- Görüntünün lineer durumunun bilinmesi
- Orijinal, model ve düzeltilmiş görüntülerin ayrı tutulması
- Aynı STF'nin veri değişikliği olmadığının, yalnız ekran gösterimi olduğunun bilinmesi

## Menü yolu

Process adı: `GradientCorrection`.

Görselde doğrulanan menü yolu: `Process → GradientCorrection → GradientCorrection`.

Kanıt: `validation/ui/pi-1.9.3/gradient-correction/screenshots/07-process-menu-location.png`.

## Parametreler

## Görsel kanıtla doğrulanan UI

Arayüzde `Model Generation`, `Simplified Model` ve `Structure Protection` section başlıkları görülür. Doğrulanan etiketler arasında `Low threshold`, `Low tolerance`, `High threshold`, `High tolerance`, `Scale`, `Smoothness`, `Automatic convergence`, `Generate gradient model`, `Model degree`, `Generate simplified model`, `Protection threshold`, `Protection amount` ve `Generate protection masks` bulunur.

Kanıt dizini: `validation/ui/pi-1.9.3/gradient-correction/screenshots/`. Ayrıntılı sınıflandırma: `validation/ui/pi-1.9.3/gradient-correction/gradient-correction-evidence-matrix.md`.

!!! note "Mevcut değerler varsayılan değildir"
    Görünen sayısal değerler ve checkbox durumları yalnız screenshot anını gösterir. Reset/yeni instance kanıtı olmadığı için default veya parametre önerisi değildir.

| Özellik | GradientCorrection | ABE | DBE |
| --- | --- | --- | --- |
| Model oluşturma yaklaşımı | Sürüme bağlı davranış doğrulanmalı | Otomatik background tahmini | Kullanıcının sample dağılımıyla yönettiği model |
| Kullanıcı kontrolü | Arayüz doğrulaması gerekli | Görece sınırlı | Sample düzeyinde yüksek |
| Sample yönetimi | Doğrulama bekliyor | Kullanıcı tek tek sample yerleştirmez | Sample'lar görünür ve düzenlenebilir |
| Model denetimi | Çıktı olanakları doğrulanmalı | Model Image ile denetlenir | Model görüntüsüyle denetlenir |
| Kullanım hızı | Veri ve ayara bağlı | Genellikle hızlı başlangıç | Yerleşim nedeniyle daha fazla emek isteyebilir |
| Karmaşık hedef sinyalinde risk | Model kontrolü kritik | Otomasyon gerçek sinyali seçebilir | Yanlış sample gerçek sinyali seçebilir |
| Tekrarlanabilirlik | İşlem instance ve sürüme bağlı | Ayarlar kaydedilirse izlenebilir | Sample geometrisi kaydedilirse izlenebilir |
| Sürüm bağımlılığı | Yüksek; 1.9.3 doğrulanmadı | Arayüz ayrıntıları doğrulanmalı | Arayüz ayrıntıları doğrulanmalı |
| Gerçek veri doğrulama ihtiyacı | Zorunlu | Zorunlu | Zorunlu |

## Uygulama veya tanı yaklaşımı

1. Master Flat ve calibration eşleşmesini doğrulayın.
2. Lineer görüntüyü yeniden hesaplanmış STF ile inceleyin.
3. Orijinal görüntünün kopyasında bir model üretin.
4. Modelde yıldız halosu, nebula, galaksi dış halosu veya dust yapısı arayın.
5. Model güvenilir değilse düzeltmeyi kabul etmeyin.
6. Düzeltilmiş görüntüde residual gradient, renk sapması ve negatif clipping kontrolü yapın.
7. Sonucu ABE, DBE veya işlem görmemiş kopyayla aynı gösterim koşulunda karşılaştırın.

!!! example "UI kanıtı eklendi"
    Ana process arayüzü ve menü konumu validation dizininde kayıtlıdır. Model/output sonucu ve gerçek veri karşılaştırması hâlâ kayıt altında bulunmalıdırtir.

## Gerçek kullanım senaryosu

Geniş alan renkli bir master'da calibration sonrası şehir yönüne doğru parlaklık ve renk eğimi kalır. Model görüntüsü galaktik cirrus içeriyorsa sonuç reddedilir; daha korumacı bir model veya kontrollü DBE testi yapılır. Kabul ölçütü arka planın koyuluğu değil, hedef sinyalinin korunması ve residual eğimin azalmasıdır.

## Girdi, çıktı ve değerlendirme matrisi

GradientCorrection, lineer ve calibration bütünlüğü doğrulanmış master üzerinde denenmelidir. Otomatik sonuç, model incelemesi olmadan kabul edilmez.

| Kontrol | Kabul | Red işareti |
|---|---|---|
| Model | Yavaş değişen background yapısı | Nebula, galaxy halo veya yıldız izi |
| Corrected target | Residual azalması ve sinyal korunumu | Siyah clipping veya halo kaybı |
| Kanal ilişkisi | Açıklanabilir background dengesi | Yeni renk lekeleri veya kanal ayrışması |
| Tekrarlanabilirlik | Ayar ve çıktı kaydı mevcut | Sonucun hangi ayarla üretildiği belirsiz |

## Önerilen ayar yaklaşımı ve performans

Önce en az müdahaleli model denenir. Model karmaşıklığını yalnız residual gradient ölçümü gerekçelendiriyorsa artırın. ABE, DBE ve GradientCorrection sonuçlarını “daha düz” görünümle değil, model contamination, residual ve signal preservation ölçütleriyle karşılaştırın. Process hızlı çalışsa bile farklı ayarları aynı hedef üzerine art arda uygulamayın; her deneme orijinal lineer master'dan başlamalıdır.

## İş Akışındaki Yeri ve ilgili süreçler

[Gradient Diagnostics](gradient-diagnostics.md) sonrasında, color calibration öncesindeki lineer aşamada değerlendirilir. Sample kontrolü gerekiyorsa [DBE](dbe.md), basit otomatik model için [ABE](abe.md), dış uygulama karşılaştırması için [GraXpert](graxpert.md) kullanılabilir.

## Sık yapılan hatalar

1. Processin 1.9.3'teki kontrol adlarını güncel bir sürümden varsaymak.
2. Model görüntüsünü incelemeden sonucu kabul etmek.
3. Flat-field artefact'ını gradient sanmak.
4. Eski STF ile önce/sonra karşılaştırmak.
5. Tüm mono kanallara aynı model kararını uygulamak.
6. Residual bırakmamak adına overcorrection yapmak.

## Sorun giderme

| Belirti | Olası açıklama | Kontrol |
| --- | --- | --- |
| Model hedefe benziyor | Gerçek sinyal background sayılmış | Modeli reddedin; alternatif yaklaşım deneyin |
| Köşeler bozuluyor | Flat residual veya model uyumsuzluğu | Calibration zincirini yeniden inceleyin |
| Renk dengesi kayıyor | Kanallar farklı modellenmiş | Kanal ve color cast davranışını karşılaştırın |
| Gradient kalıyor | Model yetersiz veya kaynak zamanla değişken | Residual haritayı ve subframe'leri inceleyin |
| Arka plan kırpılıyor | Aşırı düzeltme veya gösterim yanılgısı | Statistics ve yeniden hesaplanmış STF kullanın |

## SSS

??? question "GradientCorrection ABE'nin yerine mi geçer?"
    Hayır. Aynı veri üzerinde model ve residual kalitesi karşılaştırılmalıdır.

??? question "DBE'den daha iyi midir?"
    Evrensel bir sıralama yoktur; hedef yapısı, background erişimi ve denetim ihtiyacı belirleyicidir.

??? question "Lineer aşamada mı kullanılmalıdır?"
    Bu rehber lineer değerlendirmeyi temel alır; kesin süreç sırası gerçek pipeline ile doğrulanmalıdır.

??? question "Model tamamen düz olmalı mı?"
    Hayır. Model istenmeyen geniş ölçekli bileşeni gösterebilir; gerçek hedef sinyali göstermemelidir.

??? question "Renkli görüntü mü, ayrı kanallar mı?"
    Her iki yaklaşımın riski vardır. Hedefin kanallardaki dağılımı ve model davranışı test edilmelidir.

## Hızlı Referans

!!! tip "Kontrol listesi"
    - [x] Process varlığı, menü yolu ve görünen arayüz etiketleri doğrulandı
    - [ ] Calibration artefact olasılığı elendi
    - [ ] Görüntü lineer
    - [ ] Model gerçek sinyal içermiyor
    - [ ] Residual ve overcorrection kontrol edildi
    - [ ] Orijinal görüntü saklandı

## Karar Ağacı

```mermaid
flowchart TD
    start{"Calibration doğrulandı mı?"}
    start -- "Hayır" --> calibration["Önce calibration zincirini düzelt"]
    start -- "Evet" --> signal{"Güvenilir background kanıtı var mı?"}
    signal -- "Hayır" --> stop["Otomatik düzeltmeyi durdur"]
    signal -- "Evet" --> model{"Model gerçek sinyal içeriyor mu?"}
    model -- "Evet" --> alternative["ABE veya kontrollü DBE karşılaştır"]
    model -- "Hayır" --> residual{"Residual kabul edilebilir mi?"}
    residual -- "Hayır" --> revise["Modeli yeniden değerlendir"]
    residual -- "Evet" --> accept["Sonucu kaydet"]
```

## Teknik doğrulama durumu

| Kimlik | Kategori | Durum |
| --- | --- | --- |
| UI-3 | İşlem varlığı, menü yolu, üç section ve 15 kontrol etiketi/tipi | Doğrulandı; ekran içi 1.9.3 sürüm kimliği kısmi |
| DOC-3 | İşlem algoritması ve model davranışı | Birincil process documentation gerekli |
| DATA-3 | Renkli/mono gerçek veri karşılaştırması | Gerçek veri testi gerekli |
| IMG-3 | Arayüz ve menü ekranları mevcut; model/residual ekranları | Kısmen doğrulandı |

## Ayrıca İnceleyin

- [Gradient Diagnostics](gradient-diagnostics.md)
- [ABE](abe.md)
- [DBE](dbe.md)
- [Subtraction ve Division](division-vs-subtraction.md)

## İlgili Süreçler

- [AutomaticBackgroundExtractor](abe.md)
- [DynamicBackgroundExtraction](dbe.md)
- [Örnek Yerleşimi](sample-placement.md)
- [Subtraction ve Division](division-vs-subtraction.md)
- [Gradient Tanısı](gradient-diagnostics.md)
- [GraXpert](graxpert.md)

## İlgili İş Akışları

- [LRGB Galaksi](../15-workflows/lrgb-galaxy.md)
- [Broadband Nebula](../15-workflows/broadband-nebula.md)
- [Emisyon Nebulası](../15-workflows/emission-nebula.md)
- [OSC İş Akışı](../15-workflows/osc-workflow.md)

## Önceki Bölüm

[← Gradient Tanısı](gradient-diagnostics.md)

## Sonraki Bölüm

[GraXpert →](graxpert.md)
