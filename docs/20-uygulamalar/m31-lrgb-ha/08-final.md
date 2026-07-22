# M31: Final Doğrulama ve Teslim

!!! info "Sayfa Bilgisi"
    **Kategori:** Proje İş Akışı · **Düzey:** Advanced · **Tahmini okuma:** 5 dk
    **Anahtar kelimeler:** `M31 final` · `quality control` · `export` · `core` · `star color`

## Amaç

Final contrast, saturation ve export kararlarını yeni artefakt üretmeden tamamlamak; sonucu tam görüntü ve %100 ölçekte doğrulamak.

## Adım adım karar noktaları

1. Full-frame ölçekte kompozisyon, background neutrality, halo ve global saturation değerlendirin.
2. %100 ölçekte core transition, dust lane, yıldız halkası, chroma noise ve Ha sınırlarını inceleyin.
3. Local contrast yalnız dust/arm yapısı görünür kanıtla yetersizse uygulanır; core ve background maskeyle korunur.
4. Saturation artışı HII bölgelerini veya yıldızları neonlaştırıyorsa color architecture'a dönün; final Curves ile gizlemeyin.
5. Starless branch kullanıldıysa recombination'ı siyah halo, açık renk kontur ve residual açısından kontrol edin.
6. Master teslimi kayıpsız, çalışma color space/bit depth'i kayıtlı; web sürümü ayrı export olmalıdır.

## Final kalite kapısı

| Alan | Geçer | Başarısızlıkta dönüş |
|---|---|---|
| Core | Ton katmanları ve doğal geçiş | Stretch |
| Dust lane | Sürekli, gevrek değil | LRGB / local contrast |
| HII | Yerel, neon değil | Ha mask/blend |
| Stars | Broadband renk, halo yok | Ha exclusion / recombination |
| Background | Nötr, clipped değil | Gradient / black point |
| Export | Profil, boyut ve bit depth kayıtlı | Export ayarı |

## Ne zaman durmalı?

Yeni bir işlem yalnız görüntüyü “daha güçlü” yapıyor, fakat belirlenmiş bir kusuru çözmüyorsa durun. Final dosyasını son işlem görünümüyle değil ölçüt tablosuyla kabul edin.

## Görsel kanıt planı

Final full-frame; core, dust, HII, yıldız ve background %100 crop paneli; histogram ve web/master export karşılaştırması.

## İlgili process ve sorun giderme

[CurvesTransformation](../../13-final/curves-transformation.md) · [Saturation](../../13-final/saturation.md) · [Export](../../13-final/export.md) · [Hata Kütüphanesi](../../14-hata-kutuphanesi/index.md)

## Önceki / Sonraki

[← Ha entegrasyonu](07-ha-entegrasyonu.md) · [NGC 6888 projesi →](../ngc6888-sho/index.md)
