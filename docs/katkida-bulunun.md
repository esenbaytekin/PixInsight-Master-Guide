# ⭐ Bu Rehbere Katkıda Bulunun

PixInsight Master Guide, PixInsight ile astrofotoğraf işleyenlerin deneyimini Türkçe ve ücretsiz bir bilgi kaynağında buluşturmak için var. Hedefimiz yalnız process adımlarını sıralamak değil; bir kararın neden alındığını, hangi koşullarda işe yaradığını ve ne zaman yeniden değerlendirilmesi gerektiğini anlaşılır biçimde belgelemektir.

Bu rehber yaşayan bir projedir. Yeni PixInsight sürümleri, farklı ekipmanlar, gerçek veri setleri ve kullanıcıların karşılaştığı sorunlar doğrultusunda sürekli geliştirilir. Bu nedenle topluluğun sahadaki deneyimi, dokümantasyonun en değerli kaynaklarından biridir.

!!! info "Tek bir katkı da değerlidir"
    Bir yazım hatasını düzeltmek, kırık bir bağlantıyı bildirmek veya başarısız bir işlemin nedenini açıklamak; kapsamlı yeni bir bölüm yazmak kadar anlamlı olabilir.

## Katkılar neden önemli?

Gerçek astrofotoğraf deneyimi yapay olarak üretilemez. Farklı gökyüzü koşulları, kamera sistemleri, filtreler ve hedefler aynı process'in farklı sonuçlar vermesine yol açabilir. Topluluk katkıları, rehberin yalnız ideal koşulları değil gerçek çalışma ortamlarını da temsil etmesini sağlar.

- **Topluluk veri setleri**, teknik kararların farklı sinyal ve gürültü koşullarında değerlendirilmesine yardım eder.
- **Başarısız denemeler**, belirtiler ile olası kök nedenler arasında güvenilir bağlar kurulmasını sağlar.
- **Gerçek iş akışları**, process'lerin hangi sırayla ve hangi gerekçeyle kullanıldığını gösterir.
- **Düzeltmeler ve yeni açıklamalar**, belirsiz veya güncelliğini yitirmiş bilgilerin iyileştirilmesini sağlar.

Pratik karar zincirlerinin nasıl belgelendiğini [Uygulamalı İş Akışları](15-workflows/index.md), belirti odaklı inceleme yapısını ise [Hata Kütüphanesi](14-hata-kutuphanesi/index.md) üzerinden görebilirsiniz.

## Nasıl katkıda bulunabilirsiniz?

### 📷 Gerçek veri ve görsel kanıt

Gerçek veriyle hazırlanmış katkılar, okuyucunun bir işlemin etkisini gözlemlemesine yardımcı olur:

- Kullanım izni açıkça belirtilmiş gerçek veri setleri
- Aynı veri ve görünüm koşullarını koruyan Before/After karşılaştırmaları
- Workflow ve PixInsight process ekran görüntüleri
- Histogram ve kanal dağılımı örnekleri
- Mask, mask overlay ve seçici işlem örnekleri
- Gradient türleri ve düzeltme sonuçları
- Başarısız sonuçlar, artifact örnekleri ve bunlara eşlik eden işlem bilgileri

!!! note "Veri bağlamı"
    Görsel tek başına yeterli kanıt değildir. Mümkün olduğunda hedef, kamera türü, filtre, entegrasyon durumu, işlemin uygulandığı aşama ve karşılaştırma koşulları da paylaşılmalıdır. Kişisel veya hassas bilgi eklenmemelidir.

### 🧭 İş akışı ve işlem deneyimi

- Tekrarlanabilir processing adımları
- Bir kararın neden alındığını açıklayan notlar
- Belirli bir veri sorununa yönelik tanı yöntemi
- Process sırası veya kontrol noktası önerileri
- Veri setine bağlı sınırlamaları açıkça belirten processing ipuçları

Yeni bir önerinin evrensel reçete gibi sunulmaması önemlidir. Sonucu etkileyen veri koşulları ve başarısızlık ihtimalleri katkının parçası olmalıdır.

### ✍️ Dokümantasyon iyileştirmeleri

- Anlatım ve yazım iyileştirmeleri
- Yazım hataları ve terminoloji düzeltmeleri
- Kırık veya yanlış yönlenen bağlantılar
- Teknik hata ve sürüm uyumsuzluğu bildirimleri
- Eksik konu veya örnek önerileri
- Daha anlaşılır tablo, karar ağacı veya sorun giderme açıklamaları

Temel kavramlara yapılacak katkılar için önce [Foundations](01-temeller/index.md) bölümünün kapsamını; teknik biçim ve terminoloji için repository'deki `STYLE_GUIDE.md` kurallarını inceleyebilirsiniz.

## Katkı ilkeleri

Her katkı yayımlanmadan önce incelenir. İnceleme, katkıyı zorlaştırmak için değil; rehberdeki bilgilerin izlenebilir, anlaşılır ve güvenli biçimde uygulanabilir kalması için yapılır.

1. **Teknik ve bilimsel doğruluk önce gelir.**
2. **Eğitsel değer, kişisel veya sanatsal tercihten daha önemlidir.**
3. **Gerçek veri ve tekrarlanabilir gözlem tercih edilir.**
4. **PixInsight sürümüne veya plugin sürümüne bağlı davranışlar açıkça belirtilir.**
5. **AI ile üretilmiş sahte astrofotoğraf görüntüleri eğitim kanıtı olarak kabul edilmez.**
6. **Ürün, hizmet veya kişisel marka tanıtımı amacı taşıyan ticari içerikler kabul edilmez.**
7. **Görsel ve veri katkılarında kullanım hakkı ve gerekli atıf bilgisi belirtilir.**

!!! warning "Sanatsal sonuç, teknik doğrulama değildir"
    Bir görüntünün estetik olarak beğenilmesi, uygulanan yöntemin her veri seti için doğru veya tekrarlanabilir olduğunu göstermez. Katkılar gözlenebilir sonuç, işlem bağlamı ve eğitsel amaç üzerinden değerlendirilir.

## GitHub üzerinden katkı

Katkı süreci GitHub üzerinden yürütülür. Kod yazmayı bilmeniz gerekmez:

- Bir hata veya eksik bilgi için **Issue** açabilirsiniz.
- Mevcut bir açıklamaya düzeltme önerebilirsiniz.
- Yeni bir konu veya gerçek veri örneği önerebilirsiniz.
- Hazırladığınız değişikliği **Pull Request** olarak gönderebilirsiniz.
- Teknik hata, kırık bağlantı veya yeniden üretilemeyen bir sonucu bildirebilirsiniz.

Issue açarken ilgili sayfanın bağlantısını, gözlediğiniz problemi ve mümkünse PixInsight/process sürümünü ekleyin. Gerçek veri paylaşmayı planlıyorsanız dosyayı doğrudan repository'ye yüklemeden önce kapsam ve lisanslama yöntemini Issue üzerinden görüşün.

[GitHub repository'sini aç](https://github.com/esenbaytekin/PixInsight-Master-Guide){ .md-button .md-button--primary }
[Issue oluştur](https://github.com/esenbaytekin/PixInsight-Master-Guide/issues/new){ .md-button }

!!! tip "İlk katkı için"
    Küçük ve doğrulanabilir bir değişiklikle başlayın. Repository'deki `CONTRIBUTING.md`, `STYLE_GUIDE.md` ve `TECHNICAL_REVIEW_CHECKLIST.md` dosyaları Pull Request hazırlarken gereken teknik ayrıntıları açıklar.

## Katkılar nasıl incelenir?

İnceleme kapsamı katkının türüne göre değişir:

| Katkı türü | Temel kontrol |
| --- | --- |
| Teknik açıklama | Kaynak, sürüm kapsamı, terminoloji ve kesinlik düzeyi |
| Gerçek veri örneği | Veri bağlamı, karşılaştırma koşulları ve kullanım izni |
| Workflow | Girdi, işlem sırası, karar gerekçesi ve tekrarlanabilirlik |
| Ekran görüntüsü | Doğru process, okunabilir UI, sürüm ve görünür kontroller |
| Hata örneği | Belirti, olası neden, doğrulama adımı ve güvenli çözüm sınırı |
| Yazım veya bağlantı düzeltmesi | Dil tutarlılığı, canonical hedef ve site build sonucu |

Değişiklikler teknik doğruluk, mevcut sayfalarla tutarlılık, iç bağlantılar ve okunabilirlik açısından gözden geçirilir. Gerektiğinde ek kaynak, ekran kanıtı veya gerçek veri testi istenir. Bir katkının kabul edilmemesi, deneyimin değersiz olduğu anlamına gelmez; kanıt veya yayın kapsamı henüz yeterli olmayabilir.

## Katkıların görünürlüğü

Anlamlı katkıların ve katkı sahiplerinin görünür biçimde tanınması planlanmaktadır. Ayrı bir Contributors sayfası henüz bulunmadığı için tanıma yöntemi, katkı kayıtları ve lisans gereksinimleriyle birlikte ilerleyen bir aşamada belirlenecektir.

Katkı gönderirken üçüncü kişilere ait veri, ekran görüntüsü veya metin kullanıyorsanız paylaşım yetkinizin bulunduğundan emin olun.

!!! important "Kalite taahhüdü"
    Bu dokümantasyon, topluluk desteğiyle gelişen bir eğitim projesidir. Yayımlanan her katkı; teknik doğruluk, tekrarlanabilirlik ve eğitsel değer açısından incelenir. İnceleme, resmi PixInsight dokümantasyonunun veya gerçek veri testinin yerine geçtiği anlamına gelmez.

## İlgili bölümler

- [Foundations](01-temeller/index.md)
- [Uygulamalı İş Akışları](15-workflows/index.md)
- [Hata Kütüphanesi](14-hata-kutuphanesi/index.md)
- [Hızlı Referans](quick-reference.md)
