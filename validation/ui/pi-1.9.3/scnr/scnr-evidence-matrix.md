# SCNR UI Evidence Matrix

## Kapsam

- Process: `SCNR`
- Registry anahtarı: `scnr`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/scnr/screenshots/`
- Canonical doküman: `docs/13-final/scnr.md`

**UI-VERIFIED** doğrudan okunan etiket, menü veya açık liste seçeneğini; **UI-OBSERVED** yalnız ekran anındaki değer veya durumu ifade eder. Görünen seçimler default değildir.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| SCNR-EV-001 | `validation/ui/pi-1.9.3/scnr/screenshots/01-full-interface.png` | Pencere | SCNR | Process başlığı | Net okunuyor | UI-VERIFIED | Yüksek | Evet | Process adı doğrulandı |
| SCNR-EV-002 | `validation/ui/pi-1.9.3/scnr/screenshots/07-process-menu-location.png` | Process menu | NoiseReduction | Menü grubu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SCNR-EV-003 | `validation/ui/pi-1.9.3/scnr/screenshots/07-process-menu-location.png` | Process menu | SCNR | Menü öğesi | Açık menüde seçili ve okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SCNR-EV-004 | `validation/ui/pi-1.9.3/scnr/screenshots/07-process-menu-location.png` | Process menu | Process → NoiseReduction → SCNR | Menü yolu | Tam yol görünür | UI-VERIFIED | Yüksek | Evet |  |
| SCNR-EV-005 | `validation/ui/pi-1.9.3/scnr/screenshots/01-full-interface.png` | Main | Color to remove | ComboBox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| SCNR-EV-006 | `validation/ui/pi-1.9.3/scnr/screenshots/01-full-interface.png` | Main | Protection method | ComboBox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| SCNR-EV-007 | `validation/ui/pi-1.9.3/scnr/screenshots/01-full-interface.png` | Main | Amount | Numeric alan ve slider | Etiket ve kontroller görünür | UI-VERIFIED | Yüksek | Evet | Parametre etkisi kanıtlanmadı |
| SCNR-EV-008 | `validation/ui/pi-1.9.3/scnr/screenshots/01-full-interface.png` | Main | Preserve lightness | Checkbox | Etiket ve kontrol görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| SCNR-EV-009 | `validation/ui/pi-1.9.3/scnr/screenshots/color-to-remove-png.png` | Color to remove | Red | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SCNR-EV-010 | `validation/ui/pi-1.9.3/scnr/screenshots/color-to-remove-png.png` | Color to remove | Green | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SCNR-EV-011 | `validation/ui/pi-1.9.3/scnr/screenshots/color-to-remove-png.png` | Color to remove | Blue | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SCNR-EV-012 | `validation/ui/pi-1.9.3/scnr/screenshots/protection-method.png` | Protection method | Maximum Mask | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SCNR-EV-013 | `validation/ui/pi-1.9.3/scnr/screenshots/protection-method.png` | Protection method | Additive Mask | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SCNR-EV-014 | `validation/ui/pi-1.9.3/scnr/screenshots/protection-method.png` | Protection method | Average Neutral | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SCNR-EV-015 | `validation/ui/pi-1.9.3/scnr/screenshots/protection-method.png` | Protection method | Maximum Neutral | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SCNR-EV-016 | `validation/ui/pi-1.9.3/scnr/screenshots/protection-method.png` | Protection method | Minimum Neutral | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SCNR-EV-017 | `validation/ui/pi-1.9.3/scnr/screenshots/01-full-interface.png` | Main | Color to remove | ComboBox | Green seçili görünüyor | UI-OBSERVED | Yüksek | Evet | Ekran anındaki seçim; default değildir |
| SCNR-EV-018 | `validation/ui/pi-1.9.3/scnr/screenshots/01-full-interface.png` | Main | Protection method | ComboBox | Average Neutral seçili görünüyor | UI-OBSERVED | Yüksek | Evet | Ekran anındaki seçim; default değildir |
| SCNR-EV-019 | `validation/ui/pi-1.9.3/scnr/screenshots/01-full-interface.png` | Main | Amount | Numeric alan | 1.00 | UI-OBSERVED | Yüksek | Evet | Ekran anındaki değer; default değildir |
| SCNR-EV-020 | `validation/ui/pi-1.9.3/scnr/screenshots/01-full-interface.png` | Main | Preserve lightness | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Ekran anındaki durum; default değildir |
| SCNR-EV-021 | `validation/ui/pi-1.9.3/scnr/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin sınıflandırması görsel kanıt değildir |
| SCNR-EV-022 | `validation/ui/pi-1.9.3/scnr/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset veya yeni instance kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır | Mevcut değerler default sayılamaz |
| SCNR-EV-023 | `validation/ui/pi-1.9.3/scnr/screenshots/01-full-interface.png` | Genel | Tooltip metinleri | Yardım | Tooltip açık değil | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| SCNR-EV-024 | `validation/ui/pi-1.9.3/scnr/screenshots/01-full-interface.png` | Genel | Console/log metni | Çıktı | Console görünmüyor | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| SCNR-EV-025 | `validation/ui/pi-1.9.3/scnr/screenshots/01-full-interface.png` | Davranış | Renk giderme, protection ve lightness sonucu | Process davranışı | Process çalıştırılmıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü gerçek veri testi gerekir |
| SCNR-EV-026 | `validation/ui/pi-1.9.3/scnr/screenshots/01-full-interface.png` | Algoritma | Protection method ve Amount anlamı | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç özeti

| Ölçüt | Sonuç |
|---|---:|
| İncelenen görsel | 4 |
| UI-VERIFIED | 16 |
| UI-PARTIAL | 1 |
| UI-OBSERVED | 4 |
| UI-UNVERIFIED | 3 |
| DATA-REQUIRED | 1 |
| DOC-REQUIRED | 1 |
| Doğrulanan default | 0 |

## Karar

Process adı, menü yolu, dört ana kontrol etiketi ve açık listelerde görünen sekiz seçenek canonical dokümana taşınabilir. Seçili değerler ve checkbox durumu yalnız ekran anına aittir. Default değerler, algoritmik anlam ve gerçek output davranışı doğrulanmamıştır.
