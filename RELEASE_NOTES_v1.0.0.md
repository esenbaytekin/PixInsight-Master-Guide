# PixInsight Master Guide v1.0.0 — Yayın Notları

> Yayın adayı: v1.0.0 etiketi ve GitHub Release henüz oluşturulmamıştır.

v1.0.0, PixInsight 1.9.3 için Türkçe teknik referansın ilk kararlı dokümantasyon sürümüdür. Kılavuz, tek bir sabit reçete sunmak yerine kararların veri, hedef, SNR, optik sistem ve iş akışı konumuyla ilişkisini açıklar.

## Bu sürümde neler var?

- Ham veriden final export'a uzanan calibration ve processing zinciri
- ABE, DBE, GradientCorrection ve GraXpert için gradient modelleme ve tanı rehberleri
- PCC, SPCC ve BackgroundNeutralization için color calibration temelleri ve sorun giderme
- BlurXTerminator, NoiseXTerminator ve StarXTerminator için sürüme duyarlı kullanım sınırları
- Stretch, LRGB/narrowband birleşimi, PixelMath, maskeler ve multiscale detail enhancement
- Gerçek hedef uygulamaları, hata kartları, decision tree ve Quick Reference içerikleri
- PixInsight 1.9.3 ekran görüntülerini izleyen registry tabanlı UI validation sistemi

## Doğrulama kapsamı

Release hazırlığı sırasında:

- 129 Markdown sayfası yapısal kontrolden geçirildi.
- 125 canonical MkDocs sayfası navigation kapsamında doğrulandı.
- 32 major process/script/plugin kaydı registry ile eşleştirildi.
- 1.663 iç bağlantı ve 41 anchor bağlantısı denetlendi.
- 153 Mermaid bloğu yapısal olarak kontrol edildi.
- Strict MkDocs build ve whitespace kontrolleri uygulandı.

Bu sayılar önceki Phase 6.4 teknik denetiminin kayıtlarıdır; v1.0.0 yayın kontrolünde yeniden doğrulanır.

## Bilinen sınırlamalar

- RangeSelection için PixInsight 1.9.3 UI ekran kanıtı eksiktir.
- Statik ekran görüntüleri default/reset state, gizli dropdown veya process davranışını tek başına kanıtlamaz.
- PixInsight içinde uçtan uca canlı regression testi bu hazırlık sprintinin kapsamına dahil değildir.
- Plugin ve AI model sürümleri zamanla değişebilir; sayfa içindeki sürüm kayıtları kontrol edilmelidir.
- Mermaid CLI ile bağımsız render testi ortamda mevcut değilse yalnız MkDocs render zinciri doğrulanabilir.

Bu sınırlamalar mevcut teknik denetimde release-blocking olarak sınıflandırılmamıştır.

## Başlangıç

- Çevrimiçi kılavuz: [https://allsky.com.tr/docs/](https://allsky.com.tr/docs/)
- Yerel kurulum ve proje özeti: [README.md](README.md)
- Bilinen durum ve bakım modeli: [PROJECT_STATUS.md](PROJECT_STATUS.md)
- Katkı rehberi: [CONTRIBUTING.md](CONTRIBUTING.md)
- Ayrıntılı değişiklikler: [CHANGELOG.md](CHANGELOG.md)

## Bağımsızlık bildirimi

PixInsight Master Guide bağımsız bir topluluk projesidir. Pleiades Astrophoto veya PixInsight tarafından hazırlanmış, desteklenmiş ya da onaylanmış değildir. PixInsight ve ilgili ürün adları sahiplerinin ticari markaları olabilir.
