# Proje Durumu

## Release özeti

| Alan | Durum |
| --- | --- |
| Yayımlanan release | v1.0.0 |
| Sonraki hedef | v1.0.2 bakım sürümü |
| Hazırlık aşaması | SEO, Sitemap, Search Console ve Google Analytics 4 |
| İçerik durumu | Bakım; yeni major teknik kapsam yok |
| Hedef PixInsight | 1.9.3 |
| Canonical yayın | <https://allsky.com.tr/docs/> |
| Release sınıflandırması | Ready with Non-Blocking Limitations |

## v1.0.2 SEO ve analytics durumu

| Alan | Durum |
| --- | --- |
| GA4 entegrasyonu | Material native integration yapılandırıldı; Measurement ID `mkdocs.yml` içinde tek kaynak |
| Consent | Analitik başlangıçta seçili değil; kabul, ret ve tercihleri yeniden açma akışı yapılandırıldı |
| Sitemap | MkDocs native `sitemap.xml` ve `sitemap.xml.gz` üretimi; 130 URL, 0 duplicate ve 0 geçersiz URL ile yerel build'de doğrulandı |
| robots.txt | `/docs/robots.txt` eklendi; Nginx root `/robots.txt` için aynı dosyayı sunacak |
| Search Console | DNS TXT doğrulama ve sitemap gönderimi maintainer manuel işlemi olarak bekliyor |
| Tarayıcı/network QA | Consent başlangıç, ret, kabul, yeniden açma, iptal ve mobil akışları yerel DOM düzeyinde doğrulandı; cookie/collect network kaydı araç erişimi nedeniyle bekliyor |
| Production doğrulaması | Commit/deploy yapılmadığı için bekliyor |

Kalan Google hesabı işlemleri: Domain Property doğrulama TXT kaydı, sitemap gönderimi, GA4 Realtime testi, Enhanced Measurement/site search/internal traffic/retention/Google Signals/ads personalization ayarlarının incelenmesi.

Mevcut tema yalnız light görünüm sunar; dark-mode consent testi uygulanabilir değildir. v1.0.2 deploy öncesi production sitemap mevcut ve HTTP 200 döndürmektedir; yeni `/docs/robots.txt` ve root `/robots.txt` uçları commit/deploy yapılmadığı için mevcut production sürümünde henüz HTTP 404 döndürür.

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
