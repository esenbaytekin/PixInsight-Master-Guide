---
title: Çerez ve Analitik Bilgilendirmesi
description: PixInsight Master Guide sitesindeki Google Analytics 4 kullanımı, analitik onayı ve tercih yönetimi hakkında bilgilendirme.
---

# Çerez ve Analitik Bilgilendirmesi

## Amaç

PixInsight Master Guide, dokümantasyon sayfalarının nasıl kullanıldığını genel düzeyde anlamak ve içeriğin bulunabilirliğini geliştirmek amacıyla analitik ölçüm kullanır. Analitik ölçüm, açık kullanıcı onayı verilmeden etkinleştirilmez.

## Kullanılan Hizmet

Site, Google tarafından sunulan Google Analytics 4 hizmetini kullanır. Bu entegrasyon Material for MkDocs'un native analytics ve consent bileşenleri üzerinden yapılandırılmıştır.

## Hangi Veriler Ölçülebilir?

Onay verildiğinde Google Analytics 4 yapılandırmasına ve etkinleştirilen ölçüm seçeneklerine bağlı olarak şu bilgiler raporlanabilir:

- ziyaret edilen dokümantasyon sayfası,
- yaklaşık ziyaret zamanı ve oturum süresi,
- cihaz ve tarayıcı kategorisi,
- yönlendiren kaynak,
- Analytics tarafından sunulan ülke veya yaklaşık bölge,
- GA4 tarafından desteklenen sayfa içi etkileşimler,
- GA4 site search ölçümü etkinleştirilirse dokümantasyon arama terimleri.

Bu site, Analytics'e ad, e-posta adresi veya dokümantasyon hesabı kimliği gönderecek bir kullanıcı hesabı sistemi içermez. Bununla birlikte bu ifade, Google Analytics verilerinin bütünüyle anonim olduğu anlamına gelmez.

## Analitik Çerezler

Google Analytics ile ilişkili çerezler veya benzer tarayıcı depolaması yalnızca kullanıcı analitik seçeneğini kabul ettikten sonra etkinleştirilir. Analitik seçeneği ilk gösterimde işaretli değildir. Reddetme halinde dokümantasyon, navigasyon ve yerel site araması çalışmaya devam eder.

## Zorunlu Site Depolaması

Material for MkDocs, kullanıcının consent tercihini hatırlamak için tarayıcı depolamasında bir tercih kaydı tutar. Bu kayıt, analitik onayının sonraki sayfalarda yeniden sorulmamasını ve kullanıcının seçiminin uygulanmasını sağlar.

Mevcut yapılandırmada kullanıcı tarafından değiştirilebilen bir açık/koyu tema seçicisi bulunmaz. Dokümantasyon araması tarayıcıda çalışan yerel search index'i kullanır ve Google Analytics onayı gerektirmez. Tema, navigasyon veya arama davranışına ilişkin depolama ayrıntıları Material for MkDocs sürümüne göre değişebileceğinden kalıcı anahtar adları kullanıcı sözleşmesi olarak kabul edilmemelidir.

## Tercihlerin Değiştirilmesi

Sayfanın alt kısmındaki **Çerez tercihlerini değiştir** bağlantısı consent panelini yeniden açar. Kullanıcı analitik seçeneğini kabul edebilir, reddedebilir veya daha önce verdiği onayı kaldırabilir. Material for MkDocs, değiştirilen tercihin uygulanması için sayfayı yeniden yükleyebilir.

## Google Analytics

Google, bu siteden ayrı bir hizmet sağlayıcıdır. Google Analytics'in veri işleme koşulları ve teknik davranışı Google'ın kendi hizmet politikalarına tabidir. Site yöneticisi, GA4 property ayarlarını ve ilgili Google politikalarını periyodik olarak incelemelidir.

## Saklama Süresi

Veri saklama süresi repository tarafından belirlenmez; ilgili GA4 property içindeki retention ayarıyla yönetilir. Maintainer, production ölçümü kullanılmadan önce bu ayarı Google Analytics yönetim panelinde incelemeli ve uygun değeri belirlemelidir.

## Veri Paylaşımı ve Reklam

Repository'deki mevcut entegrasyon Google Tag Manager, Google Ads, remarketing, advertising personalization veya User-ID yapılandırması içermez. Google Signals ve GA4 property düzeyindeki reklam ayarları repository dışındadır; maintainer tarafından kapalı oldukları ayrıca doğrulanmalıdır.

## İletişim

Bu bilgilendirme veya dokümantasyon sitesiyle ilgili sorular için [GitHub Issues](https://github.com/esenbaytekin/PixInsight-Master-Guide/issues) kullanılabilir. Kişisel veya hassas verileri herkese açık issue içeriğine eklemeyin.

## Son Güncelleme

22 Temmuz 2026

## İlgili Kaynaklar

- [Material for MkDocs — Ensuring data privacy](https://squidfunk.github.io/mkdocs-material/setup/ensuring-data-privacy/)
- [Material for MkDocs — Setting up site analytics](https://squidfunk.github.io/mkdocs-material/setup/setting-up-site-analytics/)
