# PixInsight Master Guide

PixInsight 1.9.3 ve güncel RC Astro eklentileri için Türkçe, Git tabanlı ve yaşayan bir monokrom astrofotoğraf işleme el kitabıdır. LRGB, HaRGB, SHO, HOO, galaksi ve bulutsu işleme; maskeler, PixelMath, hata giderme ve gerçek hedef uygulamalarını kapsar.

## Hedef kullanıcı

Temel astrofotoğraf bilgisine sahip, PixInsight ile tekrarlanabilir monokrom işleme akışları kurmak isteyen başlangıç ve orta seviye kullanıcılar.

## Desteklenen yazılım sürümleri

- PixInsight 1.9.3
- Güncel RC Astro eklentileri

Sürüme bağlı ayrıntılar yayımlanmadan önce doğrulanır; doğrulanmamış alanlar “Doğrulama bekliyor” olarak işaretlenir.

## Yerel kurulum

Python 3.10+ ile sanal ortam oluşturun ve bağımlılıkları yükleyin:

```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
```

## MkDocs çalıştırma

Yerel önizleme için:

```bash
mkdocs serve
```

Üretim çıktısını doğrulamak için:

```bash
mkdocs build --strict
```

## Katkı süreci

Önce [CONTRIBUTING.md](CONTRIBUTING.md), [STYLE_GUIDE.md](STYLE_GUIDE.md) ve [TECHNICAL_REVIEW_CHECKLIST.md](TECHNICAL_REVIEW_CHECKLIST.md) kurallarını okuyun. Küçük, odaklı bir dal açın; göreli bağlantıları ve yerel derlemeyi kontrol ettikten sonra değişiklik önerisi gönderin. Ham astro görüntülerini depoya eklemeyin.

## Dokümantasyon

- [Kılavuz ana sayfası](docs/index.md)
- [Yol haritası](ROADMAP.md)
- [Değişiklik günlüğü](CHANGELOG.md)
