# v1.0.0 Release Checklist

Bu liste v1.0.0 yayınının operasyonel kontrol kaydıdır. Otomatik ve yerel kontroller tamamlandıkça işaretlenir; GitHub veya production adımları ayrıca açık yetki gerektirir.

## İçerik ve yapı

- [x] İçerik freeze korunuyor; release kapsamı dışında doküman değişikliği yok
- [x] Canonical MkDocs navigation eksiksiz
- [x] Legacy redirect sayfaları navigation dışında ve canonical hedefleri geçerli
- [x] Boş sayfa, placeholder veya merge marker yok; release tarihi için bilinçli `TBD` yalnız changelog'da
- [x] Başlık hiyerarşisi ve release belgelerinde duplicate heading kontrolü başarılı
- [x] Mermaid blok yapısı ve fence dengesi başarılı; bağımsız Mermaid CLI testi mevcut değil

## Bağlantılar ve yayın yüzeyi

- [x] İç dosya bağlantıları ve anchor hedefleri geçerli
- [x] Görsel referansları geçerli
- [x] Public dokümantasyon URL'si erişilebilir
- [x] README badge ve workflow bağlantıları geçerli
- [x] Release belgelerinin karşılıklı bağlantıları geçerli
- [x] LICENSE referansları geçerli

## Sürüm ve metadata

- [x] Hedef sürüm tüm release belgelerinde v1.0.0
- [x] Hedef PixInsight sürümü 1.9.3
- [x] Henüz yayımlanmayan tag/release, yayımlanmış gibi gösterilmiyor
- [ ] Repository description, website ve topics için öneriler maintainer tarafından değerlendirildi

## Güvenlik ve repository hijyeni

- [x] Parola, token, private key veya gerçek secret değeri yok
- [x] Kişisel mutlak yol ve private network adresi yok
- [x] Build çıktısı ve yerel ortam dosyaları ignore ediliyor
- [x] `git diff --check` başarılı

## Build ve arama

- [x] `mkdocs build --strict` başarılı; Material for MkDocs 2.0 gelecek uyumluluk bildirimi kaydedildi
- [x] Search index üretildi ve boş değil
- [x] Navigation hedeflerinin tümü build çıktısında mevcut

## Bilinen sınırlamalar

- [x] RangeSelection UI evidence eksikliği release notlarında açıklandı
- [x] Canlı PixInsight regression kapsam dışı olarak açıklandı
- [x] Plugin sürüm hassasiyeti açıklandı
- [ ] Lisans kapsamı maintainer tarafından kabul edildi

## Yayın işlemleri — manuel

- [ ] Son diff maintainer tarafından incelendi
- [ ] Release hazırlık commit'i oluşturuldu ve push edildi
- [ ] Annotated `v1.0.0` tag oluşturuldu
- [ ] Tag remote'a push edildi
- [ ] GitHub Release taslaktan yayımlandı
- [ ] Production deployment başarılı
- [ ] Production başlığında v1.0.0 ve doğru commit görünüyor
- [ ] Yayın sonrası smoke test tamamlandı

## Geri alma hazırlığı

- [ ] Önceki production image/commit kimliği kaydedildi
- [ ] Rollback adımları [deployment rehberinden](deployment/README.md) doğrulandı
- [ ] Sağlık kontrolü ve log erişimi doğrulandı

## v1.0.2 — Google Analytics

- [ ] GA4 property oluşturuldu
- [ ] Web data stream oluşturuldu
- [x] Doğru Measurement ID repository yapılandırmasına eklendi
- [ ] Enhanced Measurement incelendi
- [ ] Site search ölçümü incelendi
- [ ] Internal traffic filtering incelendi
- [ ] Data retention incelendi
- [ ] Google Signals incelendi
- [ ] Realtime trafik doğrulandı
- [ ] Duplicate page view oluşmadığı doğrulandı

## v1.0.2 — Consent

- [ ] Consent banner production üzerinde görüntülendi
- [ ] Analytics'in consent öncesinde kapalı olduğu network düzeyinde doğrulandı
- [x] Analytics'in onay sonrasında tek native loader ile etkinleştiği yerel DOM düzeyinde doğrulandı
- [x] Reject akışı test edildi
- [x] Tercih değiştirme akışı test edildi
- [x] Light mode test edildi
- [x] Dark mode mevcut tema tarafından sunulmadığı için uygulanamaz olarak kaydedildi
- [x] Mobil düzen test edildi
- [ ] Gizlilik sayfası maintainer tarafından incelendi

## v1.0.2 — Sitemap ve Search Console

- [x] `sitemap.xml` yerel build'de üretildi
- [x] `sitemap.xml` sprint doğrulamasında yapısal olarak geçerli bulundu
- [x] Mevcut production sitemap HTTP 200 döndürüyor; v1.0.2 deploy sonrası yeniden kontrol edilmeli
- [x] Root `robots.txt` için Nginx sunum kararı uygulandı
- [ ] Search Console property doğrulandı
- [ ] Sitemap Search Console'a gönderildi
- [ ] Dokümantasyon ana sayfası URL Inspection ile incelendi
- [ ] Production deploy sonrasında indexing istendi
