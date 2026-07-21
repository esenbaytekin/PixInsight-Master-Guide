# StarAlignment Validation Checklist

## Preflight

- [x] Registry ve YAML yapısı geçerli.
- [x] `star-alignment` exact registry anahtarıyla eşleşti.
- [x] Canonical doküman mevcut ve `docs/` altında.
- [x] Supplied screenshot dizini derived path ile eşleşti.
- [x] Dokuz screenshot bulundu.

## Evidence disiplini

- [x] Yalnız supplied `SCREENSHOT_DIR` kullanıldı.
- [x] Yalnız açık dropdown seçenekleri kaydedildi.
- [x] Mevcut seçimler/defaultlar ayrıldı.
- [x] Hidden seçenek veya tooltip tahmin edilmedi.
- [x] Static screenshot'tan behavior çıkarılmadı.
- [x] UI, DATA ve DOC gereksinimleri ayrıldı.

## Dokümantasyon

- [x] Güncelleme canonical sayfayla sınırlandı.
- [x] Menü, sections, controls ve açık options kanıta bağlandı.
- [x] UI-OBSERVED seçimler default sayılmadı.
- [x] DATA-REQUIRED ve DOC-REQUIRED kayıtları bırakıldı.

## Son doğrulama

- [x] Evidence yollarının tümü mevcut.
- [x] Markdown yapısı ve bağlantılar geçerli.
- [x] `mkdocs build --strict` başarılı.
- [x] `git diff --check` başarılı.
- [x] Commit yapılmadı.
- [x] Push yapılmadı.
