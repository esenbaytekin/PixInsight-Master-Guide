# Dinamik Aralık ve Yerel Kontrast

!!! info "Sayfa Bilgisi"
    **Kategori:** Görüntü İşleme Temelleri · **Düzey:** Intermediate · **Tahmini okuma:** 10 dk
    **Anahtar kelimeler:** `dynamic range compression` · `local contrast` · `global contrast` · `highlight protection` · `core preservation` · `halo` · `multiscale` · `overprocessing`

## Kapsam kararı

Sensör dinamik aralığı, saturation ve acquisition SNR ilişkisi [SNR ve Dinamik Aralık](../01-temeller/snr-ve-dinamik-aralik.md) sayfasındadır. Bu sayfa görüntü işleme sırasında global/local ton ayrımı, dynamic-range compression ve ölçek bağımlı detayın görünürlüğüyle sınırlıdır.

## Temel kavramlar

### Global ve local dinamik aralık

Global dinamik aralık görüntünün en düşük ve en yüksek anlamlı değerleri arasındaki toplam aralıktır. Local dinamik aralık, sınırlı bir bölge veya uzamsal ölçekteki ton farklarını anlatır. Parlak galaksi çekirdeği ile dış halo birlikte geniş global aralık oluştururken çekirdeğin kendi içindeki spiral/toz ayrımı lokal bir problemdir.

### Dynamic-range compression

Dynamic-range compression, güçlü ve zayıf yapıları aynı sunum aralığında göstermek için parlaklık farklarını sıkıştırır. Amaç highlight’ı düzleştirmek değil, parlak bölgede iç ton ayrımını korurken zayıf bölgeleri de okunabilir bırakmaktır.

### Local contrast enhancement

Local contrast enhancement, belirli komşuluk veya ölçeklerdeki farkları artırır. Küçük ölçek yıldız ve fine noise’u, orta ölçek filament ve dust lane’i, büyük ölçek halo ve gradienti etkileyebilir. Process ölçeği gerçek hedef ölçeğiyle eşleşmezse halo, ringing veya yapay doku oluşabilir.

## Highlight ve çekirdek koruması

Parlak çekirdek daha önce acquisition veya stretch sırasında kırpıldıysa local işlem gerçek ayrıntıyı geri getiremez. Unclipped çekirdekte maske, scale selection veya kontrollü compression kullanılabilir. Koruma maskesinin sert kenarı yeni halo üretebileceği için geçişler incelenmelidir.

| Hedef | Beklenen iyileşme | Aşırı işlem işareti |
|---|---|---|
| Galaksi çekirdeği | İç yapı daha okunabilir | Düz disk veya karanlık halka |
| Nebula filamentleri | Orta ölçek ayrımı artar | Yapay kabartma ve kırık süreklilik |
| Yıldız alanı | Arka plan/yıldız ayrımı korunur | Koyu halo veya sert yıldız kenarı |
| Zayıf halo | Büyük ölçek geçiş görünür kalır | Background’dan kopuk sınır |
| Düşük-SNR bölge | Kontrollü korunur | Noise’un detay gibi güçlenmesi |

!!! note "Planlanan görsel kanıt · Dynamic range ve local contrast"
    **Kategori:** Comparison · **Durum:** Gerçek proje verisi gerekli · **Öncelik:** P0
    **Eğitim amacı:** Global stretch, dynamic-range compression ve local contrast farkını göstermek.
    **Gerekli kaynak:** Parlak çekirdek ve zayıf dış halo içeren gerçek galaksi.
    **Durumlar:** Global stretch, kontrollü compression, aşırı local contrast.
    **İşaretleme:** Core structure, halo sınırı, yıldız çevresi ve noise amplification.
    **Gerçek proje verisi:** Evet.
    **Kanıt düzeni:** Aynı full-frame ve sabit core/halo/noise crop'ları; histogram her varyantta aynı eksende.
    **Alt text özeti:** Compression'ın core ayrımını koruduğu, aşırı local contrast'ın halo ve noise'u güçlendirdiği belirtilmelidir.

## Overprocessing ve halo riski

Overprocessing tek bir “fazla kontrast” ölçüsünden ibaret değildir. Yapıların farklı ölçeklerde tutarsız hale gelmesi, doğal geçişlerin kesilmesi, noise’un filament gibi görünmesi ve yıldız çevresindeki koyu/açık halkalar birlikte değerlendirilir. Öncesi/sonrası görüntüler aynı zoom ve display koşulunda karşılaştırılmalıdır.

## Karar rehberi

| Sorun | Önce doğrula | Yaklaşım |
|---|---|---|
| Çekirdek beyaz/düz | Kanal clipping var mı? | Clipped ise önceki checkpoint’e dönün. |
| Global görüntü düz | Stretch mi local contrast mı eksik? | Histogram ve lokal yapı ayrı incelensin. |
| Filament görünmüyor | Hedef ölçeği ve SNR | Uygun scale’de kontrollü local enhancement. |
| Koyu halo oluştu | Maske kenarı ve process ölçeği | Etkiyi azaltın, geçişi yumuşatın. |
| Noise ayrıntı gibi büyüdü | Noise scale ve mask coverage | Düşük-SNR bölgeyi koruyun. |

## PixInsight ile ilişkisi

- [HDRMultiscaleTransform](../12-detay-ve-kontrast/hdr-multiscale-transform.md): multiscale dynamic-range compression process’i.
- [LocalHistogramEqualization](../12-detay-ve-kontrast/local-histogram-equalization.md): belirli kernel/ölçek bağlamında local contrast process’i.
- [CurvesTransformation](../13-final/curves-transformation.md): global tonal eğri ve final kontrast.
- [Maske Mantığı](../11-maskeler/maske-mantigi.md): etki alanı ve geçiş kontrolü.
- [Detay ve Kontrast](../12-detay-ve-kontrast/index.md): process seçiminin workflow kapsamı.

## Yaygın yanlış anlamalar

- Dynamic-range compression’ın acquisition clipping’i geri getirdiğini sanmak.
- Daha yüksek local contrast’ı daha fazla gerçek ayrıntı kabul etmek.
- Tek process ölçeğinin bütün yapıları aynı anda temsil ettiğini düşünmek.
- Halo’yu yalnız yıldız azaltma sorunu saymak.
- Maskenin sert kenarının sonuçta görünmeyeceğini varsaymak.
- Global histogram benzerse iki görüntünün local contrast’ının da aynı olduğunu düşünmek.

## Kaynaklar

- [PixInsight — An Introduction to PixInsight](https://pixinsight.com/astrophotocl/outreach/pixinsight_eccai_2006.pdf)
- [PixInsight Forum — HDR processing and LocalHistogramEqualization](https://pixinsight.com/forum/index.php?threads/m101-hdr-processing-startools-vs-pixinsight.4286/)

## Önceki Bölüm

[← Renk ve Kanallar](renk-ve-kanallar.md)

## Sonraki Bölüm

[PixInsight Temelleri →](index.md)
