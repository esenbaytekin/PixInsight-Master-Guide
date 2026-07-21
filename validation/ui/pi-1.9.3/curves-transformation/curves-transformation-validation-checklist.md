# CurvesTransformation Validation Checklist

## Preflight

- [x] Registry dosyası mevcut ve YAML yapısı geçerli.
- [x] `curves-transformation` exact ve case-sensitive registry anahtarıyla eşleşti.
- [x] Canonical doküman registry kaydından alındı ve mevcut.
- [x] Supplied screenshot dizini derived dizinle eşleşti.
- [x] Screenshot dizini mevcut; iki görsel bulundu.

## Evidence disiplini

- [x] Yalnız `SCREENSHOT_DIR` içindeki görseller kullanıldı.
- [x] Okunamayan etiket veya değer tahmin edilmedi.
- [x] Gizli seçenekler çıkarılmadı.
- [x] Görünen sayı ve eğri default olarak sunulmadı.
- [x] Statik screenshot'lardan behavior iddiası üretilmedi.
- [x] UI, data ve primary-document gereksinimleri ayrıldı.

## Dokümantasyon

- [x] Güncelleme registry tarafından sağlanan canonical sayfayla sınırlandı.
- [x] Doğrulanmış process adı, menü yolu ve UI etiketleri kanıta bağlandı.
- [x] Görünen değer ve eğri `UI-OBSERVED` olarak ayrıldı.
- [x] DATA-REQUIRED ve DOC-REQUIRED sınırları görünür bırakıldı.

## Son doğrulama

- [x] Evidence yollarının tümü mevcut.
- [x] Markdown yapısı ve bağlantılar geçerli.
- [x] `mkdocs build --strict` başarılı.
- [x] `git diff --check` başarılı.
- [x] Commit yapılmadı.
- [x] Push yapılmadı.
