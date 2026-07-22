# M31: Kalibrasyon ve Entegrasyon Kapısı

!!! info "Sayfa Bilgisi"
    **Kategori:** Proje İş Akışı · **Düzey:** Advanced · **Tahmini okuma:** 5 dk
    **Anahtar kelimeler:** `M31 WBPP` · `kalibrasyon` · `entegrasyon` · `rejection` · `weighting`

## Amaç

LRGB ve Ha master'larını sonraki karşılaştırmaları geçerli kılacak kalibrasyon, registration ve integration durumuna getirmek. Bu sayfa WBPP parametrelerini tekrar etmez; [WBPP](../../03-kalibrasyon/wbpp.md) canonical sahibidir.

## Gerekli giriş verileri

Light dosyaları, acquisition koşullarıyla eşleşen calibration masters veya bunları üretecek kareler, filter kimliği ve seçilmiş registration reference. Eksik calibration verisi, “WBPP tamamlandı” etiketiyle gizlenmez.

## Adım adım karar noktaları

1. Dosyaları filter ve exposure metadata'ya göre gruplandırın; yanlış grubu düzeltmeden çalıştırmayın.
2. Calibration sonrası tek kareleri residual amp glow, dust shadow, hot/cold pixel ve pedestal/clipping açısından inceleyin.
3. Registration reference'ı yalnız en parlak kare diye değil star profile, distortion ve coverage ile seçin.
4. Integration weight ve rejection'ı subframe sayısı, SNR ve artefakt türüne göre değerlendirin; tek algoritmayı evrensel ilan etmeyin.
5. Rejection maps üzerinde uydu izi giderilmiş mi, gerçek core veya yıldız yapısı reddedilmiş mi kontrol edin.

| Kapı | Geçer | Kalırsa yapılacak |
|---|---|---|
| Calibration | Sabit desen ve optik izler kontrol altında | Master eşleşmesi / calibration ayarı |
| Registration | Yıldız ve frame geometry uyumlu | Reference / distortion / interpolation incelemesi |
| Integration | Rejection gerçek artefaktı ayırıyor | Rejection ve weight stratejisi |
| Master karşılaştırma | Kanallar tanımlı ve lineer | Metadata / dosya eşleme düzeltmesi |

## Sık görülen hatalar ve sorun giderme

- **Walking noise:** Final master'da yönlü iz varsa yalnız denoise etmeyin; dither ve rejection geçmişini değerlendirin.
- **Uydu izi:** Rejection map'te iz yoksa subframe sayısı ve rejection uygunluğunu inceleyin.
- **Şişmiş Ha yıldızları:** Seeing/filter halo/registration ayrımını sonraki blend'den önce yapın.
- **Düşük kaliteli L subframe:** Weight'in gerçekten düşürüp düşürmediğini ölçün; parlaklığı kalite sanmayın.

## Beklenen ara sonuç ve durma ölçütü

Beş lineer master ortak geometry'ye sahip; rejection, edge ve star crop kontrollerini geçmiş olmalıdır. Gerçek yapı rejection map'e giriyorsa veya kanal geometry'si uyuşmuyorsa ilerlemeyin.

## Görsel kanıt planı

Calibration öncesi/sonrası crop, registration blink, weight dağılımı, low/high rejection maps ve beş master paneli.

## İlgili process sayfaları

[ImageCalibration](../../03-kalibrasyon/image-calibration.md) · [CosmeticCorrection](../../03-kalibrasyon/cosmetic-correction.md) · [StarAlignment](../../03-kalibrasyon/star-alignment.md) · [ImageIntegration](../../03-kalibrasyon/image-integration.md)

## Önceki / Sonraki

[← Veri ve hedef](01-veri-ve-hedef.md) · [DBE ve SPCC →](03-dbe-spcc.md)
