# Visual DNA 11: Editorial Gallery, Obsidian & Ivory Sculptural Craft
> Absorvido do refinamento real de direção de arte web (`motionsites/craft.md` + `Prisma` + `Asme` + `Portfolio Cosmic` + `Mostar Guide` + validação ao vivo na Lojinha Faudon).

---

## 1. Quando Usar (e O Que Substitui)

Use este DNA para **vitrines autorais, lançamentos, estúdios, produtos premium e comunidades** que precisam transmitir **personalidade única** em vez de parecer um painel de desenvolvedor / template SaaS genérico.

---

## 2. Paleta & Tokens Cromáticos (`60-30-10` Silencioso)

| Token | Valor Hex / Alpha | Papel Visual |
|---|---|---|
| `--bg-deep` | `#05070B` | Vazio obsidiana contínuo sem brilho plástico |
| `--ivory` | `#F2EFE9` | Tinta principal quente + preenchimento de CTA sólido |
| `--ivory-soft` | `rgba(242, 239, 233, 0.68)` | Subtítulos, descrições e navegação descansada |
| `--ivory-muted` | `rgba(242, 239, 233, 0.44)` | Metadados discretos (*quiet-kickers*) e notas |
| `--slate-mist` | `#9DB7D4` | Tom apagado/sofisticado para palavras em **itálico serifado** |
| `--hair` | `rgba(242, 239, 233, 0.10)` | Linhas divisórias finas sem ruído visual |

**Regra cromática estrita:** nunca inundar eyebrows, chips e bordas com ciano neon (`#00C8FF`) ou gradientes roxos. Hierarquia nasce da **opacidade do marfim** (`100 -> 68 -> 44`) e da cor da marca aplicada apenas no emblema principal e detalhes contidos.

---

## 3. Tipografia & Contraste de Escala

- **Display H1 (`clamp(2.85rem, 6.4vw, 5.45rem)`):** peso **`400`** ou **`500`** (jamais `700` pesado), `line-height: 0.94`, `letter-spacing: -0.045em`, quebrado manualmente em 2 linhas curtas (*"Mira firme, / `zero peso` no mouse."*).
- **Itálico Serifado (`Instrument Serif` italic):** reservado para **1–3 palavras** em tom mais calmo (`--slate-mist`), nunca em cor mais estridente que o restante do título.
- **Ghost Watermark por trás do objeto 3D:** palavra gigante da marca em serifa muito suave (`opacity: 0.045`) contraposta suavemente ao ponteiro por trás de emblema ou produto flutuante.

---

## 4. Anatomia Espacial & Coreografia

1. **Uma ideia na primeira dobra (`min-height: 100dvh`, `align-items: flex-end`):** céu/cenário respirando em cima + título à esquerda embaixo + **pílula marfim escultural** (`padding: 7px 7px 7px 24px`, texto + disco circular giratório `↗`) + links de texto quietos + objeto/logo 3D livre à direita sem caixa fechada. **Nenhuma tabela de estatísticas ou enxame de 6 badges na primeira tela.**
2. **Ritmo de Galeria (`padding-block: clamp(72px, 10vw, 152px)`):** cada seção é uma sala isolada com bastante ar antes da próxima linha divisória.
3. **Manifesto guiado pelo Scroll:** frase central em tamanho editorial (`clamp(1.85rem, 3.8vw, 3.35rem)`) onde cada palavra começa em `opacity: 0.20` e acende gradualmente até `1.0` conforme cruza o centro da viewport.
4. **Cards Bento Fotográficos Sem Caixa Tapando a Arte:** foto ocupando 100% do quadro, véu inferior em gradiente transparente (`rgba(5,7,11,0.14 -> 0.94)`), título com `text-shadow` leve diretamente sobre o degradê e botão pílula `Inspecionar ↗` sem tarja opaca por cima da imagem.
5. **Seções Sticky + Ficha Curta:** `overflow-x: clip` no `body` (nunca `overflow-x: hidden`, que mata `position: sticky`) e numeração editorial serifa itálica (`01`..`05`) na coluna direita.
