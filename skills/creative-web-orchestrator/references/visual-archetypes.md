# Arquétipos Visuais & Direção de Arte

Base extraída dos padrões de referência para orientar layout, iluminação, enquadramento e continuidade estética. Nunca repita o mesmo arquétipo em projetos seguidos.

---

## 1. Anatomias de Hero (Variar por Projeto)

| ID | Anatomia | Como o Espaço Funciona | Melhor Para |
|---|---|---|---|
| **A1 — Moldura na Base + UI Embutida** | Céu escuro/zona negativa limpa no topo para badge + headline + CTA. Vegetação, terreno ou atmosfera entra pela base e um **mockup em vidro da própria UI** nasce aninhado dentro da cena (ex.: *UI Rocket*). | SaaS de IA, cursos/ferramentas de design, produtos digitais com interface forte. |
| **A2 — Cena Empurrada Abaixo da Dobra** | Nav compacto no topo direito, headline editorial serifada + sub + 2 CTAs no terço superior livre; a cena atmosférica (flores/terreno/ilustração) abre logo abaixo, seguida por barra discreta de marcas (*Stripe · Vercel · Linear*) e vitrine alternada 2-colunas (ex.: *The Website Your Brand Deserves*). | Agências premium, plataformas B2B com foco em autoridade + prova visual. |
| **A3 — Topo Invertido (Teto Orgânico)** | Massa visual densa (terreno magenta, nuvens, textura alien) **pende do topo da tela** por trás da navbar. O conteúdo (badge + headline com palavra em itálico + input pill brilhante) respira logo abaixo no preto puro `#000` (ex.: *Task*). | Captação de lista/waitlist, lançamentos ousados, estúdios experimentais. |
| **A4 — Diorama Flutuante + Continuidade de Objetos** | Nav + headline + input no topo; um **diorama 3D isolado flutuando no espaço** ocupa o centro da dobra. Os próprios objetos do diorama reaparecem isolados como ícones 3D nas seções inferiores (ex.: *Get Inspired / Ilha Flutuante*). | Produtos de conteúdo, IA, ecossistemas com 3–4 pilares que precisam de narrativa visual coesa. |
| **A5 — Horizonte Ilustrado / Pintura Granulada** | Tipografia limpa e direta no topo sobre `#000` com estrelas sutis; a metade inferior traz uma **ilustração estilizada/granulada** (não fotorrealista) com silhuetas de luz e volume lateral (ex.: *Orbit*). | Produtos espaciais, dev tools criativas, marcas que fogem do render 3D padrão. |
| **A6 — Portal Recortado / Objeto 3D Central** | A cena ocupa 100% da viewport, mas uma janela/anel central (portal em `<canvas>`, cilindro 3D ou anel orbital) concentra o foco interativo enquanto os cantos levam títulos mega ou metadados técnicos (ex.: *Planet Jumping*, *Card Carousel*, *Reshoot*). | Experiências imersivas, fintechs premium, vitrines de produto único. |
| **A7 — Tipografia Monumental / Inset Frame** | Viewport com respiro externo (`p-4 md:p-6`, `rounded-[2rem]`) e tipografia gigante (`18–26vw`) ancorada na base sobre vídeo com grão (`feTurbulence`) (ex.: *Prisma*). | Estúdios criativos, portfólios autorais, produtoras audiovisuais. |

---

## 2. Regras de Ouro Extraídas das Referências

### Regra da Borda Zero-Emenda
- A cor `--bg` da página **deve** coincidir com a cor das bordas da arte/vídeo/3D (ex.: `#000000`, `#090807`, `#f9f0f5` ou `#ffffff`).
- Se a arte não terminar naturalmente no `--bg`, use gradiente de transição contínuo (`linear-gradient` para `--bg`) antes de misturar com o restante do layout — nunca deixe uma "caixa retangular" visível cortando a cena.

### Regra do Material Único
Escolha **1 material** por site para todos os elementos flutuantes (nav, chips, cards secundários, inputs):
1. **Vidro Líquido (`.liquid-glass`):** fundo quase nulo (`rgba(255,255,255,0.01)`), `backdrop-filter: blur(4px)` a `50px`, borda construída via `::before` com gradiente vertical + `mask-composite: exclude`. Ideal sobre vídeo ou cena 3D colorida.
2. **Cromo / Metal Escuro:** superfícies `#0f0f0f` / `#101010` com hairline `rgba(255,255,255,0.12)` e brilho metálico localizado no CTA ou escultura de fechamento.
3. **Editorial Seco / Grão (`feTurbulence`):** superfícies sólidas (`#000`, `#101010`, `#212121` ou `#fff`) unificadas por ruído fractal em `opacity: 0.04–0.15` ou halftone `radial-gradient`.
4. **Pastel / Tactile Soft (Modo Claro):** fundos quentes ou lilás (`#f9f0f5`, `#f7f5f0`), bordas suaves e contraste de tinta profunda (`#3a1d43` ou `#151413`).

### Regra da Palavra-Âncora Tipográfica
- Headlines de 3 a 8 palavras, com **1 ou 2 palavras-chave deslocadas**:
  - em `Instrument Serif` itálico (`font-normal`, levemente maior ~`1.06em`) dentro de uma frase sans-serif (`Inter`/`Almarai`), **ou**
  - em cor atenuada (`#6F6F6F` no claro, `white/50` no escuro) para dar cadência de leitura sem precisar de cor neon.

### Ritmo Abaixo da Dobra (Para Não Ficar Monótono)
Varie a sequência das seções intermediárias:
- **Manifesto de Leitura Guiada:** parágrafo grande centralizado cujas palavras/caracteres acendem de `0.15–0.2` para `1.0` de opacidade conforme o scroll (`Prisma`, `Mindloop`, `Task`).
- **Vitrine Assimétrica Alternada:** texto + card/UI de produto à direita -> card de produto à esquerda + texto à direita (`The Website Your Brand Deserves`).
- **Bento Assimétrico / 4 Colunas:** ex.: `7/5/5/7` com halftone (`Michael Smith`) ou 1 card de vídeo + 3 cards numerados `01/02/03` (`Prisma`).
- **Fechamento Escultórico:** escultura fluida 3D, vídeo espelhado (`scale-y-[-1]`) ou marquee infinito por trás de um único CTA central.
