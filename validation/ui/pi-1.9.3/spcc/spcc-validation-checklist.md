# SPCC Görsel Doğrulama Kontrol Listesi

## UI kimliği

- [x] Doğrulandı — Process adı: `SpectrophotometricColorCalibration`.
- [x] Doğrulandı — Menü yolu: `Process → ColorCalibration → SpectrophotometricColorCalibration`.
- [ ] Kısmen doğrulandı — Görseller `pi-1.9.3` altında sınıflandırılmış; ekran içinde sürüm numarası yok.
- [x] Doğrulandı — Beş ana section başlığı okunuyor.

## Kontroller

- [x] Doğrulandı — Calibration etiketleri ve kontrol tipleri.
- [x] Doğrulandı — Catalog Search etiketleri ve kontrol tipleri.
- [x] Doğrulandı — Signal Evaluation etiketleri ve kontrol tipleri.
- [x] Doğrulandı — Background Neutralization etiketleri ve kontrol tipleri.
- [x] Doğrulandı — Region of Interest etiketleri ve kontrol tipleri.
- [x] Doğrulandı — Ekran anındaki seçili değerler UI-OBSERVED olarak kaydedildi.
- [x] Doğrulandı — Ekran anındaki checkbox durumları UI-OBSERVED olarak kaydedildi.
- [ ] Bekliyor — Reset/yeni instance ile gerçek default değerler.
- [ ] Bekliyor — Açılmış dropdown listeleri ve tüm seçenekler.
- [ ] Bekliyor — Tooltip metinleri.
- [ ] Bekliyor — Console ve process logları.

## Davranış ve teknik kaynak

- [ ] Bekliyor — Exact linear/nonlinear davranışı; birincil kaynak ve kontrollü test.
- [ ] Bekliyor — Catalog query davranışı; gerçek veri/ağ testi.
- [ ] Bekliyor — Sensor/filter profile etkisi; birincil kaynak ve gerçek veri.
- [ ] Bekliyor — Astrometry fallback; birincil kaynak ve kontrollü test.
- [ ] Bekliyor — Narrowband davranışı ve sonucu; birincil kaynak ve gerçek veri.
- [ ] Bekliyor — Output, graph, star map ve text file davranışı; kontrollü test.

## Kanıt bütünlüğü

- [x] Doğrulandı — Beş görsel dosyası açılıyor.
- [x] Doğrulandı — Matrix içindeki tüm göreli görsel yolları mevcut.
- [x] Doğrulandı — `Gaia DR3/SP` tam biçimi kullanıldı.
- [x] Doğrulandı — `-2.80`, `+2.00`, `0.75`, `40.0` ve `1.25` işaret/ondalıkları yeniden okundu.
- [x] Doğrulandı — Mevcut değerler default olarak sunulmadı.
- [x] Doğrulandı — Görselden process davranışı çıkarılmadı.

