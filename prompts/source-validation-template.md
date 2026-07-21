# Source Validation Template

## Amaç

`{{TOPIC}}` hakkındaki teknik iddiaları birincil kaynaklarla doğrula; sürüme bağlı davranışı genel teoriden ayır.

## Kaynak önceliği

1. PixInsight resmi process documentation ve release notes
2. Process/script geliştiricisinin resmi teknik dokümanı
3. Hakemli makale veya algoritmanın özgün yayını
4. Kontrollü test çıktısı

Forum, video ve ikincil rehberler bağlam sağlayabilir; kritik UI veya algoritma iddiasının tek kaynağı yapılmaz.

## İddia sınıfları

- **A:** Temel, sürümden büyük ölçüde bağımsız kavram
- **B:** PixInsight UI veya process davranışı
- **C:** Kamera, gain, sıcaklık veya exposure tavsiyesi
- **D:** Algoritmik veya matematiksel iddia

## İddia-kaynak matrisi

| İddia ID | İddia | Sınıf | Birincil kaynak | Sürüm/tarih | Destek düzeyi | Doğrudan alıntı sınırı | Son işlem |
|---|---|---|---|---|---|---|---|
| {{ID}} | {{CLAIM}} | {{A_B_C_D}} | {{SOURCE}} | {{VERSION_DATE}} | {{FULL_PARTIAL_NONE}} | {{QUOTE_OR_PARAPHRASE}} | {{KEEP_SOFTEN_REMOVE_TEST}} |

## Kaynak kaydı

- Başlık: {{TITLE}}
- Kurum/yazar: {{AUTHOR}}
- URL/DOI: {{URL}}
- Erişim tarihi: {{DATE}}
- İlgili sürüm: {{VERSION}}
- Desteklenen cümleler: {{CLAIM_IDS}}
- Sınırlar veya çelişkiler: {{LIMITATIONS}}

## Teknik yazım kararı

- Korunan kesin ifade: {{TEXT_OR_NONE}}
- Yumuşatılan ifade: {{TEXT_OR_NONE}}
- Kaldırılan ifade: {{TEXT_OR_NONE}}
- **Doğrulama bekliyor** kalan ifade: {{TEXT_OR_NONE}}
- Gerçek veri testi gereken ifade: {{TEXT_OR_NONE}}

## Kontrol listesi

- [ ] Her kritik B/D iddiası birincil kaynakla eşlendi.
- [ ] Sürüm uyumu açıkça kaydedildi.
- [ ] Kaynak iddiayı gerçekten destekliyor.
- [ ] Alıntı yerine mümkün olduğunda doğru paraphrase kullanıldı.
- [ ] Mutlak kamera/parametre önerileri bağlama alındı veya kaldırıldı.

