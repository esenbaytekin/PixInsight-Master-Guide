# NoiseXTerminator UI Evidence Matrix

## Kapsam

- Process: `NoiseXTerminator`
- Registry anahtarı: `noisexterminator`
- Process türü: plugin
- Hedef PixInsight sürümü: 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/noisexterminator/screenshots/`
- Canonical doküman: `docs/06-ai-eklentileri/noisexterminator.md`

**UI-VERIFIED** doğrudan okunan etiketi veya menü yolunu; **UI-OBSERVED** yalnız ekran anındaki değer/durumu ifade eder. Plugin sürüm metni PixInsight sürüm kanıtından ayrıdır.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| NXT-EV-001 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Pencere | RC Astro NoiseXTerminator | Process başlığı | Net okunuyor | UI-VERIFIED | Yüksek | Evet | Window title |
| NXT-EV-002 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Version | NoiseXTerminator version 2.3.3 | Sürüm metni | Net okunuyor | UI-VERIFIED | Yüksek | Evet | Plugin sürümüdür |
| NXT-EV-003 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Version | AI version 3 | Sürüm metni | Net okunuyor | UI-VERIFIED | Yüksek | Evet | AI sürümüdür |
| NXT-EV-004 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/07-process-menu-location.png` | Process menu | NoiseReduction | Menü grubu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| NXT-EV-005 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/07-process-menu-location.png` | Process menu | NoiseXTerminator | Menü öğesi | Açık menüde seçili ve okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| NXT-EV-006 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/07-process-menu-location.png` | Process menu | Process → NoiseReduction → NoiseXTerminator | Menü yolu | Tam yol görünür | UI-VERIFIED | Yüksek | Evet |  |
| NXT-EV-007 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | Select AI | Button | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Button davranışı kanıtlanmadı |
| NXT-EV-008 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | Intensity/color separation | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| NXT-EV-009 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | Frequency separation | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| NXT-EV-010 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | Denoise HF Intensity | Numeric alan ve slider | Etiket ve kontroller görünür | UI-VERIFIED | Yüksek | Evet | Etki kanıtlanmadı |
| NXT-EV-011 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | Denoise HF Color | Numeric alan ve slider | Etiket ve kontroller görünür | UI-VERIFIED | Yüksek | Evet | Etki kanıtlanmadı |
| NXT-EV-012 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | Denoise LF Intensity | Numeric alan ve slider | Etiket ve kontroller görünür | UI-VERIFIED | Yüksek | Evet | Etki kanıtlanmadı |
| NXT-EV-013 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | Denoise LF Color | Numeric alan ve slider | Etiket ve kontroller görünür | UI-VERIFIED | Yüksek | Evet | Etki kanıtlanmadı |
| NXT-EV-014 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | HF/LF Scale (pixels) | Numeric alan ve slider | Etiket ve kontroller görünür | UI-VERIFIED | Yüksek | Evet | Etki kanıtlanmadı |
| NXT-EV-015 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | Iterations | Numeric alan ve slider | Etiket ve kontroller görünür | UI-VERIFIED | Yüksek | Evet | Etki kanıtlanmadı |
| NXT-EV-016 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | Intensity/color separation | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| NXT-EV-017 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | Frequency separation | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| NXT-EV-018 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | Denoise HF Intensity | Numeric alan | 0.75 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| NXT-EV-019 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | Denoise HF Color | Numeric alan | 0.60 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| NXT-EV-020 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | Denoise LF Intensity | Numeric alan | 0.35 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| NXT-EV-021 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | Denoise LF Color | Numeric alan | 0.30 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| NXT-EV-022 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | HF/LF Scale (pixels) | Numeric alan | 5.0 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| NXT-EV-023 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Main | Iterations | Numeric alan | 2 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| NXT-EV-024 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/07-process-menu-location.png` | Host application | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Plugin sürüm metni host sürümünü kanıtlamaz |
| NXT-EV-025 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset veya new instance kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır | Mevcut değerler default sayılamaz |
| NXT-EV-026 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Genel | Tooltip metinleri | Yardım | Tooltip açık değil | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| NXT-EV-027 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Genel | Console/log metni | Çıktı | Console görünmüyor | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| NXT-EV-028 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Davranış | Denoise sonucu, separation ve iteration etkisi | Plugin davranışı | Plugin çalıştırılmıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü gerçek veri testi gerekir |
| NXT-EV-029 | `validation/ui/pi-1.9.3/noisexterminator/screenshots/01-full-interface.png` | Algoritma | HF/LF ayrımı, AI seçimi ve parametre anlamları | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | İlgili plugin sürümü için birincil kaynak gerekir |

## Sonuç özeti

| Ölçüt | Sonuç |
|---|---:|
| İncelenen görsel | 2 |
| UI-VERIFIED | 15 |
| UI-PARTIAL | 1 |
| UI-OBSERVED | 8 |
| UI-UNVERIFIED | 3 |
| DATA-REQUIRED | 1 |
| DOC-REQUIRED | 1 |
| Doğrulanan default | 0 |

## Karar

Plugin başlığı/sürüm metni, menü yolu ve dokuz kontrol etiketi canonical dokümana taşınabilir. Plugin sürümü `2.3.3` ve AI sürümü `3` doğrudan görünür; PixInsight host sürümü görünmez. Seçili değerler default değildir. Algoritma ve gerçek denoise sonucu doğrulanmamıştır.
