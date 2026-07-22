# Phase 7.5 Applied Workflows Audit

## Kapsam ve karar

Denetim 17 kalan draft URL'yi kapsar. Mevcut `docs/15-workflows/` sayfaları generic karar mimarisinin canonical sahibidir. `docs/20-uygulamalar/` sayfaları korunmuş ve iki project-specific vaka zinciri olarak daraltılmıştır. Sayfa birleştirme, yönlendirme veya URL değişikliği yapılmamıştır.

## Sayfa denetimi

| Sayfa | Workflow type | Input data | Önceki completeness | Canonical role | Overlap risk | Action | URL impact | Priority |
|---|---|---|---|---|---|---|---|---|
| `20-uygulamalar/index.md` | Hub | LRGB+Ha, narrowband | Outline | Project chooser ve dataset planları | Orta | Tamamlandı | Yok | P0 |
| `m31-lrgb-ha/index.md` | Galaxy/HaRGB project | LRGB+Ha | Outline | M31 karar zinciri | Yüksek | Generic teoriden ayrıştırıldı | Yok | P0 |
| `m31-lrgb-ha/01-veri-ve-hedef.md` | Dataset gate | LRGB+Ha metadata | Outline | Dataset facts ve processing goal | Düşük | Tamamlandı | Yok | P0 |
| `m31-lrgb-ha/02-wbpp.md` | Calibration gate | Lights + calibration data | Outline | Master kabul kapısı | Orta | Process reçetesi daraltıldı | Yok | P0 |
| `m31-lrgb-ha/03-dbe-spcc.md` | Background/color gate | Lineer LRGB | Outline | Halo koruma ve color readiness | Yüksek | Canonical processlere bağlandı | Yok | P0 |
| `m31-lrgb-ha/04-blurx-noisex.md` | Linear restoration gate | Lineer masters | Outline | Kanıtlı optional plugin kararı | Orta | Parametre tekrarı kaldırıldı | Yok | P1 |
| `m31-lrgb-ha/05-stretch.md` | Nonlinear gate | RGB ve L | Outline | Core/dust stretch kararı | Orta | Tamamlandı | Yok | P0 |
| `m31-lrgb-ha/06-lrgb.md` | LRGB gate | L + RGB | Outline | Erken/geç ve etki kararı | Yüksek | Generic teoriden ayrıştırıldı | Yok | P0 |
| `m31-lrgb-ha/07-ha-entegrasyonu.md` | HaRGB gate | LRGB + Ha | Outline | Yerel Ha ve star koruma | Yüksek | Formül sahibine bağlandı | Yok | P0 |
| `m31-lrgb-ha/08-final.md` | Final/export gate | Nonlinear composite | Outline | Tam görüntü/%100 kabul | Orta | Tamamlandı | Yok | P0 |
| `ngc6888-sho/index.md` | Weak-OIII project | Ha/OIII, optional SII | Outline | HOO/SHO proje zinciri | Yüksek | Generic teoriden ayrıştırıldı | Yok | P0 |
| `ngc6888-sho/01-veri-ve-hedef.md` | Dataset gate | Narrowband metadata | Outline | Dataset facts ve kanal kanıtı | Düşük | Tamamlandı | Yok | P0 |
| `ngc6888-sho/02-kanal-hazirlama.md` | Channel gate | Lineer channel masters | Outline | Normalization/LinearFit kararı | Yüksek | Canonical conceptlere bağlandı | Yok | P0 |
| `ngc6888-sho/03-sho-kombinasyonu.md` | Palette gate | Ha/OIII/SII | Outline | Project palette seçimi | Yüksek | Formula tekrarı kaldırıldı | Yok | P0 |
| `ngc6888-sho/04-maskeler.md` | Mask gate | Palette + source channels | Outline | Polarity ve seçim kanıtı | Orta | Generic mask teorisinden ayrıldı | Yok | P0 |
| `ngc6888-sho/05-oiii-koruma.md` | Detail gate | Weak-OIII composite | Outline | LHE/OIII koruma kararı | Yüksek | Troubleshooting dalı eklendi | Yok | P0 |
| `ngc6888-sho/06-final.md` | Star/final gate | Stars + starless/composite | Outline | Recombination ve teslim | Orta | Tamamlandı | Yok | P0 |

## Canonical roller ve merge kararı

- Generic LRGB: `docs/15-workflows/lrgb-galaxy.md`.
- Generic HaRGB galaxy: `docs/15-workflows/lrgb-ha-galaxy.md`.
- Generic HOO/SHO: `docs/15-workflows/sho-hoo.md`.
- Alternative palette uygulama mimarisi: `docs/09-narrowband/foraxx.md`; ayrı draft workflow yoktur.
- Starless processing kavramı: `docs/09-narrowband/starless-processing.md`; ayrı draft workflow yoktur.
- 17 sayfanın hiçbiri kaldırılmamış veya merge edilmemiştir. Her URL öğrenme zincirinde özgün bir project gate taşır.

## Veri setleri ve doğrulama planı

| Veri seti | Amaç | Minimum kanıt | Durum |
|---|---|---|---|
| A — güçlü SII/Ha/OIII | SHO karar dalları | Channel masters, histogram/crop, mapping kaydı | Gerçek acquisition ayrıntısı repository'de yok |
| B — zayıf OIII Ha/OIII | OIII koruma ve HOO | OIII morphology, background/noise crop, mask/LHE karşılaştırması | Gerçek acquisition ayrıntısı repository'de yok |
| C — M31 LRGB+Ha | Yerel Ha katkısı | LRGB baseline, Ha/HII mask, star/core/dust crop | Gerçek acquisition ayrıntısı repository'de yok |

## Formül sahipliği

Workflow sayfalarında sabit blend yüzdesi veya bağlamsız PixelMath formülü yayımlanmadı. LRGB/Ha formüllerinin sahibi `docs/08-lrgb/pixelmath-lrgb.md`; narrowband mapping'in sahipleri `docs/09-narrowband/` concept sayfaları ve `docs/10-pixelmath/kanal-karisimlari.md` sayfasıdır. Workflow yalnız input, output intent, state, normalization, range ve clipping kaydını zorunlu kılar.

## QC ve görsel kanıt mimarisi

Her zincir dataset → master/channel → background/color → restoration/stretch → combination/palette → mask/detail → stars/final kapılarıyla ilerler. Kapılar tam görüntü, sabit %100 crop, histogram ve gerekiyorsa model/mask/rejection görsellerini ister. Henüz gerçek proje ekran görüntüsü eklenmemiştir; sayfalar görsel kanıt planını tanımlar fakat kanıt varmış gibi iddia etmez.

## Bilinen riskler

- Kamera, optik, filter, exposure, integration ve capture koşulları repository'de kayıtlı değildir.
- Gerçek A/B/C dataset testleri yapılmadan process etkileri “real-data verified” sayılamaz.
- Plugin sonuçları plugin/model sürümüne bağlıdır; exact ayar verilmemiştir.
- Visual evidence planları için ekran görüntüleri ve aynı koordinatlı crop'lar henüz üretilmemiştir.
- Narrowband palette estetik kararları fiziksel kanal ölçümü olarak yorumlanmamalıdır.

## Phase 7.6 önerisi

Phase 7.6'da önce dataset fact kayıtları ve A/B/C test verileri tamamlanmalı; ardından her kalite kapısı için belirtilen görsel çiftler üretilmeli, gerçek PixInsight execution kanıtı belge statüsünden ayrı kaydedilmeli ve yalnız kanıtlanan sonuçlar “verified workflow” olarak sınıflandırılmalıdır.
