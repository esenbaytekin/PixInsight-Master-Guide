# Allsky Türkiye Astronomi Portalı ve PixInsight Master Guide

[![Production deployment](https://github.com/esenbaytekin/PixInsight-Master-Guide/actions/workflows/deploy.yml/badge.svg)](https://github.com/esenbaytekin/PixInsight-Master-Guide/actions/workflows/deploy.yml)
[![Documentation](https://img.shields.io/badge/docs-allsky.com.tr-4051b5)](https://allsky.com.tr/docs/)
[![License: CC BY 4.0](https://img.shields.io/badge/license-CC%20BY%204.0-lightgrey.svg)](LICENSE.md)
[![Target: PixInsight 1.9.3](https://img.shields.io/badge/PixInsight-1.9.3-2f6f9f)](PROJECT_STATUS.md)

Bu repository iki bağımsız fakat birlikte yayımlanan Türkçe bilgi katmanı içerir:

- `https://allsky.com.tr/`: gözlem, astrofotoğrafçılık, gök cisimleri, ekipman, sözlük ve astronomi araçları sunan Allsky Türkiye portalı.
- `https://allsky.com.tr/docs/`: PixInsight 1.9.3 için Git tabanlı ve yaşayan PixInsight Master Guide.

> Bu bağımsız bir topluluk dokümantasyonu projesidir; Pleiades Astrophoto veya PixInsight tarafından hazırlanmış, desteklenmiş ya da onaylanmış değildir.

## Portal özellikleri

- Gözlem ve astrofotoğrafçılık için ayrı öğrenme yolları
- Gök cismi kataloğu, astronomi sözlüğü ve site genelinde Türkçe arama
- Büyütme, çıkış bebeği, görüş alanı ve piksel ölçeği hesaplayıcıları
- Açık, karanlık ve sistem teması
- Mobil uyumlu, klavye ile erişilebilir navigasyon
- Portal ile `/docs/` arasında karşılıklı ve kalıcı geçiş

## PixInsight rehberi

- Kalibrasyon, gradient düzeltme, renk kalibrasyonu, stretch, LRGB/narrowband, maskeler, multiscale işlemler ve final processing
- PixInsight process adlarını koruyan profesyonel Türkçe anlatım
- UI ekran kanıtlarını teknik kaynak ve gerçek veri doğrulamasından ayıran validation sistemi
- Parametre tabloları, karar ağaçları, troubleshooting ve Quick Reference bölümleri
- LRGB, HaRGB, SHO, HOO, OSC ve mono veri için uygulamalı iş akışları

## Çevrimiçi yayın

Portal: [https://allsky.com.tr/](https://allsky.com.tr/)

PixInsight rehberi: [https://allsky.com.tr/docs/](https://allsky.com.tr/docs/)

Sürüm durumu, kapsam ve bilinen sınırlamalar için [PROJECT_STATUS.md](PROJECT_STATUS.md), v1.0.0 hazırlık özeti için [RELEASE_NOTES_v1.0.0.md](RELEASE_NOTES_v1.0.0.md) dosyasına bakın.

## Yerel kullanım

Portal için Node.js 22+ ile:

```bash
npm run portal:build
npm run portal:serve
```

Portal testleri:

```bash
npm run test:portal
```

PixInsight rehberi için Python 3.10+ ile:

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
mkdocs serve
```

Ortak yayın öncesi kontrol:

```bash
npm run test:portal
mkdocs build --strict
git diff --check
docker build --tag allsky-portal:local .
```

## Proje yapısı

| Yol | İçerik |
| --- | --- |
| `portal/` | Allsky Türkiye portal kaynakları, içerik modelleri ve testleri |
| `docs/` | Canonical kullanıcı dokümantasyonu |
| `validation/` | PixInsight 1.9.3 UI kanıtları ve kontrol kayıtları |
| `prompts/` | Yeniden kullanılabilir validation ve review şablonları |
| `deployment/` | Production deployment tanımı ve operasyon rehberi |
| `hooks/` | MkDocs build metadata entegrasyonu |

Mimari kararlar [ARCHITECTURE.md](ARCHITECTURE.md), portal içerik kuralları [CONTENT_GUIDE.md](CONTENT_GUIDE.md), ortak build ve yayın akışı [DEPLOYMENT.md](DEPLOYMENT.md) içinde açıklanır.

## Ortam değişkenleri

Portal build'i şu aşamada çalışma zamanı sırrı veya zorunlu ortam değişkeni kullanmaz. Production ingress ayarları `.env.example` üzerinden Docker Compose'a verilir. Analytics ve benzeri harici servis kimlikleri portal içeriğine eklenmeden önce gizlilik ve consent akışıyla birlikte değerlendirilmelidir.

## Kalite ve doğrulama modeli

UI'de görünen bir kontrol, process davranışının veya varsayılan değerinin kanıtı sayılmaz. Proje; UI kanıtı, birincil kaynak doğrulaması ve gerçek veri testini ayrı izler. Teknik denetim yaklaşımı [TECHNICAL_VERIFICATION.md](TECHNICAL_VERIFICATION.md), yazım standardı [STYLE_GUIDE.md](STYLE_GUIDE.md) içinde açıklanır.

## Hedef sürüm ve sınırlamalar

- Hedef PixInsight sürümü: **1.9.3**
- Hazırlanan dokümantasyon sürümü: **v1.0.0**
- RC Astro eklentileri sürüme duyarlıdır; sayfalardaki açık sürüm kayıtları esas alınmalıdır.
- Statik ekran görüntüleri gizli seçenekleri, reset/default durumunu veya algoritmik davranışı kanıtlamaz.
- RangeSelection için PixInsight 1.9.3 UI ekran kanıtı henüz eksiktir.
- Reçeteler veri, hedef, optik sistem ve SNR'a göre değerlendirilmelidir.

## Katkı

Katkıdan önce [CONTRIBUTING.md](CONTRIBUTING.md), [STYLE_GUIDE.md](STYLE_GUIDE.md) ve [TECHNICAL_REVIEW_CHECKLIST.md](TECHNICAL_REVIEW_CHECKLIST.md) dosyalarını okuyun. Küçük ve doğrulanabilir değişiklikler tercih edilir; ham astro veri ve büyük proje dosyaları depoya eklenmez.

## Yayın ve lisans

- Değişiklik geçmişi: [CHANGELOG.md](CHANGELOG.md)
- Yayın kontrolü: [RELEASE_CHECKLIST.md](RELEASE_CHECKLIST.md)
- GitHub release taslağı: [GITHUB_RELEASE_DRAFT_v1.0.0.md](GITHUB_RELEASE_DRAFT_v1.0.0.md)
- Deployment rehberi: [deployment/README.md](deployment/README.md)

Dokümantasyon içeriği [Creative Commons Attribution 4.0 International](LICENSE.md) lisansı altındadır.
