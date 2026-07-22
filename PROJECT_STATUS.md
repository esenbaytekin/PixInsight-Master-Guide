# Proje Durumu

## Release özeti

| Alan | Durum |
| --- | --- |
| Yayımlanan release | v1.0.0 |
| Sonraki hedef | v1.0.1 bakım sürümü |
| Hazırlık aşaması | Documentation Entry Points & Header UX |
| İçerik durumu | Bakım; yeni major teknik kapsam yok |
| Hedef PixInsight | 1.9.3 |
| Canonical yayın | <https://allsky.com.tr/docs/> |
| Release sınıflandırması | Ready with Non-Blocking Limitations |

## Tamamlanan kapsam

Kılavuz; temeller, calibration, gradient correction, color calibration, AI plugins, stretch, LRGB, narrowband, PixelMath, masks, detail enhancement, final processing, troubleshooting ve applied workflows bölümlerini içerir. Canonical içerik MkDocs navigation altında tutulur; legacy Color Calibration sayfaları yalnız geçmiş bağlantıları canonical ağa yönlendirir.

Process registry 32 major process/script/plugin kaydını canonical dosyalarla eşler. UI validation sistemi ekran kanıtını source ve data validation'dan ayrı tutar.

## Kalite durumu

Phase 6.4 teknik denetiminde 129 Markdown sayfası, 125 canonical navigation hedefi, 1.663 iç bağlantı, 41 anchor ve 153 Mermaid bloğu kontrol edildi. Sprint 6.5'te strict build, release bağlantıları, navigation çıktısı, search index, public URL, badge ve repository hijyeni yeniden doğrulandı. Release-blocking bulgu kalmadı. Operasyonel durum [RELEASE_CHECKLIST.md](RELEASE_CHECKLIST.md) içinde izlenir.

## Bilinen sınırlamalar

- RangeSelection UI ekran kanıtı eksiktir.
- UI screenshot'ları görünmeyen state veya algoritmik davranış için kanıt değildir.
- Canlı PixInsight 1.9.3 regression çalıştırması tamamlanmamıştır.
- RC Astro plugin ve AI model davranışları sürüme duyarlıdır.
- Dokümantasyon CC BY 4.0 kapsamındadır; deployment script ve yapılandırmalarının lisans kapsamını genişletme kararı maintainer'a aittir.

Bu maddeler mevcut durumda non-blocking olarak değerlendirilir; kullanıcıya açık biçimde korunmalıdır.

## Release kararı

**Ready with Non-Blocking Limitations.** İçerik ve yayın yapısı v1.0.0 tag/release adımına hazırdır. Tag oluşturma, GitHub Release yayımlama, production deploy ve son smoke test henüz gerçekleştirilmemiş manuel işlemlerdir.

## Bakım modeli

- Teknik değişiklikler canonical sayfada yapılır.
- UI kanıtları `validation/ui/pi-1.9.3/` altında tutulur.
- Sürüm duyarlı iddialar kanıt olmadan kesinleştirilmez.
- Her değişiklik strict MkDocs build ve diff kontrolünden geçer.
- Release sonrasında değişiklikler [CHANGELOG.md](CHANGELOG.md) içindeki `Unreleased` bölümünde biriktirilir.

## Yüksek seviyeli sonraki adımlar

- RangeSelection UI kanıt açığını kapatmak
- Temsilî veri setleriyle canlı process regression testleri yürütmek
- Plugin sürümlerini periyodik olarak yeniden doğrulamak
- Kullanıcı geri bildirimlerine göre troubleshooting ve gerçek workflow örneklerini geliştirmek

Bu plan v1.0.0 kapsamını genişletmez; sonraki bakım sürümleri için yön gösterir.
