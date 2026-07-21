# Sprint Review Template

## Sprint kimliği

- Sprint: {{SPRINT_ID_AND_NAME}}
- Amaç: {{OBJECTIVE}}
- Kapsam dosyaları: {{FILES}}
- İzin verilmeyen değişiklikler: {{OUT_OF_SCOPE}}
- PixInsight tabanı: {{VERSION}}

## Kapsam kontrolü

| Dosya | Beklenen işlem | Gerçek işlem | Kapsam uygun mu? | Not |
|---|---|---|---|---|
| {{PATH}} | {{CREATE_UPDATE_REVIEW}} | {{RESULT}} | {{YES_NO}} | {{NOTE}} |

## İçerik ve yapı

- [ ] STYLE_GUIDE ile uyumlu.
- [ ] Zorunlu başlıklar eksiksiz.
- [ ] Quick Reference ve Decision Tree mevcut.
- [ ] SSS ve troubleshooting gereksinimleri karşılandı.
- [ ] Mermaid blokları statik olarak geçerli.
- [ ] Terminoloji Türkçe açıklama/İngilizce teknik ad standardına uygun.

## Doğrulama durumu

| ID | Dosya | Konu | Kategori | Öncelik | Yayın engeli | Kanıt | Durum |
|---|---|---|---|---|---|---|---|
| {{ID}} | {{FILE}} | {{TOPIC}} | {{UI_DOC_DATA_IMG}} | {{PRIORITY}} | {{BLOCKER}} | {{EVIDENCE}} | {{STATUS}} |

## Riskler ve bulgular

| Bulgu ID | Önem | Dosya/konum | Bulgu | Önerilen işlem | Durum |
|---|---|---|---|---|---|
| {{ID}} | {{CRITICAL_HIGH_MEDIUM_LOW}} | {{LOCATION}} | {{FINDING}} | {{ACTION}} | {{STATUS}} |

## Sayısal özet

- Oluşturulan dosya: {{COUNT}}
- Güncellenen dosya: {{COUNT}}
- Mermaid: {{COUNT}}
- Decision Tree: {{COUNT}}
- Quick Reference: {{COUNT}}
- Test kaydı: {{COUNT}}
- Görsel placeholder/kanıt: {{COUNT}}
- Kritik/kısmi yayın engeli: {{COUNT}} / {{COUNT}}

## Validation

- [ ] `mkdocs build --strict` başarılı.
- [ ] `git diff --check` başarılı.
- [ ] Kırık göreli bağlantı yok.
- [ ] Eksik navigation hedefi yok.
- [ ] Literal `\\n` yok.
- [ ] Kapanmamış fence veya yinelenen başlık yok.
- [ ] Kapsam dışı dosya değişikliği yok.

## Sprint kararı

- Yapısal durum: {{READY_NOT_READY}}
- Teknik yayın durumu: {{READY_PARTIAL_BLOCKED}}
- Kalan zorunlu işler: {{PENDING_ITEMS}}
- Commit/push durumu: {{NOT_DONE_OR_REFERENCE}}

