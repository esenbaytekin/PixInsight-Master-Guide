# Filtreler

!!! info "Sayfa Bilgisi"
    **Kategori:** Görüntüleme Temelleri · **Düzey:** Beginner · **Tahmini okuma:** 15 dk
    **Anahtar kelimeler:** `filtre` · `LRGB` · `broadband` · `narrowband` · `H-alpha` · `OIII` · `SII` · `bandpass`

## Bu konu neden önemlidir?

Filtre, sensöre hangi dalga boylarının ulaşacağını seçer. Bu seçim yalnız görüntünün rengini değil; hedef sinyalinin gücünü, gökyüzü arka planını, gerekli toplam süreyi, yıldız profilini ve daha sonra uygulanabilecek renk kalibrasyonu yöntemini de etkiler. Bu nedenle filtre kararı “hangi paleti seviyorum?” sorusundan önce hedefin hangi ışığı yaydığıyla başlar.

Bu sayfa filtrelerin fiziksel ve operasyonel rolünü açıklar. PixelMath kanal formülleri burada anlatılmaz; kanal birleştirme için canonical [PixelMath ve Kanal Karışımları](../10-pixelmath/kanal-karisimlari.md) sayfasına geçilir.

## Temel kavramlar

### Bandpass ve transmission

Bir filtrenin transmission eğrisi, dalga boyuna göre ışığın ne kadarını geçirdiğini gösterir. Bandpass, hedeflenen geçiş aralığıdır; merkezi dalga boyu ve bant genişliği bu aralığı tanımlar. Filtrenin yalnız tepe transmission değeri yeterli değildir. Bant dışı blocking, hızlı optik sistemdeki spectral shift ve sensörün aynı dalga boyundaki QE değeri de sistem sonucunu etkiler.

!!! note "Planlanan görsel kanıt · Filter transmission"
    **Kategori:** Comparison · **Durum:** Kaynak verisi gerekli · **Öncelik:** P1
    **Soru:** Broadband LRGB ile narrowband Ha/OIII/SII geçiş aralıkları nasıl ayrılır?
    **Girdi:** Aynı üretici veya açıkça kaynaklandırılmış ölçüm serisinden gerçek transmission verileri.
    **Gösterim:** Ortak wavelength ve transmission ekseni; bandpass sınırları ve çizgi dalga boyları.
    **Kısıt:** Farklı üreticilerin normalize edilmemiş eğrileri ölçüsel karşılaştırma gibi birleştirilmez.
    **Öğrenme çıktısı:** Peak transmission ile bandpass genişliğinin farklı ölçütler olduğu okunabilmelidir.

### Broadband filtreler

Broadband filtreler görünür spektrumun görece geniş bir bölümünü geçirir. LRGB sisteminde:

- `L` geniş bir luminance aralığından yapısal sinyal toplar.
- `R`, `G` ve `B` renk bilgisini ayrı bantlarda örnekler.
- Renk filtrelerinin spektral sınırları ve aralarındaki örtüşme üretici setine göre değişir.

Broadband veri; galaksiler, yıldız kümeleri, yansıma nebulaları, karanlık nebulalar ve doğal yıldız rengi için önemlidir. Aynı zamanda Ay ışığı, hava parlaması ve yapay ışık kaynaklarından gelen geniş spektrumlu arka plana daha açıktır.

### Narrowband filtreler

Narrowband filtreler belirli emisyon çizgelerinin çevresindeki dar bir aralığı geçirir. Yaygın bantlar şunlardır:

| Filtre | Hedeflenen çizgi | Genellikle görünür olduğu yapılar |
|---|---|---|
| H-alpha (`Ha`) | İyonize hidrojen emisyonu | H II bölgeleri ve emisyon nebulaları |
| OIII | Çift iyonize oksijen emisyonu | Gezegenimsi nebula, süpernova kalıntısı ve bazı emisyon nebulaları |
| SII | İyonize sülfür emisyonu | Emisyon bölgelerindeki tamamlayıcı yapılar |

Bir hedefin katalog türü, her çizgide güçlü sinyal bulunduğunu garanti etmez. Aynı toplam süre H-alpha ve OIII kanallarında farklı SNR üretebilir. Filtre seçimi hedefin spektral içeriği ve istenen bilimsel/görsel amaçla eşleştirilir.

### Light pollution filtreleri

Işık kirliliği filtresi belirli yapay emisyon bölgelerini bastırmayı amaçlayabilir; ancak modern aydınlatmanın geniş spektrumu nedeniyle bütün ışık kirliliğini ayıran evrensel bir filtre yoktur. Filtre, hedef sinyalinin bir kısmını da kesebilir ve renk yanıtını değiştirebilir. Gradient correction ile filtreleme de aynı şey değildir: filtre acquisition sırasında spektrumu seçer, gradient correction kaydedilmiş görüntüdeki uzamsal arka plan modelini ele alır.

### Parfocal davranış

Parfocal olarak pazarlanan filtreler odak konumunu birbirine yakın tutmayı amaçlar. Gerçek sistemde filtre kalınlığına ek olarak teleskobun chromatic correction davranışı, sıcaklık ve mekanik toleranslar da odağı etkiler. “Parfocal” etiketi autofocus ihtiyacını otomatik olarak ortadan kaldırmaz; filtre değişiminden sonra yıldız ölçümüyle doğrulanmalıdır.

### Halo ve spectral leakage

Parlak yıldız çevresindeki halo; filtre kaplamaları, sensör koruyucu camı, optik yüzeyler ve bunlar arasındaki yansımaların birlikte oluşturduğu bir sistem artefaktı olabilir. Tek başına filtreyi suçlamadan hangi kanal, yıldız rengi, odak durumu ve optik konfigürasyonda oluştuğu karşılaştırılır.

Spectral leakage, filtrenin hedef bant dışında istenmeyen ışığı yeterince engelleyememesidir. Üretici transmission/blocking verileri incelenmeli; özellikle güçlü yakın kızılötesi duyarlılığı olan sensörlerde sistemin toplam spektral yanıtı dikkate alınmalıdır.

## Kavramlar nasıl ilişkilidir?

```mermaid
flowchart LR
    target["Hedefin spektrumu"] --> filter["Filtre transmission eğrisi"]
    sky["Gökyüzü ve Ay spektrumu"] --> filter
    filter --> optics["Optik sistem"]
    optics --> qe["Sensör QE eğrisi"]
    qe --> data["Kaydedilen kanal sinyali"]
    data --> plan["Poz ve entegrasyon planı"]
```

Filtre bant genişliği daraldıkça istenmeyen arka planın bir kısmı azalabilir, fakat hedef fotonlarının yalnız çizgi çevresindeki bölümü kaydedilir. Bu yüzden daha dar bandpass her veri setinde otomatik olarak daha iyi değildir. Hızlı optiklerde geliş açısı dağılımı transmission eğrisini kaydırabilir; üreticinin f-ratio verisi varsa sistemle birlikte değerlendirilir.

## Gerçek astrofotoğraf örnekleri

### Broadband galaksi

Galaksi yıldız popülasyonları ve sürekli spektrum bileşenleri içerir. LRGB yaklaşımı doğal renk ve geniş bant yapıyı korur. Güçlü ışık kirliliğinde yalnız filtreye güvenmek yerine hedef yüksekliği, Ay ayrımı, toplam entegrasyon ve [gradient tanısı](../04-gradient/gradient-diagnostics.md) birlikte planlanır.

### H II emisyon nebulası

H-alpha güçlü olabilirken OIII daha zayıf veya farklı bölgelerde yoğunlaşmış olabilir. Eşit kanal süresi yerine test karelerinin arka planı, yıldız doygunluğu ve hedef yapısı incelenerek kanal başına entegrasyon dağıtılır.

### Yansıma nebulası

Yansıma nebulası yıldız ışığının tozdan saçılmasıyla görünür ve dar emisyon çizgisine indirgenemez. Yalnız narrowband çekim, broadband yansıma ve toz bilgisini temsil etmeyebilir. Hedef türü yanlış sınıflandırılırsa uzun süre toplanmasına rağmen beklenen yapı oluşmaz.

## Yaygın kavram yanılgıları

- Daha dar filtrenin her hedefte daha yüksek SNR sağladığı düşüncesi.
- Narrowband filtrenin broadband toz ve yansıma sinyalini koruduğu varsayımı.
- Işık kirliliği filtresinin gradient correction ihtiyacını ortadan kaldırdığı inancı.
- Parfocal filtrenin autofocus gerektirmediğinin kabul edilmesi.
- Yüksek tepe transmission değerinin tek başına filtre kalitesini belirlediği düşüncesi.
- Halo’nun her durumda yalnız filtre kusuru sayılması.

## Başlangıçta yapılan hatalar

- Hedefin emisyon veya sürekli spektrum karakterini araştırmadan filtre seçmek.
- Filtre değişiminden sonra odak ve tilt kontrolünü atlamak.
- Her filtre için aynı alt poz ve toplam süreyi zorunlu kabul etmek.
- Filter wheel yuvası ve optik konfigürasyon değiştiği halde eski flat karelerini kullanmak.
- Hızlı optik sistem için bandpass shift verisini kontrol etmemek.
- OSC narrowband verisinde kanal dengesizliğini sensör Bayer yanıtından bağımsız yorumlamak.

## Pratik karar rehberi

| Hedef veya koşul | Başlangıç yaklaşımı | Neden |
|---|---|---|
| Galaksi veya yıldız kümesi | Broadband/renk setini değerlendirin | Sürekli spektrum ve yıldız rengi korunur. |
| H II emisyon nebulası | H-alpha ile hedef sinyalini doğrulayın | İyonize hidrojen yapısı baskın olabilir. |
| OIII kabuğu beklenen hedef | OIII test karesini ayrı değerlendirin | OIII dağılımı H-alpha ile aynı olmak zorunda değildir. |
| Yansıma veya karanlık nebula | Broadband veriyi önceliklendirin | Toz yapısı dar emisyon çizgisi değildir. |
| Hızlı optik sistem | Üreticinin f-ratio transmission verisini inceleyin | Geliş açısı bandpass’i kaydırabilir. |
| Parlak yıldızlarda halo | Kanalları ve optik yüzeyleri karşılaştırın | Artefakt çoğu zaman sistem etkileşimidir. |
| Güçlü Ay veya ışık kirliliği | Spektral filtreyi zamanlama ve gradient planıyla birleştirin | Filtre bütün arka plan bileşenlerini kaldıramaz. |

## PixInsight ile ilişkisi

Filtre seçimi PixInsight içinde sonradan değiştirilemez; process’ler yalnız kaydedilmiş kanallarla çalışır. Filtre bilgisi şu alanlarda önem kazanır:

- [Calibration Pipeline](../03-kalibrasyon/calibration-pipeline.md): filter metadata ve doğru master flat eşleştirmesi.
- [Color Calibration](../05-color-calibration/index.md): broadband ve narrowband verinin farklı kalibrasyon kapsamı.
- [BackgroundNeutralization](../05-color-calibration/background-neutralization-process.md): arka plan örneğinin hedef yapısından ayrılması.
- [Narrowband](../09-narrowband/index.md): kanal kombinasyonu ve palet seçenekleri.
- [Gradient Tanısı](../04-gradient/gradient-diagnostics.md): filtre geçişi ile uzamsal gradientin ayrılması.

PixelMath kombinasyonları için [Kanal Karışımları](../10-pixelmath/kanal-karisimlari.md), hedefe dayalı akış için [SHO ve HOO Narrowband](../15-workflows/sho-hoo.md) kullanılmalıdır.

Ha/OIII/SII çizgilerinin fiziksel anlamı, mono–OSC ayrımı ve target suitability için canonical [Dar Bant Görüntüleme Temelleri](../09-narrowband/index.md) sayfasına geçin. Bu sayfa genel filter/transmission teorisinin sahibi; Narrowband sayfası ise bu teorinin emisyon verisine özgü sonucunun sahibidir.

## Nereden devam edilmeli?

1. Filtreyle gelen sinyalin ölçüm kalitesi için [SNR ve Dinamik Aralık](snr-ve-dinamik-aralik.md).
2. Ay, hedef yüksekliği ve kanal süresi için [Çekim Planlama](cekim-planlama.md).
3. Renk verisinin kapsamını seçmek için [Renk Kalibrasyonuna Giriş](../05-color-calibration/index.md).
4. Hedef türüne göre uçtan uca seçimler için [İş Akışı Rehberi](../15-workflows/index.md).
5. Beklenmedik sonuçları sınıflandırmak için [Sorun Giderme](../14-hata-kutuphanesi/index.md).

## Kaynaklar

- [Chroma Technology — Astronomy and Astrophotography Filters](https://www.chroma.com/applications/astronomy-and-astrophotography/): broadband, narrowband ve transmission kapsamı.
- [Chroma Technology — Narrowband Filter f-number Data](https://www.chroma.com/resources/technical-library/narrowband-astronomy-filter-f-number-data/): optik hızla transmission eğrisi ilişkisinin ölçülmüş örnekleri.

## Önceki Bölüm

[← CMOS ve Monokrom Kamera](cmos-ve-monokrom-kamera.md)

## Sonraki Bölüm

[SNR ve Dinamik Aralık →](snr-ve-dinamik-aralik.md)
