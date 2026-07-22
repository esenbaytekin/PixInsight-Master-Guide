# Changelog

Bu projedeki önemli değişiklikler bu dosyada kaydedilir. Yapı [Keep a Changelog](https://keepachangelog.com/tr/1.1.0/) yaklaşımını izler; proje henüz v1.0.0 etiketi yayımlamadığı için tarih **TBD** olarak korunur.

## [Unreleased]

### Added

- v1.0.0 yayın notları, proje durum özeti, operasyonel release checklist ve GitHub Release taslağı.

### Changed

- README ve katkı rehberi public release için yeniden düzenlendi.
- Changelog geçmişi release odaklı ve sürdürülebilir başlıklar altında konsolide edildi.
- v1.0.1 hazırlığı: header version/commit metadata'sı site adından ayrıldı ve sidebar branding sadeleştirildi.
- Header logosu PMG görseliyle yenilendi; sürüm ve commit bilgisi başlığın altında sağa hizalandı.
- Başlangıç onboarding rehberine, Terimler Sözlüğü aranabilir discovery katmanına, Hızlı Referans operasyonel işlem yardımcısına dönüştürüldü.

### Fixed

- Header stylesheet'i için sürüm bazlı cache busting eklendi; güncel logo ve hizalama eski tarayıcı önbelleğine takılmadan yüklenir.
- Header görsel hiyerarşisi ve responsive metadata davranışı düzeltildi.
- Giriş sayfalarının navigation etiketi, H1, metadata ve içerik amacı eşlendi.
- Başlangıç içeriklerinin keşfedilebilirliği geliştirildi.
- Theme override klasörü production Docker build context'ine eklendi.

### Deprecated

- Henüz kayıt yok.

### Removed

- Henüz kayıt yok.

### Security

- Henüz kayıt yok.

## [1.0.0] - TBD

### Added

- PixInsight 1.9.3 hedefli Türkçe teknik referans ve uçtan uca iş akışı kütüphanesi.
- Calibration, gradient correction, color calibration, AI plugins, stretch, LRGB, narrowband, PixelMath, masks, multiscale processing ve final processing bölümleri.
- M31 LRGB+Ha ve NGC 6888 SHO uygulamalarıyla birlikte LRGB, HaRGB, SHO, HOO, OSC ve mono workflow rehberleri.
- Process registry tabanlı UI validation altyapısı; evidence matrix, UI notes ve validation checklist kayıtları.
- Hata kütüphanesi, Quick Reference sayfaları, karar ağaçları ve teknik doğrulama modeli.
- MkDocs Material sitesi, strict build kontrolü, Docker/Traefik deployment yapısı ve GitHub Actions production workflow'u.

### Changed

- Tüm dokümantasyon ortak editorial standarda, canonical sayfa modeline ve tutarlı iç bağlantı yapısına taşındı.
- Teknik iddialar UI kanıtı, birincil kaynak, gerçek veri testi ve pratik öneri sınırlarıyla ayrıştırıldı.
- Search metadata, navigation ve sayfalar arası keşfedilebilirlik geliştirildi.

### Fixed

- Legacy Color Calibration ağacı canonical `docs/05-color-calibration/` yapısına yönlendirildi.
- Literal satır sonları, hatalı Mermaid blokları, kırık bağlantılar, yinelenen başlıklar ve Markdown render sorunları giderildi.
- Process adları ve registry eşlemeleri canonical PixInsight adlarıyla tutarlı hale getirildi.

### Security

- Production yapılandırması secret değerleri repository dışında tutacak biçimde düzenlendi.

[Unreleased]: https://github.com/esenbaytekin/PixInsight-Master-Guide/compare/v1.0.0...HEAD
[1.0.0]: https://github.com/esenbaytekin/PixInsight-Master-Guide/releases/tag/v1.0.0
