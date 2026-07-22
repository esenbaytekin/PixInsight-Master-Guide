# M31: LRGB Birleştirme Kararı

!!! info "Sayfa Bilgisi"
    **Kategori:** Proje İş Akışı · **Düzey:** Advanced · **Tahmini okuma:** 7 dk
    **Anahtar kelimeler:** `M31 LRGB` · `luminance` · `color protection` · `LRGBCombination`

## Amaç

Luminance yapısını RGB rengi yıkamadan taşımak; erken/geç ve lineer/nonlineer kombinasyon seçeneklerini veri durumuna göre seçmek.

## Gerekli giriş durumu

L ve RGB common geometry'de, gradient düzeltmeleri tamamlanmış ve tonal aralıkları karşılaştırılabilir olmalıdır. Luminance “daha keskin olduğu için” otomatik üstün kabul edilmez.

## Karar matrisi

| Seçenek | Ne zaman değerlendirilir? | Risk | Kanıt |
|---|---|---|---|
| Erken / lineer birleşim | Kanallar lineer ve güçlü biçimde uyumlu | Sonraki renk kararlarını L etkiler | Clone karşılaştırması |
| Geç / nonlinear birleşim | RGB rengi ve L yapısı ayrı kontrol edilmek isteniyor | Tonal uyumsuzluk | Histogram ve star color |
| Güçlü L etkisi | L gerçekten daha yüksek SNR ve güvenilir yapı taşıyor | Color washout, sert core | RGB/L öncesi-sonrası |
| Sınırlı L etkisi | RGB chroma kırılgan veya L seeing'i farklı | Yapısal kazanç az olabilir | %100 star/dust crop |

## Adım adım karar noktaları

1. RGB-only baseline'ı kaydedin; LRGB sonucunu ona karşı kıyaslayın.
2. L ve RGB stretch state'lerini eşleştirmeden kombinasyon yapmayın.
3. Core, dust lane, küçük yıldız ve galaksi halo'sundan sabit crop seti seçin.
4. L etkisini, yalnız keskinlik değil color saturation ve noise transferiyle birlikte değerlendirin.
5. Renk yıkanıyorsa saturation'ı sonradan zorlamak yerine luminance influence ve zamanlamayı düzeltin.

## Beklenen ara sonuç ve durma ölçütü

LRGB, RGB baseline'ın yıldız rengini ve arka plan nötrlüğünü korurken dust lane yapısını daha okunur kılmalıdır. Core sertleşiyor, renk griye dönüyor veya L noise'u taşınıyorsa son güvenilir RGB checkpoint'ine dönün.

## Görsel kanıt planı

RGB-only/LRGB tam görüntü çifti; core, dust lane, yıldız ve background %100 crop matrisi; histogram karşılaştırması.

## İlgili process ve workflow sayfaları

[LRGB Galaksi](../../15-workflows/lrgb-galaxy.md) · [LRGBCombination](../../08-lrgb/lrgb-combination.md) · [Luminance Hazırlama](../../08-lrgb/luminance-hazirlama.md)

## Önceki / Sonraki

[← Stretch](05-stretch.md) · [Ha entegrasyonu →](07-ha-entegrasyonu.md)
