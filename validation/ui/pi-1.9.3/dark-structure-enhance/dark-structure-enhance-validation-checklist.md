# DarkStructureEnhance Validation Checklist

## Preflight

- [x] Registry YAML yapısı ve exact slug eşleşmesi doğrulandı.
- [x] Canonical doküman mevcut ve `docs/` altında.
- [x] Supplied screenshot dizini derived path ile eşleşti.
- [x] 3 screenshot incelendi.

## Evidence disiplini

- [x] Yalnız supplied screenshot dizini kullanıldı.
- [x] Evidence yolları mevcut.
- [x] Görünen seçimler default sayılmadı.
- [x] Hidden dropdown, tooltip ve davranış tahmin edilmedi.
- [x] UI, DATA ve DOC gereksinimleri ayrıldı.

## Son doğrulama

- [x] Canonical UI notu evidence matrix’e bağlandı.
- [ ] `mkdocs build --strict` final toplu kontrolde çalıştırılacak.
- [ ] `git diff --check` final toplu kontrolde çalıştırılacak.
- [x] Commit ve push yapılmadı.
