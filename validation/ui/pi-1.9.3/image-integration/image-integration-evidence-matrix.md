# ImageIntegration UI Evidence Matrix

## Kapsam

- Process: `ImageIntegration`
- Registry anahtarı: `image-integration`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/image-integration/screenshots/`
- Canonical doküman: `docs/03-kalibrasyon/image-integration.md`

**UI-VERIFIED** doğrudan okunan etiket, section, menü veya açık liste seçeneğini; **UI-OBSERVED** yalnız ekran anındaki seçim/durumu ifade eder. Görünen seçimler default değildir.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| II-EV-001 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Pencere | ImageIntegration | Process başlığı | Net okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-002 | `validation/ui/pi-1.9.3/image-integration/screenshots/07-process-menu-location.png` | Process menu | ImageIntegration | Menü grubu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-003 | `validation/ui/pi-1.9.3/image-integration/screenshots/07-process-menu-location.png` | Process menu | ImageIntegration | Menü öğesi | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet | Aynı ad grup ve process item olarak görünür |
| II-EV-004 | `validation/ui/pi-1.9.3/image-integration/screenshots/07-process-menu-location.png` | Process menu | Process → ImageIntegration → ImageIntegration | Menü yolu | Tam yol görünür | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-005 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Section | Input Images | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-006 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Section | Format Hints | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-007 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Section | Image Integration | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-008 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Section | Pixel Rejection (1) | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-009 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Section | Pixel Rejection (2) | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-010 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Section | Large-Scale Pixel Rejection | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-011 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Section | Signal and Noise Evaluation | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-012 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Section | Region of Interest | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-013 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Image Integration | Combination | ComboBox | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-014 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Image Integration | Normalization | ComboBox | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-015 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Image Integration | Weights | ComboBox | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-016 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Pixel Rejection (1) | Rejection algorithm | ComboBox | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-017 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Signal and Noise Evaluation | Noise estimator | ComboBox | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-018 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Signal and Noise Evaluation | PSF type | ComboBox | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-019 | `validation/ui/pi-1.9.3/image-integration/screenshots/combination.png` | Combination | Average | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-020 | `validation/ui/pi-1.9.3/image-integration/screenshots/combination.png` | Combination | Median | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-021 | `validation/ui/pi-1.9.3/image-integration/screenshots/combination.png` | Combination | Minimum | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-022 | `validation/ui/pi-1.9.3/image-integration/screenshots/combination.png` | Combination | Maximum | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-023 | `validation/ui/pi-1.9.3/image-integration/screenshots/go-psf-type.png` | PSF type | Gaussian | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-024 | `validation/ui/pi-1.9.3/image-integration/screenshots/go-psf-type.png` | PSF type | Moffat beta = 1.5 | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-025 | `validation/ui/pi-1.9.3/image-integration/screenshots/go-psf-type.png` | PSF type | Moffat beta = 4 | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-026 | `validation/ui/pi-1.9.3/image-integration/screenshots/go-psf-type.png` | PSF type | Moffat beta = 6 | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-027 | `validation/ui/pi-1.9.3/image-integration/screenshots/go-psf-type.png` | PSF type | Moffat beta = 8 | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-028 | `validation/ui/pi-1.9.3/image-integration/screenshots/go-psf-type.png` | PSF type | Moffat beta = 10 | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-029 | `validation/ui/pi-1.9.3/image-integration/screenshots/go-psf-type.png` | PSF type | Auto | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-030 | `validation/ui/pi-1.9.3/image-integration/screenshots/noise-estimator.png` | Noise estimator | Iterative k-sigma clipping | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-031 | `validation/ui/pi-1.9.3/image-integration/screenshots/noise-estimator.png` | Noise estimator | Multiresolution support | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-032 | `validation/ui/pi-1.9.3/image-integration/screenshots/noise-estimator.png` | Noise estimator | N* robust noise estimator | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-033 | `validation/ui/pi-1.9.3/image-integration/screenshots/normalization.png` | Normalization | No normalization | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-034 | `validation/ui/pi-1.9.3/image-integration/screenshots/normalization.png` | Normalization | Additive | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-035 | `validation/ui/pi-1.9.3/image-integration/screenshots/normalization.png` | Normalization | Multiplicative | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-036 | `validation/ui/pi-1.9.3/image-integration/screenshots/normalization.png` | Normalization | Additive with scaling | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-037 | `validation/ui/pi-1.9.3/image-integration/screenshots/normalization.png` | Normalization | Multiplicative with scaling | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-038 | `validation/ui/pi-1.9.3/image-integration/screenshots/normalization.png` | Normalization | Local normalization | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-039 | `validation/ui/pi-1.9.3/image-integration/screenshots/rejection-algorithm.png` | Rejection algorithm | No rejection | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-040 | `validation/ui/pi-1.9.3/image-integration/screenshots/rejection-algorithm.png` | Rejection algorithm | Min/Max | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-041 | `validation/ui/pi-1.9.3/image-integration/screenshots/rejection-algorithm.png` | Rejection algorithm | Percentile Clipping | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-042 | `validation/ui/pi-1.9.3/image-integration/screenshots/rejection-algorithm.png` | Rejection algorithm | Sigma Clipping | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-043 | `validation/ui/pi-1.9.3/image-integration/screenshots/rejection-algorithm.png` | Rejection algorithm | Winsorized Sigma Clipping | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-044 | `validation/ui/pi-1.9.3/image-integration/screenshots/rejection-algorithm.png` | Rejection algorithm | Averaged Sigma Clipping | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-045 | `validation/ui/pi-1.9.3/image-integration/screenshots/rejection-algorithm.png` | Rejection algorithm | Linear Fit Clipping | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-046 | `validation/ui/pi-1.9.3/image-integration/screenshots/rejection-algorithm.png` | Rejection algorithm | Generalized Extreme Studentized Deviate (ESD) | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-047 | `validation/ui/pi-1.9.3/image-integration/screenshots/rejection-algorithm.png` | Rejection algorithm | Robust Chauvenet Rejection (RCR) | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-048 | `validation/ui/pi-1.9.3/image-integration/screenshots/weights.png` | Weights | Don't care (all weights = 1) | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-049 | `validation/ui/pi-1.9.3/image-integration/screenshots/weights.png` | Weights | PSF Signal Weight | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-050 | `validation/ui/pi-1.9.3/image-integration/screenshots/weights.png` | Weights | PSF SNR | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-051 | `validation/ui/pi-1.9.3/image-integration/screenshots/weights.png` | Weights | PSF Scale SNR | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-052 | `validation/ui/pi-1.9.3/image-integration/screenshots/weights.png` | Weights | SNR | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-053 | `validation/ui/pi-1.9.3/image-integration/screenshots/weights.png` | Weights | Exposure time | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-054 | `validation/ui/pi-1.9.3/image-integration/screenshots/weights.png` | Weights | Average value | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-055 | `validation/ui/pi-1.9.3/image-integration/screenshots/weights.png` | Weights | Median value | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-056 | `validation/ui/pi-1.9.3/image-integration/screenshots/weights.png` | Weights | Average signal strength | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-057 | `validation/ui/pi-1.9.3/image-integration/screenshots/weights.png` | Weights | FITS keyword | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-058 | `validation/ui/pi-1.9.3/image-integration/screenshots/weights.png` | Weights | CSV weights file | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| II-EV-059 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Image Integration | Combination | ComboBox | Average seçili | UI-OBSERVED | Yüksek | Evet | Default değildir |
| II-EV-060 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Image Integration | Normalization | ComboBox | Additive with scaling seçili | UI-OBSERVED | Yüksek | Evet | Default değildir |
| II-EV-061 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Image Integration | Weights | ComboBox | PSF Signal Weight seçili | UI-OBSERVED | Yüksek | Evet | Default değildir |
| II-EV-062 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Pixel Rejection (1) | Rejection algorithm | ComboBox | No rejection seçili | UI-OBSERVED | Yüksek | Evet | Default değildir |
| II-EV-063 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Signal and Noise Evaluation | Noise estimator | ComboBox | Multiresolution support seçili | UI-OBSERVED | Yüksek | Evet | Default değildir |
| II-EV-064 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Signal and Noise Evaluation | PSF type | ComboBox | Moffat beta = 4 seçili | UI-OBSERVED | Yüksek | Evet | Default değildir |
| II-EV-065 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Image Integration | Generate integrated image | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Default değildir |
| II-EV-066 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Image Integration | Automatic buffer sizes | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Default değildir |
| II-EV-067 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Image Integration | Use file cache | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Default değildir |
| II-EV-068 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Pixel Rejection (1) | Generate rejection maps | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Default değildir |
| II-EV-069 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Pixel Rejection (1) | Clip low pixels | Checkbox | İşaretli ve pasif görünüyor | UI-OBSERVED | Yüksek | Evet | Default değildir |
| II-EV-070 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Pixel Rejection (1) | Clip high pixels | Checkbox | İşaretli ve pasif görünüyor | UI-OBSERVED | Yüksek | Evet | Default değildir |
| II-EV-071 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Pixel Rejection (1) | Clip low range | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Default değildir |
| II-EV-072 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Pixel Rejection (1) | Map range rejection | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Default değildir |
| II-EV-073 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Signal and Noise Evaluation | Section enable | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Default değildir |
| II-EV-074 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Region of Interest | Section enable | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Default değildir |
| II-EV-075 | `validation/ui/pi-1.9.3/image-integration/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| II-EV-076 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/new instance kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır | Mevcut değerler default sayılamaz |
| II-EV-077 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Genel | Tooltip metinleri | Yardım | Tooltip açık değil | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| II-EV-078 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Genel | Console/log metni | Çıktı | Console görünmüyor | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| II-EV-079 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Davranış | Integration, normalization, weighting ve rejection sonucu | Process davranışı | Process çalıştırılmıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü stack testi gerekir |
| II-EV-080 | `validation/ui/pi-1.9.3/image-integration/screenshots/01-full-interface.png` | Algoritma | Combination, estimator, normalization, weighting ve rejection anlamları | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç özeti

| Ölçüt | Sonuç |
|---|---:|
| İncelenen görsel | 8 |
| UI-VERIFIED | 58 |
| UI-PARTIAL | 1 |
| UI-OBSERVED | 16 |
| UI-UNVERIFIED | 3 |
| DATA-REQUIRED | 1 |
| DOC-REQUIRED | 1 |
| Doğrulanan default | 0 |

## Karar

Process/menu yolu, sekiz section, altı temel selector ve altı açık dropdown listesindeki 40 seçenek canonical dokümana taşınabilir. Ekran anındaki seçim/checkbox durumları default değildir. Integration algoritması ve gerçek output davranışı doğrulanmamıştır.
