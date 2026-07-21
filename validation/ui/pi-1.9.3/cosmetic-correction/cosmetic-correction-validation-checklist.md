# CosmeticCorrection Validation Checklist

## Preflight

- [x] Registry YAML yapısı ve exact slug eşleşmesi doğrulandı.
- [x] Canonical doküman mevcut ve `docs/` altında.
- [x] Supplied screenshot dizini derived path ile eşleşti.
- [x] 2 screenshot incelendi.

## Evidence disiplini

- [x] Yalnız supplied screenshot dizini kullanıldı.
- [x] Evidence yolları mevcut.
- [x] Görünen seçimler default sayılmadı.
- [x] Hidden dropdown, tooltip ve davranış tahmin edilmedi.
- [x] UI, DATA ve DOC gereksinimleri ayrıldı.

## Son doğrulama

- [x] Canonical UI notu evidence matrix’e bağlandı.
- [x] `mkdocs build --strict` GitHub Actions ve production Docker build içinde başarılı.
- [x] `git diff --check` başarılı.
- [x] Commit ve push yapılmadı.
