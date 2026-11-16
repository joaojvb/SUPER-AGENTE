# DNA Visual Extraído: Obsidian Cinema & Mask-Stroke Liquid Glass (`08-dark-cinema-liquid-glass`)

> **Fonte Absorvida:** `site.md` — Blocos 5–8 (`Agency Liquid Glass`) & Blocos 9–10 (`Prisma Creative Studio`).

## 1. Duas Vertentes Cromáticas Cinematográficas sobre Preto Puro
- **Fundo Global (`Abyssal Black`):** `#000000` absoluto; superfícies internas escalonadas em `#101010` (cartões editoriais amplos) e `#212121` (cards de feature/especificação).
- **Variante A — Monochrome Ice & Liquid Glass (`Agency`):**
  - Texto puro `#FFFFFF`, nuances em `rgba(255,255,255,0.80)` e `0.90`.
  - Vidro líquido quase invisível (`rgba(255,255,255,0.01)` + `background-blend-mode: luminosity`) com borda especular vertical via máscara CSS (`blur(4px)` sutil ou `blur(50px)` forte).
- **Variante B — Warm Cream Film Studio (`Prisma`):**
  - Creme quente orgânico `#DEDBC8` / `#E1E0CC` para display, bordas e ícones de checklist; links do header pendente em `rgba(225,224,204,0.8)` -> `#E1E0CC`.
  - Moldura cinematográfica em volta do Hero (`p-4 md:p-6`, container `rounded-[2rem] overflow-hidden`) com pílula de navegação preta pendurada no topo central (`bg-black rounded-b-3xl`).

## 2. Tipografia Monumental & Contraste Serif vs. Grotesk Light
- **Display Principal:**
  - `Instrument Serif` itálico monumental (`text-6xl` a `5.5rem`, `leading-[0.8]` a `0.9`, `tracking-[-3px]` a `[-4px]`) para headlines de agência; OU `Almarai` ultragrande (`19vw–26vw`, `leading-[0.85]`, `tracking-[-0.07em]`) com asterisco sobrescrito e palavra intercalada em `Instrument Serif italic` (`WordsPullUpMultiStyle`).
- **Corpo & Rótulos Técnicos:**
  - `Barlow` pesos `300–400` (`font-light leading-tight` / `leading-snug max-w-[32ch]`) ou `Almarai` acompanhado de prefixos estilísticos de código (`// Capabilities`) e números sequenciais (`01`, `02`, `03`).

## 3. Texturas Analógicas, Vídeos Atmosféricos & Entrada Difusa
- **Textura de Filme Procedural (Sem PNG Externo):** SVG `feTurbulence` embutido em `data:image/svg+xml` aplicado com `.noise-overlay` (`baseFrequency: 0.85`, `numOctaves: 3`, `opacity: 0.7`, `mix-blend-overlay`) sobre vídeos e `.bg-noise` (`0.15` de opacidade) em seções escuras.
- **Entrada Sensorial Unificada:** Elementos entram desfazendo desfoque gaussiano (`filter: blur(10px) -> blur(0px)`, `opacity: 0 -> 1`, `translateY: 20px–50px -> 0`) ou em revelação progressiva caractere-a-caractere conectada ao scroll (`opacity: 0.2 -> 1`).
