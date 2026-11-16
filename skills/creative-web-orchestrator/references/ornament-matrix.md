# Matriz de Orquestração Criativa ("Ornar Arte + Layout + Interação")

Use esta matriz para decidir rapidamente **qual combinação** construir em cada projeto novo, garantindo que arte, layout e interação pareçam desenhados um para o outro — e que nenhum projeto saia igual ao anterior.

---

## 1. Cruzamento: Tema → Arte → Layout → Motor

| Tipo de Projeto | Direção de Arte / Mídia | Anatomia de Layout | Motor de Interação Principal | Apoios Silenciosos (máx. 3) |
|---|---|---|---|---|
| **SaaS / Plataforma de IA** | Cena noturna/botânica ou abstração 3D com topo limpo; mockup de UI integrado na cena | **A1** (moldura na base + UI embutida) ou **A2** (cena abaixo da dobra + vitrine alternada) | Vídeo rAF sem emenda + `.liquid-glass` | Blur-in escalonado + badge com pulso + palavra em itálico atenuado |
| **Fintech / Produto Físico / Cartões** | Fundo `#000` absoluto + renders com brilho de borda ou texturas em movimento dentro do objeto | **A6** (objeto 3D no centro) + seção Bento abaixo | Cilindro 3D Volumétrico com inércia de mouse | `JetBrains Mono` `tabular-nums` + hairline `1px` + marquee discreto |
| **Experiência Imersiva / Espaço / Viagem / Lançamento** | Vídeos ou cenas com continuidade de transição (viagem entre estados) ou ilustração granulada em `#000` | **A6** (Portal `<canvas>` central) ou **A5** (Horizonte ilustrado) | Portal `<canvas>` pseudo-3D + freeze-frame + cursor `"Enter"` | Preloader `0–100%` com logo que atraca no header + `Aalto`/condensed gigante |
| **Agência / Estúdio Criativo / Portfólio** | Vídeo atmosférico em frame recuado (`rounded-[2rem]`) ou peças de case com refração/prisma | **A7** (Inset Frame + Mega Type) ou **A3** (Topo invertido) | `WordsPullUp` + Manifesto scroll-opacity + colunas paralaxe GSAP | Grão SVG `feTurbulence` + halftone `4×4px` + marquee infinito no footer |
| **E-commerce Editorial / Moda / Beleza** | Recortes WebP transparentes sobre `#fff` ou sprite-sheets em paleta pastel/noturna dual | **A6** (Anel 3D) ou **A4** (Anel orbital + slides empilhados) | Anel 3D com pinos numerados **ou** Slides 3D `rotationX` no scroll | Cursor contextual `"Drag / View"` + troca de tema instantânea + `.ph` crop |
| **Ecossistema / Newsletter / Comunidade** | Diorama 3D flutuante cujo elenco de objetos vira os ícones das seções seguintes | **A4** (Diorama central + ícones-irmãos) | Scroll word-by-word reveal + hover magnético leve nos objetos 3D | Barra de avatares sobrepostos (`-space-x-2`) + input pill com botão luminoso |

---

## 2. Protocolo Anti-Poluição (O que Cortar Antes de Codar)

1. **Nunca misturar dois protagonistas na mesma dobra:**
   - Se há Cilindro 3D ou Portal `<canvas>`, o texto e a nav ficam imóveis e discretos.
   - Se a tipografia é gigante (`18–26vw`) com split-text e grão, não coloque cards de vidro flutuando na frente dela.
2. **Proibido "efeito de vitrine gratuita":**
   - Blobs neon roxos/índigo atrás de cards sem função: **cortar**.
   - Sombras pesadas borradas fora de contexto: **cortar** (use contraste de superfície, borda `1px` ou máscara `.liquid-glass`).
   - Mais de 2 famílias tipográficas + 1 mono opcional: **cortar**.
3. **Checklist de Unicidade (Comparar com o Projeto Anterior):**
   Antes de aprovar a spec, confirme que **pelo menos 3 destes 5 itens mudaram** em relação ao último site gerado:
   - [ ] Posição da arte principal (topo / base / centro flutuante / portal / fundo total)
   - [ ] Paleta base (`#000` / `#090807` / `#fff` / pastel / creme `#DEDBC8`)
   - [ ] Material dominante (`.liquid-glass` / cromo / editorial seco + grão / plano liso)
   - [ ] Par tipográfico (Serif+Sans / Grotesk puro / Condensed mega + Mono)
   - [ ] Assinatura de movimento (Cilindro 3D / Portal canvas / Scroll opacity / Anel 3D / Paralaxe GSAP / Vídeo rAF)

---

## 3. Roteiro Rápido de Execução no Chat

Sempre que o usuário mandar **tema + referências (ou só o tema)**:
1. Declare em 4 linhas a **Decisão Criativa**: Anatomia, Paleta + Material, Estratégia de Mídia e Assinatura Principal.
2. Gere ou prepare a mídia (ou cena WebGL/Canvas) respeitando a **Regra da Borda Zero-Emenda**.
3. Implemente código completo (sem placeholders, com cleanup de `rAF`/listeners e `prefers-reduced-motion`).
4. Rode o `shoot.py` (se for código) e só entregue após inspecionar os frames desktop e mobile.
