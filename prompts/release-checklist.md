# Release Checklist

## Release kimliği

- Release/Faz: {{RELEASE_ID}}
- Branch/commit: {{REFERENCE}}
- İncelenen kapsam: {{SCOPE}}
- İnceleme tarihi: {{DATE}}
- Sorumlu: {{REVIEWER}}

## Repository ve yapı

- [ ] Working tree kapsamı incelendi; kullanıcıya ait ilgisiz değişiklikler korunuyor.
- [ ] Navigation hedeflerinin tamamı mevcut.
- [ ] Legacy yönlendirmeler ikinci canonical içerik oluşturmuyor.
- [ ] Yeni dosya/klasörler sprint izniyle uyumlu.
- [ ] Dosya ve görsel adları STYLE_GUIDE ile uyumlu.

## Teknik doğrulama

- [ ] Kritik UI kayıtları kapalı veya açık yayın engeli olarak işaretli.
- [ ] Kritik algoritmik iddialar birincil kaynakla eşli.
- [ ] Gerçek veri gerektiren iddialar test kayıtlarına bağlı.
- [ ] Görülen değerler default değerlerden ayrılmış.
- [ ] Kamera/veri seti önerileri evrensel reçete olarak sunulmuyor.
- [ ] PixInsight ve process sürümleri kanıtla kaydedilmiş.

## Dokümantasyon kalitesi

- [ ] Başlık, tablo, admonition ve liste yapısı geçerli.
- [ ] Quick Reference yalnız doğrulanmış bilgiyi özetliyor.
- [ ] Decision Tree gözlenebilir kararlara dayanıyor.
- [ ] SSS ve troubleshooting bağlantıları çalışıyor.
- [ ] Mermaid diyagramları içerikle ilişkili ve geçerli.
- [ ] Görsellerin alt metni, sürümü ve kanıt amacı kayıtlı.

## Otomatik kontroller

| Kontrol | Komut/yöntem | Beklenen | Sonuç |
|---|---|---|---|
| MkDocs | `mkdocs build --strict` | Başarılı | {{RESULT}} |
| Whitespace | `git diff --check` | Hata yok | {{RESULT}} |
| Göreli bağlantılar | {{LINK_CHECKER}} | 0 kırık | {{RESULT}} |
| Navigation | {{NAV_CHECKER}} | 0 eksik | {{RESULT}} |
| Kanıt yolları | {{EVIDENCE_CHECKER}} | 0 eksik | {{RESULT}} |
| Mermaid | {{MERMAID_METHOD}} | Hata yok veya açıkça test edilmedi | {{RESULT}} |

## Yayın engelleri

| ID | Kategori | Konu | Seviye | Sahip | Kapanış kanıtı | Durum |
|---|---|---|---|---|---|---|
| {{ID}} | {{UI_DOC_DATA_IMG}} | {{TOPIC}} | {{CRITICAL_PARTIAL}} | {{OWNER}} | {{EVIDENCE}} | {{STATUS}} |

## Go/No-Go kararı

- Kritik açık engel sayısı: {{COUNT}}
- Kısmi açık engel sayısı: {{COUNT}}
- Karar: {{GO_CONDITIONAL_GO_NO_GO}}
- Karar gerekçesi: {{RATIONALE}}
- Sonraki kontrol tarihi: {{DATE_OR_NONE}}
- Commit/tag/push yetkisi: {{AUTHORIZED_NOT_AUTHORIZED}}

