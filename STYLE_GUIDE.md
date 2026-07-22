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
- `İlgili Süreçler`, `Önceki Bölüm`, `Sonraki Bölüm` veya `Ayrıca Bakınız` başlıkları Türkçedir.
- Aynı hedefe aynı bölümde gereksiz tekrar bağlantı verilmez.
- Dosya taşınırsa gelen bağlantılar aynı değişiklikte güncellenir.
- Legacy yönlendirme sayfaları navigasyona eklenmez; canonical içeriği tekrar etmez.

## Navigasyon ve Legacy Sayfalar

Navigasyon yalnız canonical sayfaları içerir. `docs/05-renk-kalibrasyonu/` altındaki kısa yönlendirmeler eski URL'leri korumak için tutulur; ikinci bir Color Calibration ağacı değildir. Yeni içerik ve yeni bağlantılar yalnız `docs/05-color-calibration/` hedeflerine yazılır.

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
