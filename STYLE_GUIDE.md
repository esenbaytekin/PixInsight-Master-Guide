# PixInsight Master Guide — Style Guide

## Terminoloji
Açıklamalar Türkçe, PixInsight process ve parametre adları özgün İngilizce yazılır. Aynı kavram için tek karşılık kullanılır. Doğrulanmamış ayrıntı **Doğrulama bekliyor** olarak işaretlenir.

## Başlık standardı
Tek `#` belge başlığı kullanılır. Ana bölümler `##`, alt bölümler `###` olur. Teknik sayfalar proje şablon sırasını korur.

## Markdown standardı
CommonMark uyumlu Markdown, listeler ve başlıklar çevresinde boş satır ve anlamlı vurgu kullanılır.

## Mermaid standardı
`mermaid` dil etiketi kullanılır. Karar ağaçları `flowchart TD`, pipeline’lar çoğunlukla `flowchart LR` olur. Noktalama içeren node etiketleri tırnaklanır.

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

