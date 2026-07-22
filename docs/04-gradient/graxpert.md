# GraXpert Entegrasyonu

!!! info "Sayfa Bilgisi"
    **Kategori:** Gradient Düzeltme · **Düzey:** Intermediate · **Tahmini okuma:** 5 dk
    **Anahtar kelimeler:** `GraXpert` · `gradient removal` · `gradient düzeltme` · `background modeling`
    **Önerilen ön bilgiler:** [Calibration Pipeline](../03-kalibrasyon/calibration-pipeline.md) · [Gradient Teorisi](gradient-theory.md)

!!! info "PixInsight 1.9.3 UI doğrulaması"
    Menü yolu ile görünür section ve kontrol adları supplied ekran görüntüleri üzerinden doğrulandı. Görünen değerler fabrika varsayılanı sayılmadı; davranış ve algoritma iddiaları bu statik UI kanıtının dışındadır. Ayrıntılı kayıt: `validation/ui/pi-1.9.3/graxpert/graxpert-evidence-matrix.md`.

!!! info "Haricî araç"
    GraXpert, PixInsight processi değildir. Açık kaynaklı bağımsız bir gradient extraction uygulamasıdır; bu sayfa onu PixInsight 1.9.3 iş akışına veri bütünlüğü kontrolleriyle bağlar.

## Amaç

GraXpert ile lineer veri alışverişini, background model denetimini ve round-trip risklerini tarafsız biçimde açıklamak.

## Kavramsal açıklama

GraXpert klasik interpolation yaklaşımlarıyla kullanıcı sample'larından veya AI tabanlı bir yaklaşımla background tahmini yapabilir. Sürüm, model adı ve arayüz alanları değişebileceği için burada sabitlenmez. Denoising özelliği bulunuyorsa gradient removal'dan ayrı bir işlem ve ayrı bir deney olarak değerlendirilmelidir.

```mermaid
flowchart LR
    pi1["PixInsight lineer master"] --> export["Kayıpsız veri aktarımı"]
    export --> gx["GraXpert gradient modeli"]
    gx --> outputs["Model ve corrected image"]
    outputs --> import["PixInsight'a geri al"]
    import --> audit["Metadata, statistics ve sinyal kontrolü"]
```

`FITS`, `XISF` ve `TIFF` seçiminde yalnız dosyanın açılması yeterli kanıt değildir. Floating-point hassasiyeti, kanal düzeni, color profile ve metadata gidiş-dönüşte karşılaştırılmalıdır. Kesin format desteği ve bit-depth seçenekleri kullanılan GraXpert sürümünde **Doğrulama bekliyor**.

## Ne zaman kullanılır?

- Haricî uygulamaya aktarım kontrollü biçimde yapılabiliyorsa
- Model çıktısı gerçek hedef sinyali açısından incelenebiliyorsa
- Sonuç DBE, ABE veya orijinal görüntüyle karşılaştırılacaksa
- Geniş alan gradient için alternatif bir model deneyi gerekiyorsa

## Ne zaman kullanılmaz?

- Calibration veya flat-field hatasını örtmek için
- Dosya hassasiyeti ve metadata korunumu ölçülmeden
- Hedef tüm alanı doldururken model güvenilirliği test edilmeden
- Gradient removal ve denoising aynı anda uygulanıp etkileri ayrılamıyorsa

## Ön koşullar

- Calibration tamamlanmış ve artefact sınıflandırılmış olmalı
- Lineer veri kopyası ve orijinal dosya korunmalı
- Kullanılan GraXpert sürümü, model dosyası ve ayarlar kayda alınmalı
- PixInsight'a dönüşte ölçülebilir kontrol planı bulunmalı

## Menü yolu

GraXpert bağımsız uygulamadır; PixInsight menü yolu yoktur. Güncel uygulama arayüzü **Doğrulama bekliyor**.

## Parametreler

| Değerlendirme alanı | ABE | DBE | GradientCorrection | GraXpert |
| --- | --- | --- | --- | --- |
| Otomasyon düzeyi | Yüksek | Daha düşük | Sürüme göre doğrulanmalı | Klasik ve AI yaklaşımına göre değişir |
| Kullanıcı kontrolü | Sınırlı | Sample düzeyinde | Arayüz doğrulanmalı | Yönteme göre değişir |
| Background model görünürlüğü | Model Image | Model output | Doğrulanmalı | Background model çıktısı incelenmeli |
| Haricî uygulama gereksinimi | Yok | Yok | Yok | Var |
| Metadata korunumu riski | Uygulama içi | Uygulama içi | Uygulama içi | Round-trip nedeniyle ayrıca test edilmeli |
| Yoğun nebula alanı | Model riski | Sample riski | Model riski | Model riski |
| Galaxy halo riski | Var | Var | Var | Var |
| Geniş alan görüntü | Test gerekir | Sample erişimine bağlı | Test gerekir | Test gerekir |
| Mono narrowband kanal | Kanal bazlı doğrulama | Kanal bazlı doğrulama | Doğrulama bekliyor | Kanal bazlı doğrulama |
| Tekrarlanabilirlik | Ayar kaydıyla | Sample kaydıyla | İşlem instance'a bağlı | Sürüm, yöntem ve ayar kaydıyla |
| Gerçek veri testi gereksinimi | Zorunlu | Zorunlu | Zorunlu | Zorunlu |

## Uygulama veya tanı yaklaşımı

1. Calibration'ın tamamlandığını ve sorunun gradient olduğunu doğrulayın.
2. Orijinal lineer dosyayı koruyun; aktarım formatı ve hassasiyetini kaydedin.
3. Gradient extraction ile denoising'i ayrı çalıştırın.
4. Background model ve corrected image çıktılarını ayrı kaydedin.
5. Modelde star halo, galaxy halo ve nebula sinyali arayın.
6. Corrected image'ı PixInsight'a geri alın.
7. Dimensions, channels, statistics, clipping ve metadata'yı orijinalle karşılaştırın.
8. Sonucu DBE veya işlem görmemiş veriyle aynı STF koşulunda karşılaştırın.

```mermaid
flowchart TD
    model["Background modeli"] --> stars{"Yıldız veya halo izi var mı?"}
    stars -- "Evet" --> reject["Modeli reddet"]
    stars -- "Hayır" --> diffuse{"Nebula veya galaksi halosu var mı?"}
    diffuse -- "Evet" --> revise["Yöntemi yeniden değerlendir"]
    diffuse -- "Hayır" --> residual["Residual gradient kontrolü"]
```

!!! example "Görsel doğrulama ölçütü"
    GraXpert ana arayüzü kayıt altında bulunmalıdır; görsel, kullanılan sürümü ve seçilen model yaklaşımını kanıtlayacak.

!!! example "Görsel doğrulama ölçütü"
    GraXpert Background model kayıt altında bulunmalıdır; görsel, star halo, galaxy halo veya nebula sinyalinin modele girip girmediğini gösterecek.

!!! example "Görsel doğrulama ölçütü"
    GraXpert corrected image kayıt altında bulunmalıdır; görsel, residual gradient, clipping ve signal preservation kontrolünün nasıl yapıldığını gösterecek.

!!! example "Görsel doğrulama ölçütü"
    Aynı master'ın GraXpert ve DBE sonuçları kayıt altında bulunmalıdır; görsel, araç kazananı değil residual ve signal preservation farkını gösterecek.

## Gerçek kullanım senaryosu

Geniş alan lineer master, floating-point veri korunacak şekilde dışarı aktarılır. GraXpert modeli gerçek nebula yapısı açısından denetlenir. Geri alınan corrected image'ın dimensions, channel statistics ve metadata alanları orijinalle karşılaştırılır; SPCC uygulanmadan önce gradient sonucu kabul edilir veya reddedilir.

!!! warning "SPCC sırası"
    Gradient düzeltmenin SPCC öncesi veya sonrası yapılmasına ilişkin kesin reçete verilmez. Background değişiminin color calibration ölçümünü, SPCC'nin de karşılaştırma görünümünü etkileyebileceği dikkate alınmalı; sıra gerçek veriyle test edilmelidir.

## Girdi/çıktı bütünlüğü ve performans

GraXpert round-trip işlemi yalnız gradient modelini değil dosya temsilini de etkileyebilir. Girdi ve çıktı için dimensions, channel count, sample format, bit depth, clipping, metadata ve color interpretation karşılaştırılmalıdır.

| Denetim | Neden | Kabul kanıtı |
|---|---|---|
| Floating-point hassasiyeti | Quantization kaybını önlemek | Histogram/statistics karşılaştırması |
| Kanal sırası ve sayısı | Renk eşleşmesini korumak | PixInsight içindeki channel denetimi |
| Model image | Gerçek sinyal kaybını tespit etmek | Halo/nebula izi bulunmaması |
| Sürüm ve ayar kaydı | Sonucu yeniden üretmek | Proje günlüğünde tam kayıt |

Harici dosya okuma/yazma maliyeti büyük master'larda belirgin olabilir. Denoising ile gradient extraction aynı testte birleştirilmemeli; aksi halde hangi değişimin hangi adımdan geldiği ayrıştırılamaz.

## Önerilen karşılaştırma yöntemi

GraXpert, DBE ve işlenmemiş master aynı başlangıç verisinden üretilir. Aynı STF görünümü, Statistics ve residual model ile karşılaştırılır. Kazanan araç önceden seçilmez; hedef sinyalini koruyarak açıklanabilir background üreten yöntem kabul edilir.

## Sık yapılan hatalar

1. STF görünümünü gerçek pixel değişikliği sanmak.
2. 16-bit aktarımı kaynak floating-point veriye eşdeğer kabul etmek.
3. Metadata ve color profile kaybını kontrol etmemek.
4. AI modelini denetimsiz kabul etmek.
5. Denoising ile gradient removal etkisini aynı testte karıştırmak.
6. Güncel arayüz bilgisini sabit sürüm gerçeği gibi yazmak.

## Sorun giderme

| Belirti | Olası neden | Kontrol |
| --- | --- | --- |
| PixInsight'ta ton değişti | Format, profile veya gösterim farkı | Statistics ve STF'yi yeniden hesaplayın |
| Metadata eksik | Round-trip formatı alanları taşımadı | Orijinal header ile karşılaştırın |
| Modelde nebula var | Gerçek sinyal background sayılmış | Sonucu reddedin; yöntem/sample değiştirin |
| Renk kanalları kaydı | Kanal düzeni veya profile sorunu | Kanal isimlerini ve dimensions'ı denetleyin |
| Sonuç fazla pürüzsüz | Denoising de uygulanmış olabilir | İşlemleri ayırıp yeniden test edin |

## SSS

??? question "GraXpert PixInsight eklentisi midir?"
    Bu rehberde bağımsız haricî uygulama olarak ele alınır.

??? question "AI modu her zaman daha iyi midir?"
    Hayır. Model gerçek sinyal ve residual gradient üzerinden doğrulanmalıdır.

??? question "Hangi dosya formatı zorunludur?"
    Evrensel bir seçim verilmez; uygulama sürümünün desteği ve veri bütünlüğü test edilmelidir.

??? question "STF aktarılır mı?"
    STF bir PixInsight ekran gösterimidir; gerçek pixel verisiyle karıştırılmamalıdır.

??? question "GraXpert sonrası denoising yapılabilir mi?"
    Yapılabilirlikten ayrı olarak, etkilerin izlenebilmesi için gradient removal ile ayrı değerlendirilmelidir.

??? question "GraXpert DBE'nin yerine geçer mi?"
    Zorunlu bir ikame değildir; modeller aynı veri üzerinde karşılaştırılabilir.

## Hızlı Referans

!!! tip "Round-trip kontrol listesi"
    - [ ] Calibration tamamlandı
    - [ ] Sürüm, yöntem ve ayarlar kaydedildi
    - [ ] Floating-point/bit depth doğrulandı
    - [ ] Model gerçek sinyal içermiyor
    - [ ] Metadata ve channel statistics korundu
    - [ ] Denoising ayrı tutuldu
    - [ ] Orijinal ve DBE/ABE karşılaştırması yapıldı

## Karar Ağacı

```mermaid
flowchart TD
    calibrated{"Calibration tamamlandı mı?"}
    calibrated -- "Hayır" --> fix["Önce calibration"]
    calibrated -- "Evet" --> gradient{"Artefact gradient mi?"}
    gradient -- "Hayır veya belirsiz" --> diagnose["Gradient Diagnostics"]
    gradient -- "Evet" --> background{"Background alanı yeterli mi?"}
    background -- "Hayır" --> cautious["Otomatik modeli sınırla"]
    background -- "Evet" --> model{"Model incelenebiliyor mu?"}
    model -- "Hayır" --> stop["Sonucu kabul etme"]
    model -- "Evet" --> signal{"Hedef sinyali modelde mi?"}
    signal -- "Evet" --> revise["Yöntemi değiştir"]
    signal -- "Hayır" --> roundtrip{"Round-trip bütünlüğü korundu mu?"}
    roundtrip -- "Hayır" --> export["Aktarımı düzelt"]
    roundtrip -- "Evet" --> compare{"Orijinal veya DBE ile karşılaştırıldı mı?"}
    compare -- "Hayır" --> test["Karşılaştırma yap"]
    compare -- "Evet" --> accept["Kanıta göre kabul et"]
```

## Teknik doğrulama durumu

| Kimlik | Kategori | Durum |
| --- | --- | --- |
| UI-3 | Güncel GraXpert sürümü ve arayüz alanları | Doğrulama bekliyor |
| DOC-3 | Klasik/AI yöntem davranışı ve format desteği | Resmî sürüm dokümanı gerekli |
| DATA-3 | Round-trip ve DBE karşılaştırması | Gerçek veri testi gerekli |
| IMG-3 | Arayüz, model, corrected image | Görsel gerekli |

## Ayrıca İnceleyin

- [Gradient Diagnostics](gradient-diagnostics.md)
- [DBE](dbe.md)
- [GradientCorrection](gradient-correction.md)
- [Flat-field ve Gradient](flat-field-vs-gradient.md)

## İlgili Süreçler

- [AutomaticBackgroundExtractor](abe.md)
- [DynamicBackgroundExtraction](dbe.md)
- [Örnek Yerleşimi](sample-placement.md)
- [Subtraction ve Division](division-vs-subtraction.md)
- [Gradient Tanısı](gradient-diagnostics.md)
- [GradientCorrection](gradient-correction.md)

## İlgili İş Akışları

- [LRGB Galaksi](../15-workflows/lrgb-galaxy.md)
- [Broadband Nebula](../15-workflows/broadband-nebula.md)
- [Emisyon Nebulası](../15-workflows/emission-nebula.md)
- [OSC İş Akışı](../15-workflows/osc-workflow.md)

## Önceki Bölüm

[← GradientCorrection](gradient-correction.md)

## Sonraki Bölüm

[Ay Işığı Gradientleri →](moonlight-gradients.md)
