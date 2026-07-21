# LocalHistogramEqualization UI Evidence Matrix

## Kapsam

- Process: `LocalHistogramEqualization`
- Registry anahtarı: `local-histogram-equalization`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/`
- Canonical doküman: `docs/12-detay-ve-kontrast/local-histogram-equalization.md`

**UI-VERIFIED** doğrudan okunan etiket, menü veya açık liste seçeneğini; **UI-OBSERVED** yalnız ekran anındaki değer veya durumu ifade eder. Görünen değerler default değildir.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| LHE-EV-001 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/01-full-interface.png` | Pencere | LocalHistogramEqualization | Process başlığı | Net okunuyor | UI-VERIFIED | Yüksek | Evet | Process adı doğrulandı |
| LHE-EV-002 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/07-process-menu-location.png` | Process menu | IntensityTransformations | Menü grubu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| LHE-EV-003 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/07-process-menu-location.png` | Process menu | LocalHistogramEqualization | Menü öğesi | Açık menüde seçili ve okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| LHE-EV-004 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/07-process-menu-location.png` | Process menu | Process → IntensityTransformations → LocalHistogramEqualization | Menü yolu | Tam yol görünür | UI-VERIFIED | Yüksek | Evet |  |
| LHE-EV-005 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/01-full-interface.png` | Main | Kernel Radius | Numeric alan ve slider | Etiket ve kontroller görünür | UI-VERIFIED | Yüksek | Evet | Parametre etkisi kanıtlanmadı |
| LHE-EV-006 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/01-full-interface.png` | Main | Contrast Limit | Numeric alan ve slider | Etiket ve kontroller görünür | UI-VERIFIED | Yüksek | Evet | Parametre etkisi kanıtlanmadı |
| LHE-EV-007 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/01-full-interface.png` | Main | Amount | Numeric alan ve slider | Etiket ve kontroller görünür | UI-VERIFIED | Yüksek | Evet | Parametre etkisi kanıtlanmadı |
| LHE-EV-008 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/01-full-interface.png` | Main | Histogram Resolution | ComboBox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| LHE-EV-009 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/01-full-interface.png` | Main | Circular Kernel | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| LHE-EV-010 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/histogram-resolution.png` | Histogram Resolution | 8-bit (256) | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| LHE-EV-011 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/histogram-resolution.png` | Histogram Resolution | 10-bit (1024) | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| LHE-EV-012 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/histogram-resolution.png` | Histogram Resolution | 12-bit (4096) | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| LHE-EV-013 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/01-full-interface.png` | Main | Kernel Radius | Numeric alan | 64 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| LHE-EV-014 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/01-full-interface.png` | Main | Contrast Limit | Numeric alan | 2.0 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| LHE-EV-015 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/01-full-interface.png` | Main | Amount | Numeric alan | 1.000 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| LHE-EV-016 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/01-full-interface.png` | Main | Histogram Resolution | ComboBox | 8-bit (256) seçili görünüyor | UI-OBSERVED | Yüksek | Evet | Ekran anındaki seçim; default değildir |
| LHE-EV-017 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/01-full-interface.png` | Main | Circular Kernel | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| LHE-EV-018 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin sınıflandırması görsel kanıt değildir |
| LHE-EV-019 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset veya yeni instance kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır | Mevcut değerler default sayılamaz |
| LHE-EV-020 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/01-full-interface.png` | Genel | Tooltip metinleri | Yardım | Tooltip açık değil | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| LHE-EV-021 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/01-full-interface.png` | Genel | Console/log metni | Çıktı | Console görünmüyor | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| LHE-EV-022 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/01-full-interface.png` | Davranış | Yerel kontrast, kernel ve output etkisi | Process davranışı | Process çalıştırılmıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü gerçek veri testi gerekir |
| LHE-EV-023 | `validation/ui/pi-1.9.3/local-histogram-equalization/screenshots/01-full-interface.png` | Algoritma | Parametrelerin ve histogram çözünürlüğünün anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç özeti

| Ölçüt | Sonuç |
|---|---:|
| İncelenen görsel | 3 |
| UI-VERIFIED | 12 |
| UI-PARTIAL | 1 |
| UI-OBSERVED | 5 |
| UI-UNVERIFIED | 3 |
| DATA-REQUIRED | 1 |
| DOC-REQUIRED | 1 |
| Doğrulanan default | 0 |

## Karar

Process adı, menü yolu, beş ana kontrol etiketi ve üç açık `Histogram Resolution` seçeneği canonical dokümana taşınabilir. Görünen sayılar, seçim ve checkbox durumu yalnız ekran anına aittir. Default değerler, algoritmik anlam ve gerçek output davranışı doğrulanmamıştır.
