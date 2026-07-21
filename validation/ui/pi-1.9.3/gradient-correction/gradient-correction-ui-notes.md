# GradientCorrection UI Notları

## Kimlik ve discovery

- Process: `GradientCorrection` — **UI-VERIFIED**.
- Menü: `Process → GradientCorrection → GradientCorrection` — **UI-VERIFIED**.
- Canonical: `docs/04-gradient/gradient-correction.md` — tek aday.
- PixInsight 1.9.3: screenshot içinde sürüm görünmüyor — **UI-PARTIAL**.

## Doğrulanan section ve kontroller

| Section | Etiketler | Kanıt |
|---|---|---|
| Model Generation | Low threshold; Low tolerance; High threshold; High tolerance; Scale; Smoothness; Automatic convergence; Generate gradient model | `screenshots/01-full-interface.png` |
| Simplified Model | Simplified Model; Model degree; Generate simplified model | `screenshots/01-full-interface.png` |
| Structure Protection | Structure Protection; Protection threshold; Protection amount; Generate protection masks | `screenshots/01-full-interface.png` |

## UI-OBSERVED değerler

Görünen `0.20`, `0.50`, `0.05`, `0.00`, `5.00`, `0.40`, `1`, `0.10` ve checkbox durumları ekran anındaki gözlemlerdir; default değildir.

## Bekleyenler

- Default, tooltip ve console/log: **UI-UNVERIFIED**.
- Model generation, simplified model, structure protection ve output davranışı: **DATA-REQUIRED**.
- Parametrelerin algoritmik anlamı: **DOC-REQUIRED**.

