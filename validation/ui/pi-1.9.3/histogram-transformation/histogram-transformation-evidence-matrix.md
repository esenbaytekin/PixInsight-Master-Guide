# HistogramTransformation UI Evidence Matrix

## Kapsam

- Process: `HistogramTransformation`
- Registry anahtarı: `histogram-transformation`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/histogram-transformation/screenshots/`
- Canonical doküman: `docs/07-stretch/histogram-transformation.md`

**UI-VERIFIED** doğrudan okunan etiket, menü veya açık liste seçeneğini; **UI-OBSERVED** yalnız ekran anındaki değer veya seçimi ifade eder. Görünen değerler default değildir.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| HT-EV-001 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Pencere | HistogramTransformation | Process başlığı | Net okunuyor | UI-VERIFIED | Yüksek | Evet | Process adı doğrulandı |
| HT-EV-002 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/07-process-menu-location.png` | Process menu | IntensityTransformations | Menü grubu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-003 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/07-process-menu-location.png` | Process menu | HistogramTransformation | Menü öğesi | Açık menüde seçili ve okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-004 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/07-process-menu-location.png` | Process menu | Process → IntensityTransformations → HistogramTransformation | Menü yolu | Tam yol görünür | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-005 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Target | <No View Available> | View seçici | Metin okunuyor | UI-VERIFIED | Yüksek | Evet | Input kabul davranışı kanıtlanmaz |
| HT-EV-006 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Kanallar | R | Kanal seçici | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-007 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Kanallar | G | Kanal seçici | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-008 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Kanallar | B | Kanal seçici | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-009 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Kanallar | RGB/K | Kanal seçici | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-010 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Kanallar | A | Kanal seçici | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-011 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Transfer | Shadows | Numeric alan | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Parametre anlamı görselden çıkarılmadı |
| HT-EV-012 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Transfer | Highlights | Numeric alan | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Parametre anlamı görselden çıkarılmadı |
| HT-EV-013 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Transfer | Midtones | Numeric alan | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Parametre anlamı görselden çıkarılmadı |
| HT-EV-014 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Transfer | Auto Clip Setup | Button | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Button davranışı kanıtlanmadı |
| HT-EV-015 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/Graph style.png` | Graph style | Lines | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-016 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/Graph style.png` | Graph style | Area | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-017 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/Graph style.png` | Graph style | Bars | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-018 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/Graph style.png` | Graph style | Dots | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-019 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/plot-resulation.png` | Plot resolution | 6-bit (64) | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-020 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/plot-resulation.png` | Plot resolution | 7-bit (128) | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-021 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/plot-resulation.png` | Plot resolution | 8-bit (256) | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-022 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/plot-resulation.png` | Plot resolution | 9-bit (512) | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-023 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/plot-resulation.png` | Plot resolution | 10-bit (1024) | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-024 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/plot-resulation.png` | Plot resolution | 12-bit (4096) | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-025 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/plot-resulation.png` | Plot resolution | 14-bit (16K) | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-026 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/plot-resulation.png` | Plot resolution | 16-bit (64K) | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-027 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/plot-resulation.png` | Plot resolution | 100 levels | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-028 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/plot-resulation.png` | Plot resolution | 1000 levels | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-029 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/plot-resulation.png` | Plot resolution | 10000 levels | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| HT-EV-030 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Plot | Plot resolution | ComboBox | 8-bit (256) seçili görünüyor | UI-OBSERVED | Yüksek | Evet | Ekran anındaki seçim; default değildir |
| HT-EV-031 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Plot | Graph style | ComboBox | Lines seçili görünüyor | UI-OBSERVED | Yüksek | Evet | Ekran anındaki seçim; default değildir |
| HT-EV-032 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Target | View | View seçici | <No View Available> görünüyor | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| HT-EV-033 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Transfer | Shadows | Numeric alan | 0.00000000 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| HT-EV-034 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Transfer | Highlights | Numeric alan | 1.00000000 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| HT-EV-035 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Transfer | Midtones | Numeric alan | 0.50000000 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| HT-EV-036 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| HT-EV-037 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset veya yeni instance kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır | Mevcut değerler default sayılamaz |
| HT-EV-038 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Genel | Tooltip ve console metni | Yardım/çıktı | Görünmüyor | UI-UNVERIFIED | Yüksek | Hayır | Ek kanıt gerekir |
| HT-EV-039 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Davranış | Pixel dönüşümü, clipping ve output etkisi | Process davranışı | Process çalıştırılmıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü before/after veri testi gerekir |
| HT-EV-040 | `validation/ui/pi-1.9.3/histogram-transformation/screenshots/01-full-interface.png` | Algoritma | Transfer parametrelerinin matematiksel anlamı ve Auto Clip Setup | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç özeti

| Ölçüt | Sonuç |
|---|---:|
| İncelenen görsel | 4 |
| UI-VERIFIED | 29 |
| UI-PARTIAL | 1 |
| UI-OBSERVED | 6 |
| UI-UNVERIFIED | 2 |
| DATA-REQUIRED | 1 |
| DOC-REQUIRED | 1 |
| Doğrulanan default | 0 |

## Karar

Process adı, menü yolu, kanal ve parametre etiketleri ile açık graph-style ve plot-resolution seçenekleri canonical dokümana taşınabilir. Görünen seçim ve sayılar yalnız ekran anına aittir. Default değerler, tooltip, console, algoritmik anlam ve çıktı davranışı doğrulanmamıştır.
