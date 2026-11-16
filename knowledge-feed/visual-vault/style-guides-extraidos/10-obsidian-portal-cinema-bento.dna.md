# Visual DNA 10: Obsidian Portal, Cinema Bento & Monumental Editorial
> Extraído e destilado dos blocos de elite do `site.md` (Blocos 16, 18 e 19: Portfolio Steel Dark, Planet Jumping Portal Canvas e Asme Editorial Cinema).

---

## 1. Paleta & Tokens Cromáticos

| Token | Hex / Valor | Função Visual |
|---|---|---|
| `--bg-void` | `#000000` / `#0A0A0A` | Base absoluta sem cinzas lavados |
| `--surface-card` | `#121417` / `#141414` | Painéis arquitetônicos e placas de mídia |
| `--surface-pill` | `#1A1D22` | Pílulas de vidro fosco (`backdrop-blur`) |
| `--ink-primary` | `#F4F7FC` / `#EDEDED` | Tipografia principal de alto contraste |
| `--ink-muted` | `#8F99A8` / `#888888` | Metadados mono, índices e subtítulos |
| `--accent-ice-start` | `#89AACC` | Ponto inicial do degradê metálico/gelo |
| `--accent-ice-end` | `#4E85BF` | Ponto final + realce elétrico de interação |
| `--hairline` | `rgba(255, 255, 255, 0.08)` | Divisórias Swiss de `1px` em tabelas/fatos |

---

## 2. Anatomia de Composição (Blocos 16, 18 e 19)

1. **Sequência de Abertura Instantânea & Flying Logo Dock (Bloco 16 + Bloco 18):**
   - Tela de boot fullscreen compacta (`000 -> 100`) com barra de progresso mínima e bypass imediato ao clicar ou sob `prefers-reduced-motion` / `sessionStorage`.
   - Ao atingir `100`, o emblema central calcula o delta de viewport em relação ao slot do Header (`#header-logo-target`) e desliza com `cubic-bezier(0.22, 1, 0.36, 1)` direto para a barra superior fixa, sem corte abrupto.

2. **Hero Monumental + Portal Canvas Travado na Tela (Bloco 18 + Bloco 16):**
   - Tipografia display gigante em duas vozes: Sans geométrica / condensada em caixa-alta + Serif itálica contrastante (`Instrument Serif`), acompanhada de *Role Cycler* rotativo sem saltos de linha.
   - **Sem caixa opaca pesada na direita:** a janela de mídia usa *Screen-Locked Parallax Portal* (`drawCover` + projeção perspectiva `focal = 850` com leve tilt de cursor), mantendo a cena respirando atrás dos elementos 3D flutuantes e expandindo suavemente sem cortes duros.

3. **Ticker Cinético Contínuo (Bloco 16):**
   - Faixa horizontal dupla infinita (`animation: marquee-scroll 28s linear infinite`) separada por bordas `1px`, com ícones geométricos mínimos e pausa automática no hover/reduced-motion.

4. **Bento Assimétrico `7 / 5 / 5 / 7` com Halftone `4x4` & Hover Pill (Bloco 16 + Bloco 19):**
   - Grid de 12 colunas (`grid-template-columns: repeat(12, minmax(0, 1fr))`) onde a primeira linha divide `span 7` + `span 5` e a segunda inverte para `span 5` + `span 7` (colapsando para `1` coluna abaixo de `900px`).
   - Imagens com bordas secas (`2px–4px`), máscara *Halftone* `4x4` em SVG overlay (`opacity: 0.14`) e zoom leve no hover (`scale(1.04)`), revelando pílula inferior com `backdrop-filter: blur(12px)` e seta diagonal de inspeção (FLIP modal/lightbox).

5. **Split Storytelling com Coluna Sticky & Ledger `1px` Escalonado (Bloco 16 + Bloco 18 + Bloco 19):**
   - Layout `50/50` (`lg:grid-cols-12`): coluna esquerda `position: sticky; top: 96px` segurando título display + síntese técnica; coluna direita empilhando linhas `.fact` separadas por bordas `1px solid var(--hairline)`, onde cada linha entra com *blur-rise* (`opacity: 0 -> 1`, `translateY(18px) -> 0`, `filter: blur(6px) -> 0`) em *stagger* controlado por `IntersectionObserver`.

6. **Cursor Dual-Ring com Inércia (Bloco 18):**
   - Ativado exclusivamente via `@media (hover: hover) and (pointer: fine)` e desligado em `prefers-reduced-motion`: núcleo sólido `10px` seguindo o ponteiro + órbita externa `34px` interpolada (`lerp = 0.2`) exibindo rótulos contextuais (`VER`, `EXPLORAR`, `ARRASTAR`) via `data-cursor`.

---

## 3. Regra Anti-Clichê (Obrigatória)

- **Proibido** envolver o destaque do Hero em card pesado com cantos muito arredondados (`18px–999px`) ou sombra difusa genérica; usar recortes arquitetônicos (`2px–4px`), moldura aberta ou portal em canvas.
- Toda célula de CSS Grid deve declarar `min-width: 0; max-width: 100%` e canvases responsivos usam `style.width = '100%'` para jamais vazar da viewport em larguras intermediárias (`768px–1200px`).
