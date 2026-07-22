# GitHub Release Draft — v1.0.0

## Başlık

PixInsight Master Guide v1.0.0

## Önerilen release body

PixInsight Master Guide'ın ilk kararlı dokümantasyon sürümü hazırlandı. v1.0.0; PixInsight 1.9.3 için calibration'dan final export'a uzanan Türkçe process referanslarını, troubleshooting kütüphanesini ve uygulanabilir uçtan uca iş akışlarını bir araya getirir.

### Öne çıkanlar

- Calibration, gradient correction ve color calibration için ayrıntılı teknik rehberler
- AI plugins, stretch, LRGB/narrowband, PixelMath, masks ve multiscale processing referansı
- M31 LRGB+Ha ve NGC 6888 SHO dahil gerçek hedef uygulamaları
- Process registry tabanlı UI evidence ve doğrulama altyapısı
- Quick Reference, decision tree, hata kartları ve çapraz bağlantılı workflow modeli
- Strict MkDocs build, container tabanlı production deployment ve release metadata desteği

### Doğrulama

- 129 Markdown sayfası ve 125 canonical navigation hedefi
- 32 major process/script/plugin registry kaydı
- 1.663 iç bağlantı ve 41 anchor kontrolü
- 153 Mermaid bloğu için yapısal kontrol
- Uyarısız strict MkDocs build ve temiz diff kontrolü

### Bilinen sınırlamalar

- RangeSelection için PixInsight 1.9.3 UI ekran kanıtı henüz eksiktir.
- Canlı PixInsight 1.9.3 regression pass bu release hazırlığının kapsamında değildir.
- Statik screenshot'lar default/reset state veya algoritmik davranışı kanıtlamaz.
- Plugin ve AI model ayrıntıları sürüme duyarlıdır.

Tam notlar: [RELEASE_NOTES_v1.0.0.md](RELEASE_NOTES_v1.0.0.md)  
Dokümantasyon: <https://allsky.com.tr/docs/>  
Değişiklik günlüğü: [CHANGELOG.md](CHANGELOG.md)

> Bu bağımsız bir topluluk projesidir; Pleiades Astrophoto veya PixInsight tarafından desteklenmez ya da onaylanmaz.

## Maintainer notu

Bu dosya yalnız taslaktır. Tag veya GitHub Release oluşturmaz. Yayın sırasında göreli repository bağlantılarının GitHub Release görünümünde doğru hedeflere çevrildiği kontrol edilmelidir.
