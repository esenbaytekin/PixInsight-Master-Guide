# Katkı Rehberi

PixInsight Master Guide'a yapılan katkılar teknik doğruluk, izlenebilirlik ve mevcut belge mimarisine uyum açısından incelenir.

## Başlamadan önce

1. İlgili canonical sayfanın ve [ROADMAP.md](ROADMAP.md) kapsamının mevcut durumunu kontrol edin.
2. Yazım ve Markdown kuralları için [STYLE_GUIDE.md](STYLE_GUIDE.md) dosyasını okuyun.
3. Teknik inceleme ölçütleri için [TECHNICAL_REVIEW_CHECKLIST.md](TECHNICAL_REVIEW_CHECKLIST.md) ve [TECHNICAL_VERIFICATION.md](TECHNICAL_VERIFICATION.md) dosyalarını kullanın.
4. Büyük bir değişiklikten önce çakışan açık çalışma bulunmadığını doğrulayın.

## İçerik ilkeleri

- Açıklamalar Türkçe, PixInsight process ve parametre adları özgün İngilizce biçiminde olmalıdır.
- Process davranışı, menü yolu, varsayılan değer ve sürüme bağlı UI ayrıntıları kanıtsız kesinlikte yazılmamalıdır.
- Doğrulanmamış sürüm davranışını `Doğrulama bekliyor` olarak görünür biçimde sınıflandırın.
- Evrensel ayar reçeteleri vermeyin. Sayısal değerleri örnek, başlangıç noktası veya ölçüm sonucu olarak bağlamlandırın.
- Bir kararın yalnız nasılını değil, nedenini ve başarısızlık koşullarını da açıklayın.
- Mevcut canonical içeriği zenginleştirin; aynı konu için ikinci bir authority sayfası oluşturmayın.
- Reklam dili, dolgu metni, gereksiz tekrar ve doğrulanamayan üstünlük iddialarından kaçının.

## Kaynak ve kanıt

Kaynak önceliği sırasıyla resmi PixInsight dokümantasyonu, geliştirici yayınları, plugin üreticisinin teknik dokümantasyonu, repository UI evidence kayıtları ve açıkça sınıflandırılmış pratik deneyimdir.

- UI ekran görüntüsü yalnız doğrudan görünen metin ve durumu kanıtlar.
- Açılmamış dropdown seçeneklerini, tooltip'i veya process davranışını tahmin etmeyin.
- Görünen değerleri reset/default durumu ayrıca kanıtlanmadıkça varsayılan değer olarak tanımlamayın.
- Gerçek veri sonucu iddia ediliyorsa veri koşullarını ve değerlendirme ölçütünü kaydedin.
- Alıntı ve görseller için kaynak, kullanım izni ve atıf gereksinimini kontrol edin.

## Dosya ve bağlantılar

- Dosya ve klasör adlarında küçük ASCII karakterler ve tire kullanın.
- MkDocs navigation yapısını yalnız gerekli olduğunda değiştirin.
- İç bağlantıları göreli Markdown bağlantılarıyla canonical hedefe yöneltin.
- Legacy yönlendirme sayfalarında teknik içeriği tekrar etmeyin.
- Görselleri ilgili sayfa veya validation yapısının belirlenmiş dizininde tutun; anlamlı alt metin ekleyin.
- Ham astro görüntüsü, büyük PixInsight proje dosyası, build çıktısı veya kişisel dosya yolu eklemeyin.

## Markdown ve diyagramlar

- Başlık hiyerarşisini atlamayın ve aynı sayfada yinelenen başlıklardan kaçının.
- Tabloları dar ekranlarda anlaşılır tutun.
- Admonition içeriğini dört boşlukla girintileyin.
- Mermaid düğüm kimliklerinde benzersiz ASCII değerler; özel karakterli etiketlerde tırnak kullanın.
- Placeholder, `TODO`, boş bağlantı ve kapanmamış code fence bırakmayın.

## Validation içeriği

UI validation çalışmaları [prompts/ui-validation-template.md](prompts/ui-validation-template.md) ve [prompts/process-registry.yml](prompts/process-registry.yml) tarafından tanımlanan sınırlar içinde yürütülür. Canonical doküman hedefi registry'den alınır; validation sırasında yeni process sayfası oluşturulmaz veya taşınmaz.

Kanıt kayıtlarında yalnız izin verilen durumları kullanın ve her screenshot referansının mevcut dosyaya işaret ettiğini doğrulayın.

## Değişiklik hazırlama

1. Küçük, tek amaçlı bir dal veya çalışma seti hazırlayın.
2. Kullanıcıya ait ilgisiz değişiklikleri değiştirmeyin.
3. Metni, bağlantıları, tabloları, admonition'ları ve Mermaid bloklarını gözden geçirin.
4. Aşağıdaki kontrolleri çalıştırın:

```bash
mkdocs build --strict
git diff --check
```

5. Yeni veya değişen bağlantıları ve görselleri yerel yayında açın.
6. Değişiklik özetinde kapsamı, doğrulama sonuçlarını ve açık sınırlamaları belirtin.

## Commit ve değişiklik önerisi

- Açıklayıcı, emir kipinde ve tek amacı anlatan commit mesajı kullanın.
- Dokümantasyon değişiklikleri için `docs: ...`, bakım işleri için `chore: ...` öneki uygundur.
- Değişiklik önerisine test sonucunu, ekran kanıtı sınırını ve bilinen riskleri ekleyin.
- Yayın sürümü, tag veya production deployment işlemlerini ayrı ve açıkça yetkilendirilmiş adımlar olarak ele alın.

## Güvenlik ve gizlilik

Parola, token, özel anahtar, kişisel dosya yolu, özel IP veya gerçek `.env` içeriği commit etmeyin. Deployment yalnız secret isimlerini ve örnek değer içermeyen yapılandırmayı belgelemelidir. Hassas bilgi fark ederseniz değişikliği yayımlamadan maintainer'a bildirin.

## Lisans

Katkı göndererek dokümantasyon katkınızın repository'deki [CC BY 4.0 lisansı](LICENSE.md) altında yayımlanabileceğini kabul etmiş olursunuz. Üçüncü taraf içeriği yalnız uyumlu lisans ve gerekli atıfla ekleyin.
