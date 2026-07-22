# PixInsight Master Guide — Editoryal Stil Rehberi

Bu rehber, projenin Türkçe teknik anlatım, Markdown yapısı ve doğrulama standartları için tek başvuru kaynağıdır. Yeni veya güncellenen bütün sayfalar bu kurallara uymalıdır.

## Dil Politikası

- Kullanıcıya görünen başlıklar, navigasyon etiketleri, tablo sütunları ve callout başlıkları Türkçe yazılır.
- PixInsight process, script, parametre, kontrol, hata mesajı ve dosya biçimi adları özgün İngilizce biçimiyle korunur: `HistogramTransformation`, `PixelMath`, `Amount`, `Less than three samples were generated`, TIFF.
- Bir kavram için aynı Türkçe karşılık kullanılır; aynı paragrafta Türkçe ve İngilizce eş anlamlılar dönüşümlü kullanılmaz.
- Doğrulanmamış sürüm veya UI davranışı kesin ifade edilmez; doğrulama ihtiyacı görünür biçimde belirtilir.

## Terminoloji Sözlüğü

| İngilizce kavram | Canonical Türkçe kullanım | Kullanılmaması gereken varyant |
|---|---|---|
| linear | doğrusal | lineer başlık dili |
| nonlinear | doğrusal olmayan | nonlineer başlık dili |
| signal | sinyal | işaret |
| noise | gürültü | noise, parazit |
| dynamic range | dinamik aralık | tonal aralık |
| contrast | kontrast | karşıtlık |
| local contrast | yerel kontrast | lokal kontrast |
| global contrast | genel kontrast | global kontrast |
| mask | maske | mask |
| masking | maskeleme | mask kullanımı |
| workflow | iş akışı | workflow |
| decision tree | karar ağacı | decision tree |
| troubleshooting | sorun giderme | troubleshooting |
| reference | kaynak | referans başlığı |
| output | çıktı | output başlığı |
| input | girdi | input başlığı |
| stretch | stretch işlemi | germe |

Process veya parametre adının parçası olan sözcükler çevrilmez. Örneğin `LocalHistogramEqualization`, `Linear Fit Clipping`, `StarMask` ve `Replace Target` özgün kalır.

## Başlık Hiyerarşisi

- Her sayfada yalnız bir `#` belge başlığı bulunur.
- Ana bölümler `##`, bunların alt başlıkları `###` olur.
- Başlık seviyesi atlanmaz; `##` altında doğrudan `####` kullanılmaz.
- Başlıklar kısa, betimleyici ve cümle sonu noktasız yazılır.
- Standart bölüm adları:

| İşlev | Başlık |
|---|---|
| Purpose | Amaç |
| Theory | Kuramsal Arka Plan |
| Workflow Position | İş Akışındaki Yeri |
| Input Requirements | Giriş Gereksinimleri |
| Output Expectations | Beklenen Çıktılar |
| Performance Considerations | Performans Değerlendirmesi |
| Best Practices | En İyi Uygulamalar |
| Troubleshooting | Sorun Giderme |
| Decision Guide | Pratik Karar Rehberi |
| Visual Result Expectation | Beklenen Görsel Sonuç |
| References | Kaynaklar |
| Evidence Level | Kanıt Düzeyi |

## Yazım Stili

- Bir işlemden önce neden gerektiği, ardından nasıl uygulanacağı açıklanır.
- Emir kipinde adımlar kısa ve gözlenebilir eylemlerle yazılır.
- Mutlak öneriler yalnız kaynak veya kontrollü test varsa kullanılır.
- “Her zaman”, “asla”, “en iyi” gibi ifadeler teknik koşul belirtilmeden kullanılmaz.
- Paragraflar tek ana düşünce taşır; aynı teori farklı sayfalarda kopyalanmak yerine canonical sayfaya bağlanır.
- Hedef kitle orta ve ileri seviye PixInsight kullanıcısıdır; dolgu metin ve pazarlama dili kullanılmaz.

## Büyük Harf Kullanımı

- Türkçe bölüm başlıklarında anlamlı sözcükler proje genelindeki biçimle tutarlı yazılır.
- Process ve parametre adlarının üretici yazımı korunur.
- Genel kavramlar cümle içinde küçük harfle yazılır: maske, gürültü, sinyal, dinamik aralık.
- Dosya uzantıları `.xisf`, `.fits`, `.tif` olarak; biçim adları XISF, FITS, TIFF olarak yazılır.

## Noktalama ve Boşluk

- Türkçe noktalama kuralları uygulanır; noktalama işaretinden önce boşluk bırakılmaz.
- Başlıklarda nokta kullanılmaz.
- Liste ve başlıkların çevresinde bir boş satır bulunur.
- Literal `\n` yalnız çalıştırılabilir kod veya bilinçli string örneğinde kullanılabilir.
- Eğik tırnak yerine Markdown backtick veya düz çift tırnak kullanılır.

## Markdown Kuralları

- CommonMark ve proje `pymdownx` eklentileriyle uyumlu Markdown kullanılır.
- Kod bloklarında uygun dil etiketi bulunur.
- Vurgu yalnız anlam taşıdığında kullanılır; tüm paragraf bold yapılmaz.
- Dosya yolları, process parametreleri ve kısa ifadeler backtick ile yazılır.
- Her fence kapatılır; tablolar ve listeler kesintisiz blok yapısını korur.

## Callout Kullanımı

| Tür | Kullanım |
|---|---|
| `!!! note` | Kapsam, tanım veya nötr bağlam |
| `!!! tip` | Güvenli ve uygulanabilir öneri |
| `!!! warning` | Veri kaybı, yanlış yorum veya doğrulama riski |
| `!!! info` | Kaynak, sürüm veya kanıt bağlamı |
| `!!! example` | Gerçek veya temsilî senaryo |

Callout tek mesaj taşır. Başlığı kullanıcıya görünüyorsa Türkçe yazılır. Aynı uyarı hem paragrafta hem callout içinde yinelenmez. İçerik dört boşluk girintili olmalıdır.

## Tablo Kuralları

- Sütun başlıkları Türkçe, kısa ve aynı dilbilgisel yapıda yazılır.
- Her tablo bir karar veya karşılaştırma amacı taşır.
- Birimler sütun başlığında ya da değerin yanında açık belirtilir.
- Hücrelerde gereksiz paragraf ve satır sonu kullanılmaz.
- Karar tablolarında önerilen sütunlar: `Durum`, `Öneri`, `Gerekçe`.
- Sorun giderme tablolarında önerilen sütunlar: `Belirti`, `Olası neden`, `Doğrulama`, `Düzeltme`.

## Mermaid Kuralları

- Pipeline ve sıra diyagramlarında `flowchart LR`, karar ve recovery ağaçlarında `flowchart TD` kullanılır.
- Node kimlikleri benzersiz ASCII harf/rakam biçimindedir.
- Kullanıcıya görünen node etiketleri Türkçedir; process adları özgün kalır.
- Noktalama veya parantez içeren etiketler çift tırnakla yazılır.
- Karar node'ları soru biçimindedir; dallar `Evet` ve `Hayır` gibi açık etiket taşır.
- HTML satır sonu ve literal `\n` kullanılmaz.
- Dekoratif diyagram eklenmez; metinde zor anlaşılan ilişkiyi açıklamalıdır.

## Kanıt Düzeyi Standardı

| Düzey | Anlamı |
|---|---|
| Official Documentation | Birincil PixInsight belgesi veya resmi kaynak |
| Verified Workflow | Repository'de gözlenebilir ve tekrarlanabilir iş akışı |
| Community Consensus | Birden fazla güvenilir topluluk kaynağında ortak yaklaşım |
| Practical Recommendation | Veri setine bağlı, muhafazakâr uygulama önerisi |

Kanıt etiketi yalnız iddianın niteliğini anlamayı kolaylaştırıyorsa kullanılır. Etiket, kaynak göstermenin yerine geçmez.

## Tarif Doğrulaması Standardı

PixelMath veya çok adımlı tariflerde şu kayıt bulunur:

1. Girdi view ve kanal kimliği.
2. Doğrusal/doğrusal olmayan durum.
3. Expression ve Symbols.
4. Output range ve clipping kontrolü.
5. Maske ve inversion durumu.
6. Temsilî preview sonucu.
7. Geri dönüş checkpoint'i.

Doğrulanmamış tarif “genel reçete” olarak sunulmaz.

## Pratik Karar Rehberi Standardı

Ana process ve iş akışı sayfalarında `Durum | Öneri | Gerekçe` tablosu kullanılır. Her satır gözlenebilir bir koşulla başlar ve tek bir sonraki eylem önerir. Sabit parametre, veri seti bağlamı olmadan verilmez.

## Beklenen Görsel Sonuç Standardı

Uygun sayfalarda dört ayrım bulunur:

- Beklenen iyileşme.
- Yetersiz işlemenin işaretleri.
- Aşırı işlemenin işaretleri.
- Tipik artefaktlar ve recovery noktası.

Görsel kabul ölçütü yalnız estetik sıfatlarla değil, clipping, halo, gürültü ve yapı sürekliliği gibi gözlenebilir işaretlerle yazılır.

## Hata Önem Düzeyi Standardı

| Düzey | Kullanım |
|---|---|
| 🔴 Critical | Geri döndürülemez veri kaybı veya geçersiz sonuç |
| 🟠 Major | Önemli kalite kaybı; çoğunlukla kısmi yeniden işleme |
| 🟡 Moderate | Lokal veya ek işlemle düzeltilebilir hata |
| 🔵 Minor | Sınırlı kozmetik veya teslim etkisi |

Her hata kartı ayrıca Detectability, Recoverability ve Typical Detection Stage alanlarını içerir. Bu alanların değerleri kullanıcıya görünen tabloda Türkçeleştirilir; severity simgeleri korunur.

## Hızlı Özet Standardı

Hızlı özet, sayfadaki doğrulanmış bilgiyi tek sayfalık kontrol listesine indirger; yeni teknik iddia eklemez. Tercihen `!!! tip "Tek sayfalık kontrol listesi"` veya kısa tablo kullanılır.

## İç Bağlantı Kuralları

- İç bağlantılar göreli Markdown bağlantısıdır.
- Process açıklaması tekrar edilmek yerine canonical process sayfasına bağlanır.
- Bağlamsal navigasyonda yalnız `İlgili Süreçler`, `İlgili İş Akışları`, `Kullanılan Süreçler`, `İlgili Sorun Giderme Başlıkları`, `Önceki Bölüm`, `Sonraki Bölüm` ve `Ayrıca İnceleyin` başlıkları kullanılır.
- Aynı hedefe aynı bölümde gereksiz tekrar bağlantı verilmez.
- Dosya taşınırsa gelen bağlantılar aynı değişiklikte güncellenir.
- Legacy yönlendirme sayfaları navigasyona eklenmez; canonical içeriği tekrar etmez.

## Eğitim Katmanları

- Foundations concept sayfaları **“Bu nedir?”** sorusunu yanıtlar; belirli bir process'in arayüzünü veya parametre reçetesini tekrar etmez.
- Evrensel teori process dokümantasyonu içinde saklanmaz; concept sayfası teoriye, process sayfası arayüz ve uygulamaya karşılıklı bağlantı verir.
- Concept ve onu uygulayan process aynı prosedürü veya aynı uzun teori açıklamasını tekrarlamaz; her kavram için tek canonical sahip tanımlanır.
- Process sayfaları **“Yazılımda nasıl kullanılır?”** sorusunu yanıtlar ve gerekli kavramsal ön bilgiye bağlantı verir.
- Workflow sayfaları **“Hangi durumda ve hangi sırayla kullanılır?”** sorusunu yanıtlar; process belgelerinin ikinci kopyası olmaz.
- Troubleshooting sayfaları **“Ne yanlış gitti?”** sorusunu belirti, neden, doğrulama ve recovery sırasıyla ele alır.
- Astrofotoğraf Temelleri yazılımdan bağımsız veri üretimi kavramlarını; Görüntü İşleme Temelleri evrensel sayısal görüntü kavramlarını; PixInsight Temelleri ise yazılımın çalışma modelini kapsar.
- Bir sayfa birden fazla eğitim domain'ini önemli ölçüde içeriyorsa yeni canonical kopya oluşturulmaz; audit kaydıyla ayrıştırma planlanır ve mevcut URL, redirect kararı verilene kadar korunur.
- Narrowband concept sayfası palette mimarisini açıklar; sabit PixelMath tarif kataloğuna dönüşmez.
- Her palette physical channel meaning ile displayed color ayrımını açıkça belirtir.
- PixelMath formülü; input, output intent, image state, normalization varsayımı, dynamic-range davranışı ve clipping riskini belirtmeden yayımlanmaz.
- Broadband color calibration ile narrowband palette balancing ayrı kavramlardır.
- Starless processing bir workflow stratejisidir; fiziksel sahnenin literal decomposition'ı olarak sunulmaz.
- Her narrowband kavramının tek canonical owner'ı bulunur.

## İş Akışı Yazım Standardı

- Workflow sayfası process listesi değil; girdi varsayımı, gözlenebilir kanıt, karar, alternatif, başarısızlık işareti ve geçiş ölçütü zinciridir.
- Her önemli aşama “neden gerekli?”, “hangi kanıtla gerekli?”, “hangi state'te uygulanır?”, “aşırı işlem nasıl görünür?” ve “atlanırsa ne olur?” sorularını yanıtlar.
- Generic workflow genel karar mimarisinin; project-specific workflow ise dataset facts, o projedeki kararlar ve kanıt kapılarının canonical sahibidir.
- Dataset fact ile hedefe ilişkin genel bilgi ayrılır. Repository kaydında olmayan kamera, optik, filter, poz veya integration süresi tahmin edilmez; eksik kayıt açıkça belirtilir.
- Process parametreleri workflow içinde yeniden belgelenmez; canonical process sayfasına bağlantı verilir.
- Her proje aşamasında beklenen ara sonuç, başarısızlık işareti, geri dönüş noktası ve “ne zaman durmalı?” ölçütü bulunur.
- Formül; input, output intent, linear/nonlinear state, normalization varsayımı, dynamic-range davranışı ve clipping riski olmadan workflow'a eklenmez.
- Visual evidence plan; tam görüntü, sabit koordinatlı yüzde 100 crop, gerekli model/mask ve önce/sonra çiftlerini tanımlar. Henüz olmayan görsel, sonucu doğrulamış gibi anlatılmaz.
- Final kalite kapısı en az clipping, background, star/halo, noise, yapı sürekliliği ve export kaydını kapsar.

## Navigasyon ve Legacy Sayfalar

Navigasyon yalnız canonical sayfaları içerir. `docs/05-renk-kalibrasyonu/` altındaki kısa yönlendirmeler eski URL'leri korumak için tutulur; ikinci bir Color Calibration ağacı değildir. Yeni içerik ve yeni bağlantılar yalnız `docs/05-color-calibration/` hedeflerine yazılır.

Canonical sayfalardaki `Önceki Bölüm` ve `Sonraki Bölüm` bağlantıları alfabetik sırayı değil `mkdocs.yml` içindeki öğrenme sırasını izler. Process sayfaları ilgili canonical process, iş akışı ve hata kartlarına; iş akışı sayfaları ise kullandıkları canonical process sayfalarına bağlanır. Bağlantı listeleri teknik açıklamayı tekrarlamaz ve yalnız bağlamla doğrudan ilişkili hedefleri içerir.

## Sayfa Metadatası ve Arama

- Canonical sayfalarda H1 başlığının hemen ardından `!!! info "Sayfa Bilgisi"` kutusu kullanılır.
- İlk satır `Kategori`, `Düzey` ve `Tahmini okuma`; ikinci satır `Anahtar kelimeler` alanlarını içerir.
- Major process sayfalarında üçüncü satır olarak canonical sayfalara bağlı `Önerilen ön bilgiler` eklenir.
- Düzey yalnız `Beginner`, `Intermediate`, `Advanced` veya `Expert` değerlerinden biridir.
- Okuma süresi, kod ve diyagram bloklarının okunma yükü göz önünde bulundurularak 3, 5, 7, 10, 15, 20, 25 veya 30 dakika biçiminde yuvarlanır.
- Anahtar kelime listesi official process adı, yaygın kısaltma, anlamlı Türkçe/İngilizce karşılık ve gerektiğinde toplulukta kullanılan adı kapsar; sayfa başına sekiz girdiyi aşmaz.

## Header ve release metadata

- `site_name` yalnız proje adını içerir; version ve commit bilgisi site adına eklenmez.
- Release metadata build sırasında tek kaynaktan theme context'ine aktarılır ve yalnız ana header'da gösterilir.
- Proje adı görsel olarak birincildir. Release metadata daha küçük, normal ağırlıkta ve ikincil vurgudadır.
- Dar ekranlarda commit önce, gerekirse tüm metadata sonra gizlenir; drawer ve sidebar yalnız proje adını gösterir.
- Alias değerleri aynı yazımın büyük/küçük harf varyantlarını tekrarlamaz. Parametre veya process olmayan uydurma kısaltmalar eklenmez.
- Workflow metadatası yalnız gerçekten geçerli hedef, filter combination, camera type, sky quality veya signal quality terimlerini içerir.
- Metadata teknik açıklamanın yerine geçmez, doğrulanmamış davranış iddiası taşımaz ve `Doğrulama bekliyor` gibi placeholder değer içermez.

## Teknik Doğrulama Standardı

- Major canonical process sayfaları `Teknik Doğrulama Durumu` tablosunda hedef sürüm, teknik inceleme, resmî kaynak, iş akışı tutarlılığı, kanıt düzeyi ve son inceleme alanlarını gösterir.
- Conceptual/statik inceleme, UI screenshot doğrulaması, gerçek veri testi ve canlı PixInsight execution birbirinden ayrı kanıt türleridir; biri diğerinin yerine yazılmaz.
- Kaynak önceliği PixInsight reference/process documentation, developer/staff açıklaması, official release notes, plugin developer manual ve açıkça sınıflandırılmış pratik kaynak sırasını izler.
- Exact UI label, menu path, default, tooltip ve console message yalnız hedef build kanıtıyla kesin ifade edilir. Kanıt yoksa kavramsal ad kullanılır veya sürüm sınırlaması eklenir.
- Exact sayısal değer resmî değilse örnek ya da veri setine bağlı karar olarak etiketlenir; sahte kesinlik üretilmez.
- `✅ Verified` recipe sınıfı, syntax ve intended output savunulabilir biçimde doğrulanmadan kullanılmaz. Statik review, canlı PixInsight execution olarak raporlanmaz.
- AI plugin davranışı PixInsight sürümünden ayrı olarak plugin ve model sürümüne de bağlı kabul edilir.
- Process'in resmi adı ile ürettiği görüntünün topluluk adı ayrılır; örneğin process `RangeSelection`, üretilen görüntü “range mask” olabilir.

## Dosya ve Görsel Adlandırma

- Dosya adları küçük harf ASCII ve tire biçimindedir.
- Görseller `process-konu-asama-v01.png` kalıbını kullanır.
- Boşluk, Türkçe karakter ve belirsiz `final-final` benzeri adlar kullanılmaz.
- Mevcut numaralı bölüm mimarisi korunur.

## Editoryal Kontrol Listesi

- [ ] Başlık ve navigasyon dili Türkçe.
- [ ] Process/parametre adları özgün İngilizce.
- [ ] Başlık seviyeleri sıralı.
- [ ] Terminoloji canonical sözlükle uyumlu.
- [ ] Callout türü ve girintisi doğru.
- [ ] Tablo sütunları Türkçe ve tutarlı.
- [ ] Mermaid yönü, node kimlikleri ve etiketleri standart.
- [ ] Kanıt düzeyi ve kaynak ayrımı açık.
- [ ] İç bağlantılar canonical hedefe gidiyor.
- [ ] Placeholder, TODO ve literal `\n` yok.
- [ ] `mkdocs build --strict` ve `git diff --check` başarılı.
