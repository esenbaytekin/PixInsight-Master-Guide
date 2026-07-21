# StarAlignment UI Evidence Matrix

## Kapsam

- Process: `StarAlignment`
- Registry anahtarı: `star-alignment`
- Hedef sürüm: PixInsight 1.9.3
- Görsel dizini: `validation/ui/pi-1.9.3/star-alignment/screenshots/`
- Canonical doküman: `docs/03-kalibrasyon/star-alignment.md`

**UI-VERIFIED** doğrudan okunan etiket, section, menü veya açık liste seçeneğini; **UI-OBSERVED** yalnız ekran anındaki seçim/durumu ifade eder. Görünen seçimler default değildir.

| Kanıt ID | Görsel | Section | Etiket/değer | Kontrol tipi | Görülen durum | Sınıf | Güven | Yeterli mi? | Not |
|---|---|---|---|---|---|---|---|---|---|
| SA-EV-001 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Pencere | StarAlignment | Process başlığı | Net okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-002 | `validation/ui/pi-1.9.3/star-alignment/screenshots/07-process-menu-location.png` | Process menu | ImageRegistration | Menü grubu | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-003 | `validation/ui/pi-1.9.3/star-alignment/screenshots/07-process-menu-location.png` | Process menu | StarAlignment | Menü öğesi | Açık menüde okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-004 | `validation/ui/pi-1.9.3/star-alignment/screenshots/07-process-menu-location.png` | Process menu | Process → ImageRegistration → StarAlignment | Menü yolu | Tam yol görünür | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-005 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Section | Target Images | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-006 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Section | Format Hints | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-007 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Section | Output Images | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-008 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Section | Star Detection | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-009 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Section | Star Matching | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-010 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Section | Interpolation | Section başlığı | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-011 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Reference image | Image reference alanı | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| SA-EV-012 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Distortion model | File alanı | Etiket görünür | UI-VERIFIED | Yüksek | Evet | Davranış kanıtlanmadı |
| SA-EV-013 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Undistorted reference | Checkbox | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-014 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Registration model | ComboBox | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-015 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Rigid linear transformations | Checkbox | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-016 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Radial basis function | ComboBox | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-017 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Spline order | Numeric alan | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-018 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Maximum spline points | Numeric alan | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-019 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Working mode | ComboBox | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-020 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Generate distortion maps | Checkbox | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-021 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Generate masks | Checkbox | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-022 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Generate drizzle data | Checkbox | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-023 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Inherit astrometric solution | Checkbox | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-024 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Frame adaptation | Checkbox | Etiket görünür | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-025 | `validation/ui/pi-1.9.3/star-alignment/screenshots/compute-intersections.png` | Compute intersections | Disabled | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-026 | `validation/ui/pi-1.9.3/star-alignment/screenshots/compute-intersections.png` | Compute intersections | Mosaic modes only | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-027 | `validation/ui/pi-1.9.3/star-alignment/screenshots/compute-intersections.png` | Compute intersections | Always | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-028 | `validation/ui/pi-1.9.3/star-alignment/screenshots/compute-pfs-fits.png` | Compute PSF fits | Never | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-029 | `validation/ui/pi-1.9.3/star-alignment/screenshots/compute-pfs-fits.png` | Compute PSF fits | Distortion correction only | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-030 | `validation/ui/pi-1.9.3/star-alignment/screenshots/compute-pfs-fits.png` | Compute PSF fits | Always | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-031 | `validation/ui/pi-1.9.3/star-alignment/screenshots/descriptor-type.png` | Descriptor type | Triangle similarity | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-032 | `validation/ui/pi-1.9.3/star-alignment/screenshots/descriptor-type.png` | Descriptor type | Triangles | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-033 | `validation/ui/pi-1.9.3/star-alignment/screenshots/descriptor-type.png` | Descriptor type | Quadrilaterals | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-034 | `validation/ui/pi-1.9.3/star-alignment/screenshots/descriptor-type.png` | Descriptor type | Pentagons | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-035 | `validation/ui/pi-1.9.3/star-alignment/screenshots/descriptor-type.png` | Descriptor type | Hexagons | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-036 | `validation/ui/pi-1.9.3/star-alignment/screenshots/descriptor-type.png` | Descriptor type | Heptagons | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-037 | `validation/ui/pi-1.9.3/star-alignment/screenshots/descriptor-type.png` | Descriptor type | Octagons | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-038 | `validation/ui/pi-1.9.3/star-alignment/screenshots/pixel-interpolation.png` | Pixel interpolation | Nearest Neighbor | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-039 | `validation/ui/pi-1.9.3/star-alignment/screenshots/pixel-interpolation.png` | Pixel interpolation | Bilinear | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-040 | `validation/ui/pi-1.9.3/star-alignment/screenshots/pixel-interpolation.png` | Pixel interpolation | Bicubic Spline | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-041 | `validation/ui/pi-1.9.3/star-alignment/screenshots/pixel-interpolation.png` | Pixel interpolation | Bicubic B-Spline | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-042 | `validation/ui/pi-1.9.3/star-alignment/screenshots/pixel-interpolation.png` | Pixel interpolation | Lanczos-3 | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-043 | `validation/ui/pi-1.9.3/star-alignment/screenshots/pixel-interpolation.png` | Pixel interpolation | Lanczos-4 | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-044 | `validation/ui/pi-1.9.3/star-alignment/screenshots/pixel-interpolation.png` | Pixel interpolation | Lanczos-5 | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-045 | `validation/ui/pi-1.9.3/star-alignment/screenshots/pixel-interpolation.png` | Pixel interpolation | Mitchell-Netravali Filter | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-046 | `validation/ui/pi-1.9.3/star-alignment/screenshots/pixel-interpolation.png` | Pixel interpolation | Catmull-Rom Spline Filter | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-047 | `validation/ui/pi-1.9.3/star-alignment/screenshots/pixel-interpolation.png` | Pixel interpolation | Cubic B-Spline Filter | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-048 | `validation/ui/pi-1.9.3/star-alignment/screenshots/pixel-interpolation.png` | Pixel interpolation | Auto | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-049 | `validation/ui/pi-1.9.3/star-alignment/screenshots/registration-model.png` | Registration model | Projective Transformation | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-050 | `validation/ui/pi-1.9.3/star-alignment/screenshots/registration-model.png` | Registration model | Two-Dimensional Surface Splines | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-051 | `validation/ui/pi-1.9.3/star-alignment/screenshots/sample-format.png` | Sample format | Same as target | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-052 | `validation/ui/pi-1.9.3/star-alignment/screenshots/sample-format.png` | Sample format | 8-bit integer | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-053 | `validation/ui/pi-1.9.3/star-alignment/screenshots/sample-format.png` | Sample format | 16-bit integer | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-054 | `validation/ui/pi-1.9.3/star-alignment/screenshots/sample-format.png` | Sample format | 32-bit integer | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-055 | `validation/ui/pi-1.9.3/star-alignment/screenshots/sample-format.png` | Sample format | 32-bit floating point | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-056 | `validation/ui/pi-1.9.3/star-alignment/screenshots/sample-format.png` | Sample format | 64-bit floating point | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-057 | `validation/ui/pi-1.9.3/star-alignment/screenshots/working-mode.png` | Working mode | Register/Match Images | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-058 | `validation/ui/pi-1.9.3/star-alignment/screenshots/working-mode.png` | Working mode | Register/Union - Mosaic | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-059 | `validation/ui/pi-1.9.3/star-alignment/screenshots/working-mode.png` | Working mode | Register/Union - Separate | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-060 | `validation/ui/pi-1.9.3/star-alignment/screenshots/working-mode.png` | Working mode | Structure Detection | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-061 | `validation/ui/pi-1.9.3/star-alignment/screenshots/working-mode.png` | Working mode | Structure Map | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-062 | `validation/ui/pi-1.9.3/star-alignment/screenshots/working-mode.png` | Working mode | Detected Stars | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-063 | `validation/ui/pi-1.9.3/star-alignment/screenshots/working-mode.png` | Working mode | Putative Star Matches | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-064 | `validation/ui/pi-1.9.3/star-alignment/screenshots/working-mode.png` | Working mode | Matched Stars | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet |  |
| SA-EV-065 | `validation/ui/pi-1.9.3/star-alignment/screenshots/working-mode.png` | Working mode | Transformation Matrices | Açık liste seçeneği | Okunuyor | UI-VERIFIED | Yüksek | Evet | Dokuzuncu görünür seçenek |
| SA-EV-066 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Registration model | ComboBox | Projective Transformation seçili | UI-OBSERVED | Yüksek | Evet | Default değildir |
| SA-EV-067 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Working mode | ComboBox | Register/Match Images seçili | UI-OBSERVED | Yüksek | Evet | Default değildir |
| SA-EV-068 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Generate distortion maps | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Default değildir |
| SA-EV-069 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Generate masks | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Default değildir |
| SA-EV-070 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Generate drizzle data | Checkbox | İşaretli | UI-OBSERVED | Yüksek | Evet | Default değildir |
| SA-EV-071 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Inherit astrometric solution | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Default değildir |
| SA-EV-072 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Frame adaptation | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Default değildir |
| SA-EV-073 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Output Images | Sample format | ComboBox | Same as target seçili | UI-OBSERVED | Yüksek | Evet | Default değildir |
| SA-EV-074 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Star Detection | Compute PSF fits | ComboBox | Distortion correction only seçili | UI-OBSERVED | Yüksek | Evet | Default değildir |
| SA-EV-075 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Star Matching | Descriptor type | ComboBox | Pentagons seçili | UI-OBSERVED | Yüksek | Evet | Default değildir |
| SA-EV-076 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Star Matching | Compute intersections | ComboBox | Mosaic modes only seçili | UI-OBSERVED | Yüksek | Evet | Default değildir |
| SA-EV-077 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Interpolation | Pixel interpolation | ComboBox | Auto seçili | UI-OBSERVED | Yüksek | Evet | Default değildir |
| SA-EV-078 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Rigid linear transformations | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Default değildir |
| SA-EV-079 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Main | Undistorted reference | Checkbox | İşaretsiz | UI-OBSERVED | Yüksek | Evet | Default değildir |
| SA-EV-080 | `validation/ui/pi-1.9.3/star-alignment/screenshots/07-process-menu-location.png` | Uygulama | PixInsight 1.9.3 | Sürüm | Ekranda sürüm numarası yok | UI-PARTIAL | Düşük | Kısmen | Dizin adı görsel kanıt değildir |
| SA-EV-081 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Genel | Fabrika varsayılanları | Default | Reset/new instance kanıtı yok | UI-UNVERIFIED | Yüksek | Hayır | Mevcut değerler default sayılamaz |
| SA-EV-082 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Genel | Tooltip metinleri | Yardım | Tooltip açık değil | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| SA-EV-083 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Genel | Console/log metni | Çıktı | Console görünmüyor | UI-UNVERIFIED | Yüksek | Hayır | Kanıt yok |
| SA-EV-084 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Davranış | Registration, distortion, drizzle ve resampling sonucu | Process davranışı | Process çalıştırılmıyor | DATA-REQUIRED | Yüksek | Hayır | Kontrollü gerçek veri testi gerekir |
| SA-EV-085 | `validation/ui/pi-1.9.3/star-alignment/screenshots/01-full-interface.png` | Algoritma | Model, descriptor, matching ve interpolation anlamları | Birincil dokümantasyon | Statik görsel açıklamıyor | DOC-REQUIRED | Yüksek | Hayır | PixInsight 1.9.3 birincil kaynağı gerekir |

## Sonuç özeti

| Ölçüt | Sonuç |
|---|---:|
| İncelenen görsel | 9 |
| UI-VERIFIED | 65 |
| UI-PARTIAL | 1 |
| UI-OBSERVED | 14 |
| UI-UNVERIFIED | 3 |
| DATA-REQUIRED | 1 |
| DOC-REQUIRED | 1 |
| Doğrulanan default | 0 |

## Karar

Process/menu yolu, altı section, ana registration kontrolleri ve altı açık dropdown listesindeki seçenekler canonical dokümana taşınabilir. Ekran anındaki seçim ve checkbox durumları default değildir. Registration algoritması ve gerçek output davranışı doğrulanmamıştır.
