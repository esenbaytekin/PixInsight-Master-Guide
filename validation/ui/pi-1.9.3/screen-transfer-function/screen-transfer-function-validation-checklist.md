# ScreenTransferFunction Validation Checklist

## Preflight

- [x] Registry dosyası mevcut ve YAML yapısı geçerli.
- [x] `screen-transfer-function` exact ve case-sensitive registry anahtarıyla eşleşti.
- [x] Canonical doküman registry kaydından alındı ve mevcut.
- [x] Supplied screenshot dizini derived dizinle eşleşti.
- [x] Screenshot dizini mevcut; iki görsel bulundu.

## Evidence disiplini

- [x] Yalnız `SCREENSHOT_DIR` içindeki görseller kullanıldı.
- [x] Okunamayan etiket veya değer tahmin edilmedi.
- [x] Gizli seçenekler çıkarılmadı.
- [x] Görünen durumlar default olarak sunulmadı.
- [x] Statik görsellerden behavior iddiası üretilmedi.
- [x] UI, data ve primary-document gereksinimleri ayrıldı.

## Dokümantasyon

- [x] Güncelleme canonical STF sayfasıyla sınırlandı.
- [x] Doğrulanmış process adı ve menü yolu kanıta bağlandı.
- [x] Varsayılan değer iddiası eklenmedi.
- [x] DATA-REQUIRED ve DOC-REQUIRED sınırları görünür bırakıldı.

## Son doğrulama

- [x] Evidence yollarının tümü mevcut.
- [x] Markdown yapısı ve bağlantılar geçerli.
- [x] `mkdocs build --strict` başarılı.
- [x] `git diff --check` başarılı.
- [x] Commit yapılmadı.
- [x] Push yapılmadı.
