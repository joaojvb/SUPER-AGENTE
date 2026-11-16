# DNA Visual Extraído: Light Editorial Gallery & High-Fashion Runway (`07-editorial-minimal-gallery-runway`)

> **Fonte Absorvida:** `site.md` — Blocos 1–3 (`Aethera®` White Video Hero) & Bloco 14 (`Try the Look.` Runway — Seção Interativa de Luxo).

## 1. Paleta Cromática & Contraste Editorial
- **Palco e Fundo Puro (`Gallery White`):** `#FFFFFF` — Fundo limpo de galeria com respiro amplo (`padding 44px 56px`), exigindo imagens transparentes (WebP alpha) diretamente sobre o palco sem caixas pesadas.
- **Tinta Primária (`Editorial Obsidian`):** `#151413` / `#000000` — Preto quente de alto contraste para headlines, botões zero-radius e bordas ativas.
- **Texto Secundário / Metadados (`Warm Stone Muted`):** `#66625C` / `#6F6F6F` — Cinza mineral para descrições curtas, contadores `tabular-nums` e itens inativos de menu.
- **Divisórias Estruturais (`Hairline Rule`):** `#C8C8C8` / `#E4E4E4` — Linhas de `1px` separando colunas e linhas de produto com sublinhado animado expansivo no hover.
- **Superfície Translúcida de Pins & Tooltips (`Frosted Daylight`):** `rgba(255, 255, 255, 0.86)` com `backdrop-filter: blur(6px–10px)` e sombra aérea `0 10px 26px -12px rgba(0, 0, 0, 0.4)`.

## 2. Sistema Tipográfico Dual (Editorial Gallery vs. Luxury Commerce)
- **Variante A — Editorial Contemplativo (`Aethera`):**
  - Display: `Instrument Serif` (tamanhos grandes `text-5xl` até `text-8xl`, `line-height: 0.95`, `letter-spacing: -2.46px`), misturando palavras-chave em **itálico `#6F6F6F`** dentro da frase `#000000`.
  - Corpo/Nav: `Inter` (`text-sm` a `text-lg`).
- **Variante B — Moda & Lookbook Preciso (`Runway`):**
  - Base: `Helvetica, Arial, sans-serif` (peso `400` para títulos amplos `46px / -0.02em`, peso `500` para nomes de produto e CTAs, peso `600` para badges numéricos e micro-tags `9px–11px uppercase tracking 0.14em–0.20em`).
  - `font-variant-numeric: tabular-nums` obrigatório em progress ticks (`01`..`06`), contadores e valores monetários.

## 3. Geometria, Sombras de Contato & Vídeo Dissolvido
- **Sombra de Contato Física no Chão (`.rw__shadow`):**
  - `radial-gradient(closest-side, rgb(20 16 12/.30), rgb(20 16 12/.14) 45%, rgb(20 16 12/.04) 75%, rgb(20 16 12/0))` com `filter: blur(2px)` e pés alinhados automaticamente por detecção de canal alfa.
- **Botões Assimétricos de Contraste:** CTAs principais retangulares secos (`border-radius: 0px`) ou pílulas cheias (`rounded-full`) em contraste deliberado com seletores de tamanho em pílula (`border-radius: 30px`) e badges numéricos circulares (`20x20`).
- **Fusão de Vídeo em Fundo Claro:** Vídeo posicionado abaixo do bloco textual superior (`top: 300px`) mascarado por gradiente vertical `from-background via-transparent to-background` + fade manual rAF nas pontas do loop.
