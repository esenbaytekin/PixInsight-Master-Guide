# LRGB + Ha Galaksi İş Akışı

!!! info "Sayfa Bilgisi"
    **Kategori:** Uygulamalı İş Akışları · **Düzey:** Advanced · **Tahmini okuma:** 3 dk
    **Anahtar kelimeler:** `LRGB + Ha Galaksi` · `LRGB Ha` · `H-alpha galaxy` · `workflow` · `iş akışı` · `image processing` · `LRGB` · `Ha`

## Amaç

Natural broadband galaxy color'u korurken Ha star-forming regions sinyalini kontrollü eklemek; M31 tipi hedeflerde dust lane ve star color'u bozmamak.

## Veri Seti Varsayımları

Registered LRGB ve Ha masters, matched geometry, güvenilir Ha signal ve clipped olmayan galaxy core. Required calibration frames her filter/exposure koşuluyla eşleşir. Expected integration quality, Ha knots'ın background noise'dan ayrılmasını gerektirir.

## Pozlama Stratejisi ve işleme felsefesi

Ha exposure, yalnız parlak HII regions değil zayıf yapı için yeterli SNR sağlamalıdır. Broadband RGB natural color referansıdır; Ha, tüm red channel'ın yerine geçirilmez. PixelMath, kanal normalization ve star removal/halo kontrolü tamamlanana kadar ertelenir.

## Tam İşlem Sırası

1. LRGB ve Ha'yı ayrı [calibration/integration](../03-kalibrasyon/calibration-pipeline.md) akışlarında üretin.
2. Tüm masters'ı ortak geometriye register edin; PSF farkını ölçün.
3. Her master'da gradient düzeltin; galaxy halo'yu background sanmayın.
4. RGB combine + SPCC; Ha'yı color calibration reference olarak zorlamayın.
5. Linear NR/restoration; Ha structure mask üretin.
6. LRGB baseline oluşturun ve checkpoint alın.
7. [PixelMath HaRGB](../08-lrgb/pixelmath-lrgb.md) testlerini clone üzerinde yapın.
8. Stars/halo ve galaxy core'u maskelerle koruyun.
9. Curves, selective saturation ve export proof.

## Karar Kontrol Noktaları ve dallar

```mermaid
flowchart TD
    A["LRGB baseline ve Ha master"] --> B{"Ha signal güvenilir mi?"}
    B -->|"Hayır"| C["Ha ekleme; LRGB final veya daha fazla veri"]
    B -->|"Evet"| D{"PSF/geometry uyumlu mu?"}
    D -->|"Hayır"| E["Registration ve PSF match"]
    D -->|"Evet"| F["Maskeli Ha blend"]
    F --> G{"Stars magenta veya halo mu?"}
    G -->|"Evet"| H["Star removal/mask ve weight revizyonu"]
    G -->|"Hayır"| I["Dust lane ve natural color kontrolü"]
```

- **Weak Ha:** Weight artırmak yerine Ha'yı daha güçlü denoise/stretch etmenin sinyal kaybı riskini değerlendirin; gerekirse blend'i erteleyin.
- **Strong moonlight in Ha:** Background model güvenilir değilse Ha contribution uygulanmaz.
- **No luminance:** RGB + Ha workflow yapılabilir; RGB luminance/synthetic L değerlendirilir.

## Maske, PixelMath, detay ve son işlemler

Ha structure mask yalnız gerçek emission knots'ı seçer; StarMask stellar Ha contribution'ı kontrol eder. PixelMath expression sabit reçete değildir; Ha normalization ve output range test edilir. LHE dust lane ve arms için, HDRMT yalnız unclipped core için uygulanır. Curves final natural color dengesini geri kurar.

## Görsel Kontrol Noktaları

| Adım | Beklenen | Uyarı işaretleri | Düzeltme |
|---|---|---|---|
| Ha master | HII knots background'dan ayrılır | Blotchy noise, halo | Integration/NR veya daha fazla veri |
| Blend | HII bölgeleri artar, continuum korunur | Tüm galaxy kırmızı | Mask/weight azalt |
| Stars | Broadband star color korunur | Magenta/red halo | StarMask/PSF düzelt |
| Final | Ha doğal yapıya gömülür | Neon knots, dust loss | Curves/blend checkpoint |

## Uygulamalı Sorun Giderme

| Hata | Neden | Düzeltici eylem | Tam yeniden işleme? |
|---|---|---|---|
| Ha kayboluyor | Weight/mask çok düşük veya NR | Ha master ve blend mask kontrolü | Partial |
| Red contamination | Global Ha addition | Structure mask ve normalization | Hayır |
| Star halo | PSF farkı/stellar Ha | PSF match ve star exclusion | Partial |
| Dust lane zayıf | Red contrast baskın | Luminance structure ve Curves revizyonu | Hayır |

## Pratik Karar Rehberi

| Durum | Öneri | Gerekçe |
|---|---|---|
| Strong clean Ha | Maskeli düşük contribution | Natural RGB'yi korur |
| Weak Ha | Blend'i geciktir | Noise'u emission sanmayı önler |
| Bright stars | StarMask before PixelMath | Magenta halo riskini azaltır |
| Galaxy core clipped | Short exposure/HDR source | İşlem kayıp veriyi getiremez |

## Beklenen Görsel Sonuç

Intermediate: LRGB tek başına tamamlanabilir kaliteye sahip, Ha maskesinde yalnız güvenilir emission görünür. Final: HII regions belirgin ama galaxy bütünü kırmızı değildir; star color ve dust lane korunur. Under-processing Ha etkisiz; over-processing neon red knots ve magenta stars üretir.

## Tahmini Emek

Calibration 25–45 dk; gradient/color 20–35 dk; LRGB baseline 30–45 dk; Ha blend testleri 25–50 dk; final/export 20–35 dk aktif süre.

## Beklenen Sonuç, sınırlamalar, ilgili iş akışları ve kaynaklar

Sınırlamalar: Ha ile broadband filter bandpass farkı, PSF mismatch ve low SNR. Gerçek M31 veri ayrıntıları için [M31 LRGB + Ha uygulaması](../20-uygulamalar/m31-lrgb-ha/index.md).

[LRGB Galaxy](lrgb-galaxy.md) · [PixelMath](../10-pixelmath/index.md) · [Maskeler](../11-maskeler/index.md)

## Kanıt Düzeyi

Registration, source normalization ve maskeli blend sırası **Verified Workflow**; Ha contribution seçimi **Practical Recommendation** düzeyindedir.

## Kullanılan Süreçler

- [WBPP](../03-kalibrasyon/wbpp.md)
- [DBE](../04-gradient/dbe.md)
- [SPCC](../05-color-calibration/spcc.md)
- [BlurXTerminator](../06-ai-eklentileri/blurxterminator.md)
- [HistogramTransformation](../07-stretch/histogram-transformation.md)
- [PixelMath](../10-pixelmath/kanal-karisimlari.md)
- [StarMask](../11-maskeler/star-mask.md)
- [CurvesTransformation](../13-final/curves-transformation.md)

## Önceki Bölüm

[← LRGB Galaksi](lrgb-galaxy.md)

## Sonraki Bölüm

[Broadband Yansıma ve Karanlık Nebula →](broadband-nebula.md)
