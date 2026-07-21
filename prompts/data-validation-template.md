# Data Validation Template

## Test amacı

`{{TEST_ID}}` testi, `{{PROCESS_NAME}}` için `{{CLAIM_OR_BEHAVIOR}}` konusunu kontrollü gerçek veriyle değerlendirecektir. Test başlamadan başarı ölçütleri ve karşılaştırma girdileri sabitlenmelidir.

## Veri kimliği

| Alan | Kayıt |
|---|---|
| Test ID | {{TEST_ID}} |
| Veri seti | {{DATASET_ID}} |
| Target | {{TARGET}} |
| Kamera/sensör | {{CAMERA}} |
| Filter/CFA | {{FILTER_OR_CFA}} |
| Gain/offset/sıcaklık | {{RECORDED_VALUES_OR_UNKNOWN}} |
| Exposure ve frame sayısı | {{EXPOSURE_AND_COUNT}} |
| Image state | {{LINEAR_NONLINEAR_AND_HISTORY}} |
| WCS/metadata | {{STATUS}} |
| PixInsight/process sürümü | {{VERSION}} |
| Veri yolu veya checksum | {{PATH_OR_HASH}} |

## Hipotez ve sınırlar

- Test edilecek iddia: {{CLAIM}}
- Değiştirilen tek değişken: {{INDEPENDENT_VARIABLE}}
- Sabit tutulan koşullar: {{CONTROLLED_VARIABLES}}
- Testin kanıtlayamayacağı konular: {{LIMITATIONS}}

## Test adımları

1. {{PRECONDITION_CHECK}}
2. {{BASELINE_RUN}}
3. {{CONTROLLED_VARIANT}}
4. {{CAPTURE_OUTPUTS}}
5. {{COMPARE_AND_RECORD}}

## Kaydedilecek çıktılar

- [ ] Original ve process output
- [ ] Process instance veya icon
- [ ] Tam console/log
- [ ] İlgili maps veya auxiliary files
- [ ] Histogram/statistics ölçümleri
- [ ] Before/after aynı STF/render koşulu
- [ ] Hata mesajları ve tekrar üretme adımları

## Sonuç tablosu

| Çıktı/ölçüm | Baseline | Variant | Gözlenen fark | Kanıt yolu | Güven |
|---|---|---|---|---|---|
| {{METRIC}} | {{VALUE}} | {{VALUE}} | {{OBSERVATION}} | {{PATH}} | {{CONFIDENCE}} |

## Değerlendirme

- Başarı ölçütü: {{PREDECLARED_CRITERIA}}
- Sonuç: {{SUPPORTED_NOT_SUPPORTED_INCONCLUSIVE}}
- Alternatif açıklamalar: {{CONFOUNDERS}}
- Tekrar gerekli mi?: {{YES_NO_AND_REASON}}
- Dokümana taşınabilecek ifade: {{CAREFUL_CLAIM}}

!!! warning
    Tek bir veri setindeki sonuç evrensel parametre reçetesi veya algoritmik üstünlük olarak genellenmez.

