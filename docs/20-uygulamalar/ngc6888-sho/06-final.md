# NGC 6888: Yıldızlar, Recombination ve Final

!!! info "Sayfa Bilgisi"
    **Kategori:** Proje İş Akışı · **Düzey:** Expert · **Tahmini okuma:** 7 dk
    **Anahtar kelimeler:** `NGC 6888 final` · `starless` · `recombination` · `black halo` · `export`

## Amaç

Nebula ve yıldız katmanlarını uyumlu stretch state'inde yeniden birleştirmek; black halo, OIII kaybı, clipping ve palette dengesini teslimden önce doğrulamak.

## Yıldız dalı

Star separation yalnız nebula ve stars farklı işlem gerektiriyorsa kullanılır. Ayrım fiziksel bileşenlerin kusursuz ölçümü değildir; residual, halo ve lost structure kontrol edilir. Natural-color star kaynağı kullanılacaksa geometry, PSF, color calibration ve stretch uyumu ayrıca kanıtlanır.

## Adım adım karar noktaları

1. Stars, starless ve residual görüntülerini aynı stretch state varsayımıyla kaydedin.
2. Nebula-only işlemlerde star boşluklarını ve OIII sınırlarını büyütmeyin.
3. Star layer'da color, saturation ve halo'yu nebula'dan bağımsız değerlendirin.
4. Recombination formülünün input, output intent, state, range ve clipping riskini kaydedin.
5. Full-frame'de palette/background; %100'de halo, residual, star core ve shell continuity kontrol edin.

## Tanı dalı: Recombination siyah halo üretiyor

Önce starless residual'da koyu kontur var mı bakın. Yoksa stars/starless stretch state ve range uyumunu; varsa separation modelini ve sonradan yapılan halo çevresi işlemlerini inceleyin. Siyah halkayı global black point veya blur ile gizlemeyin.

| Final alan | Geçer | Başarısızlıkta dönüş |
|---|---|---|
| OIII | Shell/cyan yapı korunuyor | Palette / mask / LHE |
| Color | HOO all-red veya SHO kontrolsüz green değil | Mapping / hue branch |
| Stars | Doğal çekirdek, siyah halo yok | Separation / recombination |
| Background | Clipping ve cyan noise yok | Stretch / OIII protection |
| Export | Profil, bit depth, boyut kayıtlı | Export ayarı |

## Ne zaman durmalı?

Yeni işlem tanımlı bir kusuru çözmüyorsa durun. Final kabulü, dramatik palette değil OIII continuity, star integrity, unclipped background ve kayıtlı export ile verilir.

## Görsel kanıt planı

Stars/starless/residual/recombined paneli; black-halo yıldız crop'u; OIII shell ve background crop'u; final full-frame ve histogram.

## İlgili kavramlar ve process sayfaları

[Starless Processing](../../09-narrowband/starless-processing.md) · [StarXTerminator](../../06-ai-eklentileri/starxterminator.md) · [Export](../../13-final/export.md) · [Hata Kütüphanesi](../../14-hata-kutuphanesi/index.md)

## Önceki / Sonraki

[← OIII koruma](05-oiii-koruma.md) · [Uygulamalı Projeler →](../index.md)
