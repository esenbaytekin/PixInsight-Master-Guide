# BlurXTerminator UI Evidence Matrix

## Kapsam

- Process: `BlurXTerminator`
- Registry anahtarı: `blurxterminator`
- Process türü: plugin
- Hedef PixInsight sürümü: 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/blurxterminator/screenshots/`
- Canonical doküman: `docs/06-ai-eklentileri/blurxterminator.md`

**UI-VERIFIED** doğrudan okunan etiket, section veya menü yolunu; **UI-OBSERVED** yalnız ekran anındaki değer/durumu ifade eder. Plugin sürüm metni PixInsight sürüm kanıtından ayrıdır.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| BXT-EV-001 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Pencere | RC-Astro BlurXTerminator | Process başlığı | Net okunuyor | UI-VERIFIED | Yüksek | Evet | Window title |
| BXT-EV-002 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Version | BlurXTerminator version 2.1.4 | Sürüm metni | Net okunuyor | UI-VERIFIED | Yüksek | Evet | Plugin sürümüdür |
| BXT-EV-003 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Version | AI version 4 | Sürüm metni | Net okunuyor | UI-VERIFIED | Yüksek | Evet | AI sürümüdür |
| BXT-EV-004 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/07-process-menu-location.png` | Process menu | Deconvolution | Menü grubu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| BXT-EV-005 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/07-process-menu-location.png` | Process menu | BlurXTerminator | Menü öğesi | Açık menüde seçili ve okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| BXT-EV-006 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/07-process-menu-location.png` | Process menu | Process → Deconvolution → BlurXTerminator | Menü yolu | Tam yol görünür | UI-VERIFIED | Yüksek | Evet |  |
| BXT-EV-007 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Section | Stellar Adjustments | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| BXT-EV-008 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Section | Nonstellar Adjustments | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| BXT-EV-009 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Section | Options | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| BXT-EV-010 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Main | Select AI | Button | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Hidden seçenekler görünmüyor |
| BXT-EV-011 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Stellar Adjustments | Sharpen Stars | Numeric alan ve slider | Etiket ve kontroller görünür | UI-VERIFIED | Yüksek | Evet | Etki kanıtlanmadı |
| BXT-EV-012 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Stellar Adjustments | Adjust Star Halos | Numeric alan ve slider | Etiket ve kontroller görünür | UI-VERIFIED | Yüksek | Evet | Etki kanıtlanmadı |
| BXT-EV-013 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Nonstellar Adjustments | Automatic PSF | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| BXT-EV-014 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Nonstellar Adjustments | PSF Diameter (pixels) | Numeric alan ve slider | Etiket ve kontroller görünür | UI-VERIFIED | Yüksek | Evet | Etki kanıtlanmadı |
| BXT-EV-015 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Nonstellar Adjustments | Sharpen Nonstellar | Numeric alan ve slider | Etiket ve kontroller görünür | UI-VERIFIED | Yüksek | Evet | Etki kanıtlanmadı |
| BXT-EV-016 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Options | Correct Only | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| BXT-EV-017 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Options | Correct First | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| BXT-EV-018 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Options | Nonstellar then Stellar | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| BXT-EV-019 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Options | Luminance Only | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| BXT-EV-020 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Stellar Adjustments | Sharpen Stars | Numeric alan | 0.50 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| BXT-EV-021 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Stellar Adjustments | Adjust Star Halos | Numeric alan | 0.00 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| BXT-EV-022 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Nonstellar Adjustments | Automatic PSF | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| BXT-EV-023 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Nonstellar Adjustments | PSF Diameter (pixels) | Numeric alan | 0.00; pasif görünüyor | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| BXT-EV-024 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Nonstellar Adjustments | Sharpen Nonstellar | Numeric alan | 0.50 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| BXT-EV-025 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Options | Correct Only | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| BXT-EV-026 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Options | Correct First | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| BXT-EV-027 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Options | Nonstellar then Stellar | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| BXT-EV-028 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Options | Luminance Only | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| BXT-EV-029 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/07-process-menu-location.png` | Host application | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Plugin sürüm metni host sürümünü kanıtlamaz |
| BXT-EV-030 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset veya new instance kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır | Mevcut değerler default sayılamaz |
| BXT-EV-031 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Genel | Tooltip metinleri | Yardım | Tooltip açık değil | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| BXT-EV-032 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Genel | Console/log metni | Çıktı | Console görünmüyor | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| BXT-EV-033 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Davranış | Star/nonstellar correction, PSF ve options sonucu | Plugin davranışı | Plugin çalıştırılmıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü gerçek veri testi gerekir |
| BXT-EV-034 | `validation/ui/pi-1.9.3/blurxterminator/screenshots/01-full-interface.png` | Algoritma | AI seçimi, PSF ve correction option anlamları | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | Plugin 2.1.4 birincil kaynağı gerekir |

## Sonuç özeti

| Ölçüt | Sonuç |
|---|---:|
| İncelenen görsel | 2 |
| UI-VERIFIED | 19 |
| UI-PARTIAL | 1 |
| UI-OBSERVED | 9 |
| UI-UNVERIFIED | 3 |
| DATA-REQUIRED | 1 |
| DOC-REQUIRED | 1 |
| Doğrulanan default | 0 |

## Karar

Plugin başlığı/sürümü, AI sürümü, menü yolu, üç section ve on kontrol etiketi canonical dokümana taşınabilir. Plugin `2.1.4` ve AI `4` doğrudan görünür; PixInsight host sürümü görünmez. Mevcut değer ve checkbox durumları default değildir. Algoritma ve gerçek correction sonucu doğrulanmamıştır.
