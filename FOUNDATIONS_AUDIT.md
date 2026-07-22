# Phase 7.1 Foundations Audit

Bu kayıt, Phase 7.1 başlangıcında mevcut 11 Foundations sayfasının eğitim domain'i, kapsam uyumu ve olgunluk durumunu sınıflandırır. Audit bir taşıma talimatı değildir; canonical URL değişiklikleri ayrı inceleme ve redirect planı olmadan uygulanmaz.

## Domain sınıflandırması

| Sayfa | Mevcut konu | Önerilen domain | Başlık–içerik uyumu | Tekrar / sınır sorunu | Durum | Önerilen işlem |
| --- | --- | --- | --- | --- | --- | --- |
| `01-temeller/index.md` | Genel bölüm girişi | Foundations üst girişi | Başlangıçta zayıf | Generic process şablonuydu | Phase 7.1'de yenilendi | Üç domain ve öğrenme yolunun canonical giriş sayfası olarak koru |
| `01-temeller/cmos-ve-monokrom-kamera.md` | Kamera temelleri | Astrofotoğraf Temelleri | Düşük | Konuyla ilgisiz process şablonu tekrar ediyor | Taslak | Gain, offset, read noise, full well, sampling ve pixel scale çevresinde yeniden yaz |
| `01-temeller/filtreler.md` | Filtre temelleri | Astrofotoğraf Temelleri | Düşük | Konuyla ilgisiz process şablonu tekrar ediyor | Taslak | Bandpass, throughput, broadband/narrowband ve hedef–filtre ilişkisini öğret |
| `01-temeller/snr-ve-dinamik-aralik.md` | SNR ve dynamic range | Astrofotoğraf Temelleri | Düşük | Konuyla ilgisiz process şablonu tekrar ediyor | Taslak | Signal, noise kaynakları, stacking ve clipping sınırlarını ayır |
| `01-temeller/cekim-planlama.md` | Çekim planlama | Astrofotoğraf Temelleri | Düşük | Konuyla ilgisiz process şablonu tekrar ediyor | Taslak | Hedef görünürlüğü, weather, Moon, exposure ve calibration planını kapsa |
| `02-pixinsight-temelleri/index.md` | PixInsight çalışma modeli | PixInsight Temelleri | Yüksek | Belirgin duplicate yok | Olgun | PixInsight domain giriş sayfası olarak koru |
| `02-pixinsight-temelleri/workspace.md` | Workspace ve image view yönetimi | PixInsight Temelleri | Yüksek | Belirgin duplicate yok | Olgun | Canonical URL ve kapsamı koru |
| `02-pixinsight-temelleri/stf.md` | STF görüntüleme dönüşümü | PixInsight Temelleri | Yüksek | Histogram sayfasıyla gerekli kavramsal temas var | Olgun | Screen-only davranışı process belgelerine bağlayarak koru |
| `02-pixinsight-temelleri/histogram.md` | Histogram kavramı ve HistogramTransformation | Görüntü İşleme Temelleri + Process | Orta | `07-stretch/histogram-transformation.md` ile process kapsamı kısmen örtüşüyor | Olgun fakat karma | URL'yi koru; Phase 7.2'de kavram/process sınırını belirle ve process ayrıntısını canonical process sayfasına yönlendir |
| `02-pixinsight-temelleri/preview-clone-history.md` | Preview, Clone, History Explorer | PixInsight Temelleri | Yüksek | Belirgin duplicate yok | Olgun | Canonical URL ve kapsamı koru |
| `02-pixinsight-temelleri/process-icons.md` | Process Icons ve ProcessContainer | PixInsight Temelleri | Yüksek | ProcessContainer davranışıyla bilinçli karşılaştırma | Olgun | Canonical URL ve kapsamı koru |

## Draft içerik denetimi

| Sayfa | Tahmini tamamlanma | Domain | Öncelik | Temel eksik |
| --- | ---: | --- | --- | --- |
| `cmos-ve-monokrom-kamera.md` | %20 | Astrofotoğraf Temelleri | Yüksek | Sensor fiziği, gain/offset, read noise, full well, sampling |
| `filtreler.md` | %20 | Astrofotoğraf Temelleri | Yüksek | Bandpass, transmission, broadband/narrowband ve hedef seçimi |
| `snr-ve-dinamik-aralik.md` | %20 | Astrofotoğraf Temelleri | Kritik | Signal/noise modeli, integration etkisi, clipping ve dynamic range |
| `cekim-planlama.md` | %20 | Astrofotoğraf Temelleri | Yüksek | Visibility, Moon, weather, exposure ve calibration planı |
| `histogram.md` | %85 | Karma domain | Orta | Evrensel kavram ile process tutorial sınırının netleştirilmesi |

`Doğrulama bekliyor` işaretleri beş Astrofotoğraf Temelleri sayfasında gerçek sürüm belirsizliğinden değil, yanlış process şablonundan kaynaklanır. Yeniden yazımda belirsiz menü/parametre bölümleri doldurulmak yerine kaldırılmalıdır.

## Duplicate kavramlar

1. Dört Astrofotoğraf Temelleri sayfası aynı generic process metnini tekrar eder; bu teknik duplicate değil, yapısal placeholder tekraridir.
2. `histogram.md`, histogram teorisinin yanında HistogramTransformation kullanımını da anlatır; `07-stretch/histogram-transformation.md` ile process düzeyinde kısmi örtüşme vardır.
3. `stf.md` ile `histogram.md` arasındaki görünüm–veri dönüşümü karşılaştırması bilinçli ve eğitim açısından gereklidir; duplicate sayılmamalıdır.

## Canonical URL kararı

- 11 mevcut URL'nin tamamı korunur.
- Phase 7.1'de dosya taşınmaz, slug değiştirilmez ve redirect oluşturulmaz.
- `histogram.md` ayrıştırılırsa mevcut URL kavramsal authority olarak korunmalı; process ayrıntısı mevcut `07-stretch/histogram-transformation.md` sayfasına taşınmalıdır.

## Diagram önerileri

| Öncelik | Sayfa / konu | Önerilen diagram | Gerekçe |
| --- | --- | --- | --- |
| Yüksek | Foundations girişi | Astrofotoğraf → görüntü işleme → PixInsight → process → workflow → troubleshooting | Kullanıcının bilgi yolculuğunu tek bakışta gösterir; Phase 7.1'de eklendi |
| Yüksek | Linear ve nonlinear görüntü | Transfer sonrası veri durumu | STF ile kalıcı stretch ayrımının ön koşulu |
| Yüksek | Signal ve noise | Signal, shot noise, read noise ve background bileşimi | SNR kararlarını neden–sonuç ilişkisine bağlar |
| Yüksek | Calibration flow | Light ve calibration frames yaşam döngüsü | Astrofotoğraf kavramından process pipeline'a geçişi gösterir |
| Orta | Mask polarity | Beyaz/gri/siyah etki yönü | Mevcut maske teorisini başlangıç düzeyinde destekler |
| Orta | Histogram | Black point, midtones ve white point ilişkisi | Tonal dönüşümü process UI'dan bağımsız açıklar |
| Düşük | Workspace | Pencere hiyerarşisi | Mevcut Mermaid diyagramları nedeniyle ek değer sınırlı |

## Görsel önerileri

| Öncelik | Sayfa | Görsel türü | Öneri |
| --- | --- | --- | --- |
| Yüksek | CMOS ve Monokrom Kamera | Basit illustration | Pixel, full well, read noise ve ADC ilişkisi |
| Yüksek | Filtreler | Karşılaştırma grafiği | LRGB ve narrowband transmission eğrileri |
| Yüksek | SNR ve Dinamik Aralık | Comparison image | Tek subframe ve artan integration süresi karşılaştırması |
| Yüksek | Linear / nonlinear | Before/After | Aynı lineer master'ın STF görünümü ve kalıcı stretch sonucu |
| Orta | Çekim Planlama | Annotated planning view | Target altitude, Moon separation ve çekim penceresi |
| Orta | Preview, Clone ve History | Annotated screenshot | Preview, Clone ve History Explorer rollerinin tek workspace üzerinde gösterimi |
| Orta | Process Icons | Annotated screenshot | Process instance ile ProcessContainer farkı |

Bu sprintte yeni görsel asset oluşturulmamıştır.

## Önerilen yeni sayfalar

Yeni sayfa açılmadan önce mevcut canonical içerikle kapsam sınırı belirlenmelidir:

1. `linear-ve-nonlinear-goruntu.md` — evrensel veri durumu; STF veya HistogramTransformation tutorial'ı içermez.
2. `signal-ve-noise.md` — SNR sayfası yeterli kapsam sağlayamazsa image-processing noise modeli.
3. `sampling-seeing-ve-pixel-scale.md` — kamera sayfasını aşırı büyütmeden optik–sensor örnekleme ilişkisi.

Gradient için `04-gradient/gradient-theory.md`, mask için `11-maskeler/maske-mantigi.md` zaten canonical kavram sayfalarıdır; ikinci foundations kopyaları oluşturulmamalıdır.

## Arama ve keşfedilebilirlik

| Arama niyeti | Yönlendirilmesi gereken conceptual sayfa | Phase 7.1 işlemi |
| --- | --- | --- |
| Histogram, Linear | `02-pixinsight-temelleri/histogram.md` | Görüntü İşleme Temelleri grubuna alındı |
| Noise, SNR | `01-temeller/snr-ve-dinamik-aralik.md` | Türkçe/İngilizce metadata terimleri genişletildi |
| Gain, CMOS | `01-temeller/cmos-ve-monokrom-kamera.md` | Gain, offset, read noise, full well, sampling ve pixel scale metadata'sı eklendi |
| Mask | `11-maskeler/maske-mantigi.md` | Mevcut canonical concept sayfası korundu; yeni kopya önerilmedi |
| Gradient | `04-gradient/gradient-theory.md` | Mevcut canonical concept sayfası korundu; yeni kopya önerilmedi |
| Preview | `02-pixinsight-temelleri/preview-clone-history.md` | PixInsight Temelleri grubunda görünür tutuldu |
| Workspace | `02-pixinsight-temelleri/workspace.md` | PixInsight Temelleri grubunda görünür tutuldu |

Search index üretimi, Phase 7.1 anahtar kelimeleri ve tüm hedef dosyaların index içinde bulunması build doğrulamasında kontrol edilmelidir. Arama sıralaması istemci tarafındaki Material search motoruna bağlıdır; yalnız doküman sırası ranking garantisi olarak yorumlanmamalıdır.

## Phase 7.2 önerisi

1. Dört Astrofotoğraf Temelleri taslağını ortak educational template ile yeniden yaz.
2. Histogram theory ile HistogramTransformation process kapsamını ayrıştır.
3. Linear/nonlinear ve signal/noise için yeni sayfa gereksinimini mevcut sayfalarla karşılaştırmalı incele.
4. Yüksek öncelikli üç diagram ve dört görsel için evidence/asset planı hazırla.
