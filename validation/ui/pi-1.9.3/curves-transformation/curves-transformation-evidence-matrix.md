# CurvesTransformation UI Evidence Matrix

## Kapsam

- Process: `CurvesTransformation`
- Registry anahtarı: `curves-transformation`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/curves-transformation/screenshots/`
- Canonical doküman: `docs/13-final/curves-transformation.md`

**UI-VERIFIED** doğrudan okunabilen etiketi veya menü yolunu, **UI-OBSERVED** yalnız ekran anındaki görünümü ifade eder. Görünen değerler ve eğri default olarak yorumlanmamıştır.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| CT-EV-001 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Pencere | CurvesTransformation | Process başlığı | Net okunuyor | UI-VERIFIED | Yüksek | Evet | Process adı doğrulandı |
| CT-EV-002 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/07-process-menu-location.png` | Process menu | IntensityTransformations | Menü grubu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CT-EV-003 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/07-process-menu-location.png` | Process menu | CurvesTransformation | Menü öğesi | Açık menüde seçili ve okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| CT-EV-004 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/07-process-menu-location.png` | Process menu | Process → IntensityTransformations → CurvesTransformation | Menü yolu | Tam yol görünür | UI-VERIFIED | Yüksek | Evet |  |
| CT-EV-005 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Kanallar | R | Kanal seçici | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Anlamı görselden çıkarılmadı |
| CT-EV-006 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Kanallar | G | Kanal seçici | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Anlamı görselden çıkarılmadı |
| CT-EV-007 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Kanallar | B | Kanal seçici | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Anlamı görselden çıkarılmadı |
| CT-EV-008 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Kanallar | RGB/K | Kanal seçici | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Anlamı görselden çıkarılmadı |
| CT-EV-009 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Kanallar | A | Kanal seçici | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Anlamı görselden çıkarılmadı |
| CT-EV-010 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Kanallar | L | Kanal seçici | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Anlamı görselden çıkarılmadı |
| CT-EV-011 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Kanallar | a | Kanal seçici | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Anlamı görselden çıkarılmadı |
| CT-EV-012 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Kanallar | b | Kanal seçici | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Anlamı görselden çıkarılmadı |
| CT-EV-013 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Kanallar | c | Kanal seçici | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Anlamı görselden çıkarılmadı |
| CT-EV-014 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Kanallar | H | Kanal seçici | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Anlamı görselden çıkarılmadı |
| CT-EV-015 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Kanallar | S | Kanal seçici | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Anlamı görselden çıkarılmadı |
| CT-EV-016 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Curve point | Input | Numeric alan | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Alan davranışı kanıtlanmadı |
| CT-EV-017 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Curve point | Output | Numeric alan | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Alan davranışı kanıtlanmadı |
| CT-EV-018 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Curve point | Input | Numeric alan | 0.00000; pasif görünüyor | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| CT-EV-019 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Curve point | Output | Numeric alan | 0.00000 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| CT-EV-020 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Curve graph | Eğri | Grafik | Sol alttan sağ üste düz çizgi görünür | UI-OBSERVED | Yüksek | Evet | Matematiksel identity/default iddiası değildir |
| CT-EV-021 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin sınıflandırması görsel kanıt değildir |
| CT-EV-022 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset veya yeni instance kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır | Görünen durum default sayılamaz |
| CT-EV-023 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Genel | Tooltip metinleri ve icon işlevleri | Yardım | Tooltip açık değil | UI-UNVERIFIED | Yüksek | Hayır | İkonlar adlandırılmadı |
| CT-EV-024 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Genel | Console/log metni | Çıktı | Console görünmüyor | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| CT-EV-025 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Davranış | Curve uygulaması, kanal etkisi ve output değişimi | Process davranışı | Process çalıştırılmıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü gerçek veri testi gerekir |
| CT-EV-026 | `validation/ui/pi-1.9.3/curves-transformation/screenshots/01-full-interface.png` | Algoritma | Kanal anlamları, interpolasyon ve curve matematiği | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç özeti

| Ölçüt | Sonuç |
|---|---:|
| İncelenen görsel | 2 |
| UI-VERIFIED | 17 |
| UI-PARTIAL | 1 |
| UI-OBSERVED | 3 |
| UI-UNVERIFIED | 3 |
| DATA-REQUIRED | 1 |
| DOC-REQUIRED | 1 |
| Doğrulanan default | 0 |

## Karar

Process adı, menü yolu, on bir kanal etiketi ve `Input`/`Output` alanları canonical dokümana taşınabilir. Görünen sayılar ve düz çizgi yalnız ekran anının kaydıdır. Default durum, icon işlevleri, curve algoritması ve image output davranışı doğrulanmamıştır.
