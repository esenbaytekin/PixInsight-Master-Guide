# NoiseXTerminator

## Amaç

Noise bileşenini azaltırken astronomik sinyal, küçük ölçekli doku ve kanal ilişkilerini korumaktır. Amaç tamamen pürüzsüz background değil, sonraki stretch ve contrast işlemlerini taşıyabilecek kontrollü bir noise seviyesidir.

## Teori ve AI yaklaşımı

Model, eğitim verilerinden öğrendiği signal/noise ayrımını uygular. RC Astro AI3 belgesinde `Iterations` successive approximation adımlarını; intensity/color ve frequency separation modları farklı noise bileşenlerini kontrol eder. Modelin eğitim veri seti veya iç katmanları hakkında yayımlanmamış ayrıntılar varsayılmaz.

## Ne zaman kullanılır?

- BlurXTerminator veya diğer deconvolution tamamlandıktan sonra
- Lineer veya nonlinear aşamada, sonraki işlemlerin noise’u büyüteceği biliniyorsa
- Color separation kullanılacaksa RGB/OSC channel combination sonrasında

## Ne zaman kullanılmaz?

- Calibration, walking noise veya gradient hatasını gizlemek için
- BlurXTerminator öncesinde
- Çok zayıf diffuse signal ile noise ayrımı test edilmeden yüksek strength ile
- Her işlem aşamasında tekrar tekrar

## Girdi ve çıktı beklentisi

Girdi clipping içermemeli; noise’un yüksek/orta/düşük frekans karakteri incelenmiş olmalıdır. Çıktıda background daha kontrollü görünürken yıldız rengi, faint halo, nebula filamentleri ve galaxy dust lane yapısı korunmalıdır.

## Parametre matrisi

| Parametre/mod | Görev | Artırma gerekçesi | Risk |
|---|---|---|---|
| `Denoise` | Ana intensity veya high-frequency reduction | Grain sonraki stretch’i domine ediyorsa | Plastik doku, faint signal kaybı |
| `Denoise Color` | Chromatic noise azaltma | Kanal benekleri ölçülebiliyorsa | Renk ayrımının zayıflaması |
| `Denoise LF` | Low-frequency intensity noise | Blotchy yapı gradient değilse | Diffused gerçek sinyal kaybı |
| `Denoise LF Color` | Low-frequency chromatic noise | Büyük renk lekeleri noise olarak doğrulandıysa | Gerçek renk geçişlerinin silinmesi |
| `Iterations` | AI3 successive approximation adımı | Residual noise kontrollü kalıyorsa | Süre ve overprocessing riski |

AI2 `Detail` ile AI3 `Iterations` aynı işlev değildir. Kurulu model sürümüne ait olmayan parametrelerin etkili olduğu varsayılmamalıdır.

## Hedef ve veri karar matrisi

| Veri | Başlangıç yaklaşımı | Neden |
|---|---|---|
| High-SNR galaxy | Konservatif reduction | Gerçek mikro kontrast zaten güçlüdür |
| Low-SNR galaxy | Çoklu düşük strength karşılaştırması | Dust/noise ayrımı belirsizdir |
| Emission nebula | Filament maskesiyle doğrulama | Faint lifler high-frequency noise’a benzer |
| Reflection nebula | Low-frequency kontrolünü sınırlı tut | Yumuşak renk geçişi korunmalıdır |
| Dense star field | Star color ve halo kontrolü | Chromatic reduction yıldız rengini azaltabilir |
| Heavy light pollution | Önce gradient/calibration | Denoise geniş ölçekli background model değildir |

## Uygulama ve workflow position

1. BlurXTerminator/deconvolution aşamasının tamamlandığını doğrulayın.
2. Background, faint signal ve star color için Preview’lar oluşturun.
3. En basit mod ve düşük müdahale ile başlayın.
4. Aynı STF’de orijinal, sonuç ve farkı 1:1 inceleyin.
5. Stretch simülasyonu ile residual noise’un sonraki aşamada nasıl büyüdüğünü kontrol edin.
6. Kabul edilen instance ve AI sürümünü kaydedin.

Genel sıra: SPCC → BlurXTerminator → NoiseXTerminator → HistogramTransformation/GHS/MaskedStretch → CurvesTransformation. Nonlinear ikinci geçiş yalnız ilk sonucun yetersizliği ölçülmüşse ve çok düşük müdahaleyle değerlendirilmelidir.

## Sorun giderme

| Belirti | Olası neden | Doğrulama | Düzeltme |
|---|---|---|---|
| Plastik background | Strength/iterations fazla | Fark görüntüsü ve 1:1 kıyas | Miktarı veya iterasyonu azalt |
| Faint OIII kayboldu | Signal noise olarak sınıflandı | Kanal bazlı mask/kıyas | Daha düşük reduction, koruyucu mask |
| Renk lekeleri kaldı | Color noise ayrı ele alınmadı | RGB kanal karşılaştırması | Color separation’ı kontrollü test et |
| Renkler soldu | Color reduction fazla | Star/nebula chroma ölçümü | Color miktarını azalt |
| Blotchy yapı kaldı | LF noise veya gradient karışıklığı | Büyük ölçekli model testi | Önce gradient tanısı; sonra LF modu |

## Performans, sınırlamalar ve uyarılar

Iterations ve separation modları işlem süresini/bellek kullanımını artırabilir. GPU/CPU farkı kurulu plugin sürümü ve donanım desteğine bağlıdır. Denoise sonucu scientific measurement için kullanılacaksa orijinal lineer master korunmalı ve ölçüm politikası ayrıca belirlenmelidir.

## Quick Reference

- Deconvolution’dan sonra
- Önce en basit mod
- Noise ile diffuse signal’ı ayır
- Stretch sonrası görünümü önceden test et
- AI/model sürümünü kaydet

## İlgili süreçler ve kaynaklar

- [BlurXTerminator](blurxterminator.md)
- [HistogramTransformation](../02-pixinsight-temelleri/histogram.md)
- [Gradient Diagnostics](../04-gradient/gradient-diagnostics.md)
- [RC Astro NoiseXTerminator 2/AI3 User Manual](https://www.rc-astro.com/noisexterminator-2-ai3-user-manual-pixinsight/)
