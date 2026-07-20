# PixInsight Master Guide — Style Guide

## Terminoloji
Açıklamalar Türkçe, PixInsight process ve parametre adları özgün İngilizce yazılır. Aynı kavram için tek karşılık kullanılır. Doğrulanmamış ayrıntı **Doğrulama bekliyor** olarak işaretlenir.

## Başlık standardı
Tek `#` belge başlığı kullanılır. Ana bölümler `##`, alt bölümler `###` olur. Teknik sayfalar proje şablon sırasını korur.

## Markdown standardı
CommonMark uyumlu Markdown, listeler ve başlıklar çevresinde boş satır ve anlamlı vurgu kullanılır.

Normal metin, tablo, liste, admonition ve Mermaid bloklarında satır sonu yerine literal kaçış dizisi kullanılmaz. Kaçış dizileri yalnız çalıştırılabilir kod veya bilinçli string örneği içinde tutulabilir.

## Teknik doğrulama sınıflandırması

- **A:** Temel ve sürümden bağımsız kavram; teknik anlamı korunur.
- **B:** PixInsight 1.9.3 arayüzü veya process/script davranışı; birincil kaynak yoksa **Doğrulama bekliyor** yazılır.
- **C:** Kamera, gain, sıcaklık, exposure veya veri setine bağlı tavsiye; mutlaklaştırılmaz ve kaynaksız kesin sayı verilmez.
- **D:** Algoritmik veya matematiksel iddia; birincil kaynak ya da kontrollü test yoksa kesinliği azaltılır ve doğrulama ihtiyacı belirtilir.

Önemli B veya D iddiasının yakınında `!!! warning "Doğrulama durumu"` kutusu kullanılır.

## Mermaid standardı
`mermaid` dil etiketi kullanılır. Karar ağaçları `flowchart TD`, pipeline’lar çoğunlukla `flowchart LR` olur. Node kimlikleri benzersiz ASCII değerlerdir; etiketler çift tırnakla yazılır. HTML satır sonu ve literal kaçış dizisi kullanılmaz. Diyagram dekoratif tekrar olmamalı, metindeki ilişkiyi açıklamalıdır.

## Tablo standardı
Açık başlık satırı kullanılır; hücreler kısa, tek karar boyutlu ve PDF’de okunabilir tutulur.

## Kod blokları
Doğru dil etiketi kullanılır. Örnek kopyalanabilir, açıklanmış ve doğrulanmış olmalıdır.

## Admonition kullanımı
`note` kapsam/tanım, `tip` güvenli uygulama, `warning` risk, `info` bağlam, `example` gerçek senaryo içindir. Her kutu tek mesaj taşır.

## Quick Reference standardı
Sayfa sonunda `!!! tip "Tek sayfalık kontrol listesi"` biçiminde uygulanabilir checkbox’lar kullanılır; yeni iddia eklenmez.

## Decision Tree standardı
Quick Reference sonrasında Mermaid ile verilir. Gözlenebilir soruyla başlar, her dal açık eylemle biter.

## Görsel isimlendirme
Küçük harf ASCII ve tire: `process-konu-asama-v01.png`. Boşluk, Türkçe karakter ve belirsiz ad kullanılmaz.

## Dosya isimlendirme
Küçük harf ASCII ve tire kullanılır; mevcut numaralı bölüm düzeni korunur.

## İç bağlantı standardı
İç bağlantılar göreli Markdown bağlantısıdır. Dosya taşınırsa tüm bağlantıları aynı değişiklikte güncelleyin.
