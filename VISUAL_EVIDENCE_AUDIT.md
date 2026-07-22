# Phase 7.6 Educational Visual Evidence Audit

## Denetim özeti

Bu denetim 14 açık `TODO Illustration` kaydı ile Phase 7.5'te tanımlanan 17 workflow görsel kanıt planını kapsar. Toplam **31 plan** incelenmiştir. Repository'de ayrıca UI validation amacıyla **115 PNG** bulunur; toplam boyut yaklaşık **9.2 MiB**, 1 MiB üzerindeki dosya sayısı **0**'dır. Bu UI görüntüleri process controls için kanıttır, gerçek astronomik before/after kanıtı değildir.

Bu sprintte gerçek project dataset sağlanmadığı için bilimsel illüstrasyon tamamlanmış sayılmamıştır. Açık `TODO Illustration` etiketleri kaldırılmış, her biri soru, kategori, girdi ve kabul ölçütü belirten `Planlanan görsel kanıt` sözleşmesine dönüştürülmüştür.

## Illustration plan envanteri

| Sayfa | Illustration topic | Priority | Real dataset? | PI screenshot? | Histogram? | Crop? | Diagram? | Before/After? | Difficulty | Educational value |
|---|---|---:|---|---|---|---|---|---|---|---|
| `01-temeller/cekim-planlama.md` | Ay–hedef–ufuk geometrisi | P2 | Hayır | Hayır | Hayır | Hayır | Evet | Hayır | Orta | Çekim penceresi kararını açıklar |
| `01-temeller/cekim-planlama.md` | Acquisition zaman çizelgesi | P1 | Evet | Hayır | Hayır | Hayır | Evet | Evet | Yüksek | Overhead ve net integration farkını doğrular |
| `01-temeller/cmos-ve-monokrom-kamera.md` | CMOS sinyal zinciri | P2 | Hayır | Hayır | Hayır | Hayır | Evet | Hayır | Orta | Foton–elektron–ADU ilişkisini açıklar |
| `01-temeller/cmos-ve-monokrom-kamera.md` | Sampling karşılaştırması | P2 | Hayır | Hayır | Hayır | Evet | Evet | Hayır | Orta | Pixel scale yanılgısını gösterir |
| `01-temeller/filtreler.md` | Filter transmission | P1 | Kaynak verisi | Hayır | Hayır | Hayır | Evet | Hayır | Yüksek | Bandpass ve peak ayrımını gösterir |
| `01-temeller/snr-ve-dinamik-aralik.md` | Düşük/orta/yüksek SNR | P1 | Tercihen evet | Hayır | Evet | Evet | Hayır | Evet | Yüksek | Signal/noise ayrımını ortaya çıkarır |
| `02-pixinsight-temelleri/dinamik-aralik-ve-yerel-kontrast.md` | Compression ve local contrast | P0 | Evet | Hayır | Evet | Evet | Hayır | Evet | Yüksek | Overprocessing'i tanılar |
| `02-pixinsight-temelleri/histogram.md` | Shadow/highlight clipping | P0 | Evet | İsteğe bağlı | Evet | Evet | Hayır | Evet | Orta | Geri döndürülemez clipping'i gösterir |
| `02-pixinsight-temelleri/lineer-ve-nonlineer-goruntu.md` | Lineer, STF, permanent stretch | P0 | Evet | Evet | Evet | Evet | Hayır | Evet | Orta | Display ile data değişimini ayırır |
| `02-pixinsight-temelleri/renk-ve-kanallar.md` | RGB/L/chrominance | P1 | Evet | Hayır | Evet | Evet | Hayır | Evet | Yüksek | Kanal rollerini karşılaştırır |
| `02-pixinsight-temelleri/sinyal-ve-gurultu.md` | Fine noise, walking noise, filament | P0 | Evet | Hayır | İsteğe bağlı | Evet | Hayır | Evet | Yüksek | Noise'u gerçek yapıdan ayırır |
| `02-pixinsight-temelleri/stretch-temelleri.md` | Kontrollü/aşırı stretch | P0 | Evet | Evet | Evet | Evet | Hayır | Evet | Orta | Stretch kabul kapısını doğrular |
| `04-gradient/gradient-theory.md` | Gerçek nebulosity ve model | P0 | Evet | Evet | İsteğe bağlı | Evet | Hayır | Evet | Çok yüksek | Gradient overfit'i tanılar |
| `11-maskeler/maske-mantigi.md` | Mask polarity ve transition | P0 | Evet | Evet | Hayır | Evet | Hayır | Evet | Orta | Yanlış polarity'yi görünür kılar |

## Workflow evidence envanteri

| Sayfa | Illustration topic | Priority | Real dataset? | PI screenshot? | Histogram? | Crop? | Diagram? | Before/After? | Difficulty | Educational value |
|---|---|---:|---|---|---|---|---|---|---|---|
| `20-uygulamalar/index.md` | A/B/C dataset kanıt matrisi | P1 | Evet | Hayır | Evet | Evet | İsteğe bağlı | Evet | Yüksek | Proje seçimini destekler |
| `m31-lrgb-ha/index.md` | M31 bütün workflow checkpoint'leri | P1 | Evet | Evet | Evet | Evet | Hayır | Evet | Çok yüksek | Zincir geçişlerini doğrular |
| `m31-lrgb-ha/01-veri-ve-hedef.md` | Master ve metadata paneli | P1 | Evet | Evet | Evet | Evet | Hayır | Hayır | Orta | Input integrity'yi doğrular |
| `m31-lrgb-ha/02-wbpp.md` | Calibration/rejection/registration | P1 | Evet | Evet | İsteğe bağlı | Evet | Hayır | Evet | Yüksek | Master kabulünü doğrular |
| `m31-lrgb-ha/03-dbe-spcc.md` | Model, corrected image ve color | P0 | Evet | Evet | İsteğe bağlı | Evet | Hayır | Evet | Çok yüksek | Halo kaybı ve overfit'i tanılar |
| `m31-lrgb-ha/04-blurx-noisex.md` | Restorasyon ve noise reduction | P1 | Evet | Evet | Hayır | Evet | Hayır | Evet | Yüksek | Plugin kararını doğrular |
| `m31-lrgb-ha/05-stretch.md` | L/RGB stretch ve core | P0 | Evet | Evet | Evet | Evet | Hayır | Evet | Yüksek | Core clipping'i tanılar |
| `m31-lrgb-ha/06-lrgb.md` | RGB-only ve LRGB | P1 | Evet | Evet | Evet | Evet | Hayır | Evet | Yüksek | Luminance etkisini karşılaştırır |
| `m31-lrgb-ha/07-ha-entegrasyonu.md` | HII/star mask ve Ha blend | P0 | Evet | Evet | İsteğe bağlı | Evet | Hayır | Evet | Çok yüksek | Global red ve magenta stars'ı tanılar |
| `m31-lrgb-ha/08-final.md` | Final QC ve export | P1 | Evet | Evet | Evet | Evet | Hayır | Evet | Yüksek | Teslim kararını doğrular |
| `ngc6888-sho/index.md` | Weak-OIII bütün workflow'u | P1 | Evet | Evet | Evet | Evet | Hayır | Evet | Çok yüksek | HOO/SHO dalını destekler |
| `ngc6888-sho/01-veri-ve-hedef.md` | Ha/OIII/SII input kanıtı | P1 | Evet | Evet | Evet | Evet | Hayır | Hayır | Orta | Weak-channel gerçeğini doğrular |
| `ngc6888-sho/02-kanal-hazirlama.md` | Normalization/LinearFit | P0 | Evet | Evet | Evet | Evet | Hayır | Evet | Yüksek | Washed-out görünümü tanılar |
| `ngc6888-sho/03-sho-kombinasyonu.md` | HOO/SHO palette comparison | P1 | Evet | Evet | İsteğe bağlı | Evet | Hayır | Evet | Yüksek | Palette kararını destekler |
| `ngc6888-sho/04-maskeler.md` | OIII/background/star masks | P0 | Evet | Evet | Hayır | Evet | Hayır | Evet | Yüksek | Mask polarity ve seçim hatasını tanılar |
| `ngc6888-sho/05-oiii-koruma.md` | LHE öncesi/sonrası OIII | P0 | Evet | Evet | İsteğe bağlı | Evet | Hayır | Evet | Çok yüksek | Destroyed OIII/noise amplification'ı gösterir |
| `ngc6888-sho/06-final.md` | Stars/starless/recombined | P0 | Evet | Evet | Evet | Evet | Hayır | Evet | Çok yüksek | Black halo ve residual'ı tanılar |

!!! note "Yol kısaltması"
    `m31-lrgb-ha/` ve `ngc6888-sho/` satırları `docs/20-uygulamalar/` altındadır. Canonical URL veya navigation değişikliği yapılmamıştır.

## Visual standards özeti

Kalıcı standardın canonical sahibi `STYLE_GUIDE.md` dosyasındaki **Eğitim Görsel Kanıt Standardı** bölümüdür. Temel sözleşme:

1. Her görsel tam bir evidence category taşır.
2. Before/after yalnız aynı orientation, crop, zoom, state ve histogram bağlamında karşılaştırılır.
3. Caption gözlem ile nedeni ayırır; common mistake'i belirtir.
4. Crop, full-frame üzerindeki konumu ve seçilme nedenini kaydeder.
5. Annotation hem light hem dark theme'de kontrastlıdır ve yalnız renge dayanmaz.
6. UI screenshot yalnız control kanıtıdır; output davranışını veya bilimsel sonucu tek başına doğrulamaz.
7. WebP fotoğrafik kanıt için, PNG pixel-exact UI ve lossless tanı için kullanılır.

## Canonical dataset library

### Dataset A — NGC 6888 weak OIII

| Alan | Kayıt |
|---|---|
| Target | NGC 6888 |
| Equipment | Repository kaydında mevcut değil |
| Filters | Ha ve OIII bekleniyor; SII varlığı doğrulanmalı |
| Exposure | Repository kaydında mevcut değil |
| Integration | Repository kaydında mevcut değil |
| Processing goal | Weak OIII preservation, HOO/SHO branch, mask ve LHE riskleri |
| Known limitations | OIII düşük SNR senaryosu; gerçek measurement gerekli |
| Required evidence | Channel masters, histogram, fixed shell/background/star crops, mask, LHE ve recombination karşılaştırmaları |

### Dataset B — M31 LRGB + Ha

| Alan | Kayıt |
|---|---|
| Target | M31 |
| Equipment | Repository kaydında mevcut değil |
| Filters | L, R, G, B ve Ha bekleniyor |
| Exposure | Repository kaydında mevcut değil |
| Integration | Repository kaydında mevcut değil |
| Processing goal | Core/dust/star color protection ve local Ha contribution |
| Known limitations | Channel SNR, PSF, seeing, clipping ve gradient ölçülmeli |
| Required evidence | Master panel, DBE model, stretch histograms, LRGB/Ha masks, core/dust/HII/star crops |

### Dataset C — High-SNR SHO

| Alan | Kayıt |
|---|---|
| Target | Repository kaydında mevcut değil |
| Equipment | Repository kaydında mevcut değil |
| Filters | SII, Ha ve OIII gerekli |
| Exposure | Repository kaydında mevcut değil |
| Integration | Repository kaydında mevcut değil |
| Processing goal | Channel weighting, SHO/alternative palette, synthetic luminance ve starless comparison |
| Known limitations | Gerçek high-SNR dataset henüz repository'de tanımlı değil |
| Required evidence | Normalized masters, palette variants, synthetic-L comparison, stars/starless/residual/recombined panels |

Dataset kartları gerçek acquisition log, metadata, data owner ve kullanım izni olmadan **kanıt için hazır** sayılmaz.

## Before/after ve workflow evidence sözleşmesi

Her kanıt kaydı şu sırayı taşır:

| Alan | Zorunlu içerik |
|---|---|
| Dataset | Canonical dataset kimliği ve doğrulanmış metadata kaynağı |
| Stage | Workflow checkpoint adı ve image state |
| Before | İşlem öncesi XISF/checkpoint kimliği |
| After | Yalnız tanımlı kararın değiştiği çıktı |
| Observed difference | Pixel/structure/histogram üzerinde gözlenen fark |
| What changed? | Process, mask, expression veya state değişimi |
| Why? | Kararı destekleyen ölçüt |
| Common mistake | Yanlış yorum veya overprocessing belirtisi |
| Validation | Full-frame ve sabit crop kabul ölçütü |

## Failure library kanıt standardı

| Failure | Gerekli paneller | Ana gözlem |
|---|---|---|
| Gradient overcorrection | Before/model/after + signal crop | Modelde gerçek yapı ve corrected image'da koyu çukur |
| Black/white clipping | Görüntü + aynı eksenli histogram | Kuyruk değerlerinin sınırda yığılması |
| Destroyed OIII | OIII source/palette/before-after crop | Shell continuity kaybı; noise ile signal ayrımı |
| Green SHO / red HOO | Raw mapping/final + channel panels | Displayed color ile physical channel farkı |
| Magenta stars | Broadband star reference/blend crop | Star core/halo renk sapması |
| Black halos | Stars/starless/residual/recombined | Koyu konturun hangi katmanda başladığı |
| Poor masks | Mask/overlay/inverted/test result | Polarity, all-white selection veya sert transition |
| Overprocessed core | Before/after + histogram/core crop | Ton katmanlarının düzleşmesi veya clipping |
| Noise amplification | Before/after + background/signal crops | Noise büyürken gerçek structure continuity'nin değişmesi |

## Asset ve erişilebilirlik sonucu

- Documentation içinde kullanılan eğitim görseli: yalnız proje logosu; yeni bilimsel görsel eklenmedi.
- UI validation varlıkları: 115 PNG, yaklaşık 9.2 MiB.
- 1 MiB üzerindeki asset: 0.
- Yeni kırık asset reference: 0.
- Yeni image reference: 0; dolayısıyla alt text gerektiren yeni image eklenmedi.
- Planlanan her görsel için caption/alt-text eğitim hedefi tanımlandı.

## Kalan işler ve Phase 7.7 önerisi

1. Dataset A/B/C için owner, izin, acquisition log ve doğrulanmış metadata kaydını tamamlayın.
2. Önce P0 kanıtları üretin: clipping, STF/data state, mask polarity, gradient overfit, M31 Ha blend, weak-OIII LHE ve recombination halo.
3. Aynı koordinatları kullanan crop manifestleri oluşturun; before/after dosyalarını WebP, UI panellerini gerektiğinde PNG üretin.
4. Görseller sayfalara eklenince alt text, caption, dark/light theme, mobile overflow ve asset boyutlarını yeniden doğrulayın.
5. Gerçek-data execution kanıtını UI validation'dan ayrı sürümleyin; placeholder'ı ancak bütün kabul ölçütleri geçtiğinde kaldırın.
