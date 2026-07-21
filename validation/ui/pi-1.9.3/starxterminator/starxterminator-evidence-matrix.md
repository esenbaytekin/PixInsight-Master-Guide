# StarXTerminator UI Evidence Matrix

## Kapsam

- Process: `StarXTerminator`
- Registry anahtarı: `starxterminator`
- Process türü: plugin
- Hedef PixInsight sürümü: 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/starxterminator/screenshots/`
- Canonical doküman: `docs/06-ai-eklentileri/starxterminator.md`

**UI-VERIFIED** doğrudan okunan etiket, pencere başlığı veya menü yolunu; **UI-OBSERVED** yalnız ekran anındaki durumu ifade eder. Plugin sürüm metni PixInsight host sürüm kanıtından ayrıdır.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| SXT-EV-001 | `validation/ui/pi-1.9.3/starxterminator/screenshots/01-full-interface.png` | Pencere | RC-Astro StarXTerminator | Process başlığı | Net okunuyor | UI-VERIFIED | Yüksek | Evet | Window title |
| SXT-EV-002 | `validation/ui/pi-1.9.3/starxterminator/screenshots/01-full-interface.png` | Version | StarXTerminator version 2.4.11 | Sürüm metni | Net okunuyor | UI-VERIFIED | Yüksek | Evet | Plugin sürümüdür |
| SXT-EV-003 | `validation/ui/pi-1.9.3/starxterminator/screenshots/01-full-interface.png` | Version | AI version 11 | Sürüm metni | Net okunuyor | UI-VERIFIED | Yüksek | Evet | AI sürümüdür |
| SXT-EV-004 | `validation/ui/pi-1.9.3/starxterminator/screenshots/07-process-menu-location.png` | Process menu | ObjectRecognition | Menü grubu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SXT-EV-005 | `validation/ui/pi-1.9.3/starxterminator/screenshots/07-process-menu-location.png` | Process menu | StarXTerminator | Menü öğesi | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SXT-EV-006 | `validation/ui/pi-1.9.3/starxterminator/screenshots/07-process-menu-location.png` | Process menu | Process → ObjectRecognition → StarXTerminator | Menü yolu | Tam yol görünür | UI-VERIFIED | Yüksek | Evet |  |
| SXT-EV-007 | `validation/ui/pi-1.9.3/starxterminator/screenshots/01-full-interface.png` | Main | Select AI | Button | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Hidden seçenekler görünmüyor |
| SXT-EV-008 | `validation/ui/pi-1.9.3/starxterminator/screenshots/01-full-interface.png` | Main | Generate Star Image | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| SXT-EV-009 | `validation/ui/pi-1.9.3/starxterminator/screenshots/01-full-interface.png` | Main | Unscreen Stars | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| SXT-EV-010 | `validation/ui/pi-1.9.3/starxterminator/screenshots/01-full-interface.png` | Main | Large Overlap | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| SXT-EV-011 | `validation/ui/pi-1.9.3/starxterminator/screenshots/01-full-interface.png` | Main | Process Batch | Button | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Button davranışı kanıtlanmadı |
| SXT-EV-012 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Batch window | StarXTerminator Batch Processing | Pencere başlığı | Net okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SXT-EV-013 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Batch output | Output starless files to | Path alanı | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Output davranışı kanıtlanmadı |
| SXT-EV-014 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Batch output | Output star files to | Path alanı | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Output davranışı kanıtlanmadı |
| SXT-EV-015 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Batch mask | Invert | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| SXT-EV-016 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Batch mask | Mask | View seçici | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Input davranışı kanıtlanmadı |
| SXT-EV-017 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Batch mask | <No View Available> | View seçici değeri | Okunuyor | UI-VERIFIED | Yüksek | Evet | Açık seçim listesi değildir |
| SXT-EV-018 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Batch options | Unscreen Stars | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| SXT-EV-019 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Batch options | Add Suffixes | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| SXT-EV-020 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Batch action | Select Input Files and Execute | Button | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Execution behavior kanıtlanmadı |
| SXT-EV-021 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Batch action | Cancel | Button | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| SXT-EV-022 | `validation/ui/pi-1.9.3/starxterminator/screenshots/01-full-interface.png` | Main | Generate Star Image | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| SXT-EV-023 | `validation/ui/pi-1.9.3/starxterminator/screenshots/01-full-interface.png` | Main | Unscreen Stars | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| SXT-EV-024 | `validation/ui/pi-1.9.3/starxterminator/screenshots/01-full-interface.png` | Main | Large Overlap | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| SXT-EV-025 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Batch output | Output starless files to | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| SXT-EV-026 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Batch output | Output star files to | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| SXT-EV-027 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Batch mask | Invert | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| SXT-EV-028 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Batch mask | Mask | View seçici | <No View Available> görünüyor | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| SXT-EV-029 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Batch options | Unscreen Stars | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| SXT-EV-030 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Batch options | Add Suffixes | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| SXT-EV-031 | `validation/ui/pi-1.9.3/starxterminator/screenshots/07-process-menu-location.png` | Host application | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Plugin sürüm metni host sürümünü kanıtlamaz |
| SXT-EV-032 | `validation/ui/pi-1.9.3/starxterminator/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset veya new instance kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır | Mevcut durumlar default sayılamaz |
| SXT-EV-033 | `validation/ui/pi-1.9.3/starxterminator/screenshots/01-full-interface.png` | Genel | Tooltip metinleri | Yardım | Tooltip açık değil | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| SXT-EV-034 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Genel | Console/log metni | Çıktı | Console görünmüyor | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| SXT-EV-035 | `validation/ui/pi-1.9.3/starxterminator/screenshots/process-batch.png` | Davranış | Star removal, star image, unscreen ve batch output | Plugin davranışı | Plugin çalıştırılmıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü gerçek veri ve batch testi gerekir |
| SXT-EV-036 | `validation/ui/pi-1.9.3/starxterminator/screenshots/01-full-interface.png` | Algoritma | AI seçimi, overlap, unscreen ve mask anlamları | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | Plugin 2.4.11 birincil kaynağı gerekir |

## Sonuç özeti

| Ölçüt | Sonuç |
|---|---:|
| İncelenen görsel | 3 |
| UI-VERIFIED | 21 |
| UI-PARTIAL | 1 |
| UI-OBSERVED | 9 |
| UI-UNVERIFIED | 3 |
| DATA-REQUIRED | 1 |
| DOC-REQUIRED | 1 |
| Doğrulanan default | 0 |

## Karar

Plugin başlığı/sürümü, AI sürümü, menü yolu, ana kontroller ve batch pencere etiketleri canonical dokümana taşınabilir. Plugin `2.4.11` ve AI `11` doğrudan görünür; PixInsight host sürümü görünmez. Checkbox durumları default değildir. Star-removal ve batch davranışı doğrulanmamıştır.
