# BlurXTerminator Validation Checklist

## Preflight

- [x] Registry dosyası mevcut ve YAML yapısı geçerli.
- [x] `blurxterminator` exact ve case-sensitive registry anahtarıyla eşleşti.
- [x] Canonical doküman registry kaydından alındı ve mevcut.
- [x] Supplied screenshot dizini derived dizinle eşleşti.
- [x] Screenshot dizini mevcut; iki görsel bulundu.

## Evidence disiplini

- [x] Yalnız `SCREENSHOT_DIR` içindeki görseller kullanıldı.
- [x] Plugin ve host application sürümleri ayrıldı.
- [x] Okunamayan etiket veya değer tahmin edilmedi.
- [x] Hidden `Select AI` seçenekleri çıkarılmadı.
- [x] Sayılar, aktif/pasif durum ve checkbox'lar default olarak sunulmadı.
- [x] Statik screenshot'lardan behavior iddiası üretilmedi.

## Dokümantasyon

- [x] Güncelleme registry tarafından sağlanan canonical sayfayla sınırlandı.
- [x] Doğrulanmış plugin sürümü, menü yolu, sections ve controls kanıta bağlandı.
- [x] Görünen değerler `UI-OBSERVED` olarak ayrıldı.
- [x] DATA-REQUIRED ve DOC-REQUIRED sınırları görünür bırakıldı.

## Son doğrulama

- [x] Evidence yollarının tümü mevcut.
- [x] Markdown yapısı ve bağlantılar geçerli.
- [x] `mkdocs build --strict` başarılı.
- [x] `git diff --check` başarılı.
- [x] Commit yapılmadı.
- [x] Push yapılmadı.
