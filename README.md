# PixInsight Master Guide

[![Documentation validation](https://github.com/esenbaytekin/PixInsight-Master-Guide/actions/workflows/validate.yml/badge.svg)](https://github.com/esenbaytekin/PixInsight-Master-Guide/actions/workflows/validate.yml)
[![Documentation](https://img.shields.io/badge/docs-allsky.com.tr-4051b5)](https://allsky.com.tr/docs/)
[![License: CC BY 4.0](https://img.shields.io/badge/license-CC%20BY%204.0-lightgrey.svg)](LICENSE.md)
[![Target: PixInsight 1.9.3](https://img.shields.io/badge/PixInsight-1.9.3-2f6f9f)](PROJECT_STATUS.md)

PixInsight 1.9.3 için Git tabanlı, yaşayan ve topluluk katkısına açık Türkçe teknik dokümantasyon.

Çevrimiçi rehber: [https://allsky.com.tr/docs/](https://allsky.com.tr/docs/)

> Bu bağımsız bir topluluk dokümantasyonu projesidir; Pleiades Astrophoto veya PixInsight tarafından hazırlanmış, desteklenmiş ya da onaylanmış değildir.

## Kapsam

- Kalibrasyon, gradient düzeltme, renk kalibrasyonu, stretch, LRGB ve narrowband işleme
- Maskeler, multiscale işlemler, final processing ve troubleshooting
- UI ekran kanıtlarını teknik kaynak ve gerçek veri doğrulamasından ayıran validation sistemi
- Parametre tabloları, karar ağaçları, Quick Reference ve uygulamalı iş akışları

## Yerel kullanım

Python 3.10 veya daha yeni bir sürümle:

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
mkdocs serve
```

Yayın öncesi kontrol:

```bash
mkdocs build --strict
git diff --check
```

## Proje yapısı

| Yol | İçerik |
| --- | --- |
| `docs/` | Canonical kullanıcı dokümantasyonu |
| `validation/` | PixInsight 1.9.3 UI kanıtları ve kontrol kayıtları |
| `prompts/` | Yeniden kullanılabilir validation ve review şablonları |
| `hooks/` | MkDocs build metadata entegrasyonu |

## Katkı

Katkıdan önce [CONTRIBUTING.md](CONTRIBUTING.md), [STYLE_GUIDE.md](STYLE_GUIDE.md) ve [TECHNICAL_REVIEW_CHECKLIST.md](TECHNICAL_REVIEW_CHECKLIST.md) dosyalarını okuyun. Küçük ve doğrulanabilir değişiklikler tercih edilir; ham astro veri ve büyük proje dosyaları depoya eklenmez.

Allsky portalının uygulama kodu ve production operasyonu ayrı, özel bir depoda yönetilir. Bu açık depo yalnız PixInsight Master Guide kaynaklarını ve doğrulama kayıtlarını içerir.

## Lisans

Dokümantasyon içeriği [Creative Commons Attribution 4.0 International](LICENSE.md) lisansı altındadır.
