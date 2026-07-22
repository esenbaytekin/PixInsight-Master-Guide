# Narrowband Foundations Audit

## Kapsam ve amaç

Bu audit, `docs/09-narrowband/` altındaki bütün sayfaları; ilişkili filtre, renk kalibrasyonu, PixelMath, mask, process, workflow ve troubleshooting sınırlarını inceler. Phase 7.4 hedefi, mevcut canonical URL'leri koruyarak altı jenerik taslağı tamamlamak ve her major narrowband kavramına tek sahip atamaktır.

## Sayfa denetimi

| Sayfa | Mevcut rol | Önerilen/final rol | İlk durum | Tamamlanma | Canonical owner | Overlap riski | Uygulanan işlem | URL etkisi |
|---|---|---|---|---:|---|---|---|---|
| `09-narrowband/index.md` | Jenerik taslak | Dar bant imaging, Ha/OIII/SII ve target suitability foundation | Taslak | %100 | Narrowband imaging + emission lines | Filtreler | Baştan yazıldı; genel filter teorisi linklendi | Yok |
| `09-narrowband/hargb.md` | Jenerik taslak | HaRGB ve continuum sınırı concept | Taslak | %100 | HaRGB architecture | LRGB+Ha workflow, PixelMath | Baştan yazıldı; formula/workflow dışarıda tutuldu | Yok |
| `09-narrowband/hoo.md` | Jenerik taslak | HOO/bicolor palette concept | Taslak | %100 | HOO | PixelMath/workflow | Baştan yazıldı | Yok |
| `09-narrowband/sho.md` | Jenerik taslak | SHO/Hubble Palette concept | Taslak | %100 | SHO | PixelMath/workflow | Baştan yazıldı | Yok |
| `09-narrowband/foraxx.md` | Jenerik taslak | Alternative palette architecture; Foraxx örneği | Taslak | %100 | Alternative palettes | Recipe catalog | Baştan yazıldı, URL korundu | Yok |
| `09-narrowband/natural-sho.md` | Jenerik taslak | Narrowband color balance ve natural-looking sınırı | Taslak | %100 | Narrowband color balance | SPCC, SHO | Baştan yazıldı; SPCC sınırı netleştirildi | Yok |
| `channel-normalization-and-weighting.md` | Yok | Scale, LinearFit concept ve weighting | Yeni | %100 | Channel normalization + weighting | LinearFit process, PixelMath | Yeni canonical concept | Yeni URL |
| `synthetic-luminance.md` | Yok | Narrowband synthetic luminance concept | Yeni | %100 | Synthetic luminance | LRGB, PixelMath | Yeni canonical concept | Yeni URL |
| `starless-processing.md` | Yok | Starless strategy ve recombination concept | Yeni | %100 | Starless + recombination | StarXTerminator process | Yeni canonical concept | Yeni URL |
| `mask-strategy.md` | Yok | Narrowband-specific mask strategy | Yeni | %100 | Narrowband mask strategy | Genel mask/process pages | Yeni canonical concept | Yeni URL |
| `troubleshooting.md` | Yok | Ortak narrowband failure matrix | Yeni | %100 | Narrowband failure diagnosis | Hata kartları | Yeni troubleshooting hub | Yeni URL |

## Altı taslağın sonucu

Altı mevcut sayfadaki `Durum: Taslak`, generic menu/parameter placeholders ve doğrulanmamış işlem dili kaldırıldı. Sayfalar process tutorial'a dönüştürülmedi. Tamamlanan sayfalar: `index`, `hargb`, `hoo`, `sho`, `foraxx`, `natural-sho`.

## Canonical sahiplik

| Kavram | Canonical sahibi |
|---|---|
| Narrowband imaging | `docs/09-narrowband/index.md` |
| Ha, OIII ve SII fiziksel anlamı | `docs/09-narrowband/index.md` |
| General filter theory | `docs/01-temeller/filtreler.md` |
| SHO/Hubble Palette | `docs/09-narrowband/sho.md` |
| HOO/bicolor | `docs/09-narrowband/hoo.md` |
| Alternative palettes/Foraxx | `docs/09-narrowband/foraxx.md` |
| HaRGB architecture | `docs/09-narrowband/hargb.md` |
| Channel normalization | `docs/09-narrowband/channel-normalization-and-weighting.md` |
| Channel weighting | `docs/09-narrowband/channel-normalization-and-weighting.md` |
| Synthetic luminance | `docs/09-narrowband/synthetic-luminance.md` |
| Starless processing | `docs/09-narrowband/starless-processing.md` |
| Star recombination | `docs/09-narrowband/starless-processing.md` |
| Narrowband color balance | `docs/09-narrowband/natural-sho.md` |
| Narrowband mask strategy | `docs/09-narrowband/mask-strategy.md` |
| Narrowband troubleshooting | `docs/09-narrowband/troubleshooting.md` |
| PixelMath executable recipes | `docs/10-pixelmath/kanal-karisimlari.md` |
| SHO/HOO operation order | `docs/15-workflows/sho-hoo.md` |
| StarXTerminator UI/process behavior | `docs/06-ai-eklentileri/starxterminator.md` |

## Formula sınıflandırması

| Formula/ifade | Sınıf | Sahiplik kararı |
|---|---|---|
| `SII → R, Ha → G, OIII → B` | Conceptual mapping | SHO concept'te kalır |
| `Ha → R, OIII → G/B` | Conceptual mapping | HOO concept'te kalır |
| `L = wH·Ha + wO·OIII + wS·SII` | Conceptual illustration | Synthetic luminance'da assumptions/risk ile kalır |
| HaRGB, weighted SHO/HOO expression'ları | Reusable building block | PixelMath Kanal Karışımları'na linklenir |
| Foraxx/Dynamic SHO expression'ları | Process/workflow recipe | Foundations'a kopyalanmaz; PixelMath/workflow sahibi |
| Continuum subtraction expression | Workflow-specific recipe | PixInsight M31 Ha örneği ve LRGB+Ha workflow sahibi |
| Star recombination expression | State-dependent recipe | PixelMath/process/workflow sahibine linklenir |

Foundations içinde executable coefficient seti yayınlanmadı. Kalan conceptual illustrations; input, output intent, state, normalization assumption, range ve clipping context'iyle tanımlandı.

## Tekrar ve scope temizliği

- General bandpass/transmission teorisi `Filtreler` sayfasında bırakıldı; narrowband sayfası yalnız emisyon imaging sonucunu anlatır.
- SHO/HOO foundations'ta process menu, UI parameter ve fixed recipes kaldırıldı.
- SPCC narrowband sayfası process scope sahibi olarak tutuldu; palette color balance `natural-sho.md` sayfasına bağlandı.
- StarXTerminator process sayfası model/UI sahibi olarak tutuldu; starless strategy yeni canonical sayfaya bağlandı.
- Genel mask polarity `Maske Mantığı` sahibinde kaldı; narrowband mask sayfası yalnız Ha/OIII/SII stratejisini kapsar.
- Formula ve syntax `PixelMath Kanal Karışımları` sahibinde; workflow sequence `SHO/HOO İş Akışı` sahibinde kaldı.
- Applied Workflow içerikleri yeniden yazılmadı.

## Source-quality incelemesi

| İddia alanı | Kullanılan kaynak türü | Durum/risk |
|---|---|---|
| SII/Ha/OIII mapped color ve Hubble Palette | ESA institutional examples | Yüksek; literal visual color olmadığı açıklandı |
| Filter isolation ve f-ratio response | Chroma manufacturer technical data | Ölçülmüş ürün verisi; bütün filtrelere aynı nicelik taşınmadı |
| Ay ışığının spektral niteliği | NASA science | Yüksek; narrowband immunity iddiası yapılmadı |
| Continuum subtraction | PixInsight official M31 Ha example | Yüksek; example coefficient universal yapılmadı |
| Exact line wavelengths | Established spectroscopy values | Yaklaşık verildi; abundance/temperature çıkarımı yapılmadı |
| Foraxx variants | Community method family | Tek official formula iddiası yapılmadı; uygulama doğrulaması workflow'a ertelendi |
| LinearFit exact behavior/UI | Birincil 1.9.3 process kanıtı gerekli | Concept sınırı korundu; process page `DOC-REQUIRED` |

## Görsel mimari

Eklenen Mermaid kapsamı:

1. Physical emission → filter → mono channel → palette → display.
2. SHO mapping.
3. HOO mapping.
4. Normalization → weighting → mapping → stretch.
5. Star separation/recombination.
6. Concept → Process → Workflow → Troubleshooting chain.
7. Narrowband mask decision flow.
8. Troubleshooting diagnostic chain.

## Gerçek veri görsel planı

| Öncelik | Plan | Kaynak gereksinimi |
|---|---|---|
| 1 | Ha/OIII/SII ortak ve bağımsız STF comparison | Aynı hedefe ait project-owned mono masters |
| 2 | Weak OIII preservation | OIII filamentli HOO/SHO ve processing history |
| 3 | Raw/balanced SHO | SII/Ha/OIII masters |
| 4 | Raw/balanced HOO | Ha/OIII masters |
| 5 | Normalization before/after | Lineer masters ve statistics |
| 6 | Synthetic luminance alternatives | Ha/OIII/SII masters |
| 7 | Mask polarity error | Target, mask image ve overlay |
| 8 | LHE maskeli/maskesiz | Weak OIII içeren nonlinear target |
| 9 | Starless ve star layer | Source, starless, stars, difference |
| 10 | Recombination failure/correction | Mismatched ve corrected layer states |

Hiçbir gerçek bilimsel görüntü taklit edilmedi; bütün planlar project-owned data gereksinimini ve image state'i kaydeder.

## Navigation ve arama

Beş yeni canonical entry mevcut `Narrowband` grubuna eklendi; global depth üç seviyeyi aşmadı. Existing Level 2 indentation davranışı korunur. Metadata; narrowband/dar bant, Ha/H-alpha, OIII, SII, Hubble Palette, HOO, bicolor, Foraxx, normalization, weighting, synthetic luminance, starless, recombination ve failure-query terimlerini doğal bağlamda içerir.

## Kalan teknik riskler

- PixInsight 1.9.3 `LinearFit` için repository'de canonical process page ve UI evidence yoktur (`DOC-REQUIRED`).
- Foraxx adı altında kullanılan expression varyantları birincil/maintainer kaynağı ve gerçek veri execution ile sınıflandırılmalıdır.
- Mono/OSC dual-band channel extraction yöntemi process ve camera/filter modeline bağlıdır; bu sprint sabit yöntem yayınlamadı.
- Line ratio, abundance, temperature ve density yorumları photometric/spectroscopic calibration olmadan yapılamaz.
- Star separation/recombination başarı ölçütleri plugin/model version ve gerçek data gerektirir.

## Ertelenen workflow konuları

- Complete NGC 6888 HOO/SHO processing.
- Full SHO, HOO ve Foraxx process sequence.
- M31 Ha integration and continuum subtraction workflow.
- Full starless workflow and broadband-star replacement.
- Final publishing and output preparation.
- Workflow-specific PixelMath expressions and coefficients.

Bu konular mevcut 17 Applied Workflow taslağının Phase 7.5 veya sonraki uygulamalı içerik sprintinde ele alınmalıdır.

## Phase 7.5 önerisi

Phase 7.5, Applied Workflow completion olmalıdır. Önce iki reference dataset seçilmeli: yüksek SNR'lı SII/Ha/OIII seti ve zayıf OIII içeren Ha/OIII seti. Her workflow; source inventory, channel statistics, normalization decision, baseline mapping, mask evidence, star strategy, checkpoint images, PixelMath state/context ve failure recovery kaydı içermelidir. Foundations metni tekrar edilmemeli; canonical kavramlara bağlantı verilmelidir.

## İstatistikler

| Ölçüm | Sonuç |
|---|---:|
| Narrowband sayfası incelendi/final yapıda | 11 |
| Tamamlanan mevcut taslak | 6 |
| Baştan yazılan mevcut sayfa | 6 |
| Kısmen güncellenen ilişkili doküman sayfası | 5 |
| Yeni canonical concept/troubleshooting sayfası | 5 |
| Yeni navigation entry | 5 |
| Narrowband canonical owner | 14 |
| Foundations'tan ayrılan duplicate/scope alanı | 6 |
| Process/workflow sınırı netleştirilen alan | 5 |
| PixelMath'e taşınan veya linklenen formula ailesi | 7 |
| Eklenen internal cross-link | 59 |
| Narrowband Mermaid diyagramı | 13 |
| Gerçek veri illustration planı | 13 |
| Eklenen benzersiz external technical source | 6 |
| Korunan mevcut Narrowband canonical URL | 6 |
| Broken link / anchor | 0 / 0 |
| Narrowband draft | 0 |
| Applied Workflow draft | 17 |
| Repository-wide `Durum: Taslak` | 17 |

## Validation kaydı

- `mkdocs build --strict`: başarılı. Dört legacy Color Calibration redirect sayfası navigation dışında bilgi mesajı olarak kalır.
- `git diff --check`: başarılı.
- Üretilen HTML sayfası: 141.
- Kontrol edilen local link/asset reference: 31.193; broken link: 0; broken anchor: 0.
- Canonical URL: 140; duplicate canonical: 0.
- Navigation target: 136/136 unique; missing target: 0; maximum depth: 3.
- Orphan: 4; tamamı amaçlı legacy `05-renk-kalibrasyonu` redirect sayfasıdır.
- Search query coverage: 22/22.
- Previous/next chain, navigation sırasındaki 11 Narrowband sayfada mevcuttur.
- Browser testinde desktop `1366 px`, tablet `885 px` ve mobile `375 px` görünüm kontrol edildi; document-level yatay taşma yoktur. Mobile drawer control üretildi; existing Level 2 girinti computed style değeri `16px` olarak korundu.
- Değişen CSS color tanımlamaz; mevcut light görünüm ve theme-variable compatibility korunur. Repository config'i kullanıcıya açık dark palette toggle tanımlamadığı için canlı dark-mode interaction testi uygulanabilir değildir.
- Mermaid source blocks geçerli fenced markup olarak build edildi; Mermaid CLI local ortamda bulunmadığı için CLI parse testi yapılamadı.
- Conceptual formula inline code olarak render edildi; executable formula foundations'a eklenmedi.
- Narrowband draft/placeholder: 0. Applied Workflow draft: 17 ve içerikleri değişmedi.
