# Motores de Interação (Catálogo Deduplicado)

Catálogo operacional dos 9 núcleos de interação (cobrindo 11 projetos-base de referência). Use-os como **motores de comportamento e código** adaptáveis a qualquer tema — **nunca** herde limitações estéticas literais desses exemplos (como P&B forçado ou degradê reto no lugar de recorte orgânico).

---

## 1. Seamless rAF Video Crossfade (`Aethera` / `Asme`)
- **Quando usar:** Vídeo de fundo que não tem loop perfeito e daria um "salto" seco ao reiniciar.
- **Mecânica exata:**
  - Vídeo inicia com `opacity: 0`.
  - No `canplay` / `loadeddata`: `play()` + fade-in de `0 -> 1` em `500ms` via `requestAnimationFrame`.
  - Loop `rAF` (ou `timeupdate`): quando `duration - currentTime <= 0.55s`, fade-out `1 -> 0` em `500–550ms`.
  - No `ended`: `opacity = 0`, aguarda `100ms`, `currentTime = 0`, `play()` e reinicia fade-in.
- **Complemento:** Camada de gradiente `bg-gradient-to-b from-background via-transparent to-background` para fundir vídeo no fundo da página.

## 2. Liquid Glass por Máscara CSS (`Digital Experiences` / `Asme` / `Mindloop`)
- **Quando usar:** Navbar em pílula, botões secundários, inputs de email e cards flutuando sobre vídeo ou 3D.
- **CSS base:**
  - `.liquid-glass`: `background: rgba(255,255,255,0.01); background-blend-mode: luminosity; backdrop-filter: blur(4px); box-shadow: inset 0 1px 1px rgba(255,255,255,0.1); position: relative; overflow: hidden;`
  - `.liquid-glass-strong`: `backdrop-filter: blur(50px); box-shadow: 4px 4px 4px rgba(0,0,0,0.05), inset 0 1px 1px rgba(255,255,255,0.15);`
  - Borda refrativa em `::before`: `padding: 1.4px`, gradiente vertical `180deg` (`0.45 -> 0.15 -> 0 -> 0 -> 0.15 -> 0.45`), recortada com `-webkit-mask: linear-gradient(#fff 0 0) content-box, linear-gradient(#fff 0 0); -webkit-mask-composite: xor; mask-composite: exclude; pointer-events: none;`.

## 3. Cilindro 3D Volumétrico com Inércia (`Card Carousel`)
- **Quando usar:** Vitrine de cartões, passes, tokens físicos, portfólio em cards ou objetos planos que exigem peso físico.
- **Mecânica exata:**
  - Wrapper com `perspective: 1350px` e `transform-style: preserve-3d`.
  - Espessura real em DOM: 5 fatias paralelas em `translateZ` (`[-1.47, -0.73, 0, 0.73, 1.47]`), meio em `#808080`, frente (`backface-visibility: hidden`) com vídeo/UI, verso (`rotateX(180deg)`) com vídeo `blur(16px)` + tarja e `JetBrains Mono`.
  - Avanço contínuo (`progress.current += 0.0016`) com pausa magnética no centro: `easedDiff = Math.sign(diff) * Math.pow(Math.abs(diff) * 2, 4.2) / 2`.
  - Wrapping circular em `[-N/2, N/2]` + interpolação `smoothstep` (`t*t*(3-2*t)`) em 3 faixas (`0..1`, `1..2`, `2..3`) com fórmula de borda em perspectiva (`s = D / (D - z)`).
  - Inércia de mouse (`lerp 0.08`) modulada por `centerFactor = Math.max(0, 1 - absOffset)` (`maxTiltY = 15°`, `maxTiltX = 12°`, inclinação fixa `rotateZ(-3deg)`).

## 4. Portal Canvas Pseudo-3D + Freeze-Frame (`Planet Jumping`)
- **Quando usar:** Sites com troca de mundos/capítulos/produtos onde uma janela central se expande para engolir a tela inteira.
- **Mecânica exata:**
  - `<canvas id="portal-canvas">` em tela cheia desenha um retângulo arredondado (44 pontos amostrados nos 4 cantos) projetado com perspectiva falsa (`focal = 850`: `p = 850 / (850 + z)`).
  - O vídeo/imagem dentro do portal é desenhado com `drawCover()` **travado na tela** (efeito janela paralaxe, não textura colada).
  - Hover inclina até `±18.7°` / `±16.5°` suavizado por `dt * 0.009`.
  - Clique dispara `animateValue(..., 1100, easeInOutCubic)`: `expansion` vai `0 -> 1` (raio e inclinação relaxam a `0`), vídeo de transição roda a `1.3x`, último frame é congelado em `#scene-canvas`, estado muda por baixo, e a máscara reabre (`1050ms`) no novo mundo.
  - Preloader de ~3s sincroniza `playbackRate = Math.max(0.25, duration / 3)` com contador `0–100%` e logo que voa do centro ao header (`2s cubic-bezier(.16,1,.3,1)`).

## 5. Terreno WebGL Interativo & Dispersão no Hover (`Fernhollow`)
- **Quando usar:** Atmosferas orgânicas, estúdios regenerativos, mundos de partículas onde o cursor e o scroll interagem com milhares de pontos 3D.
- **Mecânica exata:**
  - Cena Three.js (`r154`) com milhares de point-sprites crescendo conforme aproximam da câmera + câmera guiada por curva/caminho (`GLB`) controlada por scroll virtual + deriva lenta em idle.
  - Cursor repele pontos em screen-space com brilho próximo ao ponteiro e leve inclinação da câmera.
  - Hover no CTA (`startHoverTransition()`): desacelera câmera, dispersa partículas em brilho flutuante e aplica filtro low-pass no áudio ambiente; `stopHoverTransition()` reverte.
  - Escala responsiva via unidade única `--u: min(calc(100vw/1600), calc(100vh/900))`.

## 6. Anel de Profundidade 3D + Pinos & Cursor Contextual (`Try the Look`)
- **Quando usar:** Moda, e-commerce editorial, lookbooks ou hardware com múltiplos itens clicáveis por cena.
- **Mecânica exata:**
  - Custom Element ou componente modular com fila circular em anel 3D + desfoque de profundidade nos itens periféricos + mola de seguimento (`stiffness 95`, `follow lag 0.04s`).
  - Autoplay com barra `01–06`, pausa, cursor customizado `"Drag / View"` e modal/zoom com pinos numerados ligados a painel lateral de itens e seleção de variantes.

## 7. Revelação de Manifesto por Scroll + Pull-Up + Grão SVG (`Prisma` / `Mindloop`)
- **Quando usar:** Seções About/Manifesto que transformam texto longo em experiência tátil de leitura.
- **Mecânica exata:**
  - `WordsPullUp` / `WordsPullUpMultiStyle`: divide texto por palavra mantendo classes mistas (`Almarai` + `Instrument Serif italic`), sobe de `y: 20 -> 0` com `stagger: 0.08s` e ease `[0.16, 1, 0.3, 1]`.
  - `AnimatedLetter` / `ScrollWordReveal`: usa `useScroll({ offset: ['start 0.8', 'end 0.2'] })` + `useTransform` para interpolar opacidade de cada caractere (`0.2 -> 1`) ou palavra (`0.15 -> 1`) ao longo do scroll.
  - Textura unificadora: SVG `data:image/svg+xml` com `<feTurbulence type='fractalNoise' baseFrequency='0.85' numOctaves='3'/>` em `mix-blend-overlay` (zero custo de vídeo/imagem extra).

## 8. Preloader Numérico + Bento Halftone + Colunas Paralaxe (`Portfolio Cosmic`)
- **Quando usar:** Portfólios e estúdios escuros de alta densidade visual.
- **Mecânica exata:**
  - Preloader `rAF` `000 -> 100` (`tabular-nums`) em `2700ms` com palavras alternando a cada `900ms` e barra de gradiente.
  - Vídeo `hls.js` no hero e o **mesmo** stream espelhado (`scale-y-[-1]`) no footer.
  - Grid Bento `grid-cols-12` alternando `7/5` e `5/7` com overlay halftone (`radial-gradient(circle, #000 1px, transparent 1px)` em `4x4px`).
  - Galeria `min-h-[300vh]` com título central fixado via `GSAP ScrollTrigger` (`pinSpacing: false`) enquanto 2 colunas paralelas deslizam em velocidades opostas + marquee infinito (`xPercent: -50, duration: 40`).

## 9. Anel Orbital + Sprite-Sheet `.ph` + Slides 3D no Scroll (`Reshoot`)
- **Quando usar:** Múltiplas imagens geradas em sheets, produtos de beleza/lifestyle ou passos de processo que precisam de peso cinematográfico.
- **Mecânica exata:**
  - **Anel Orbital:** 8 cards posicionados em círculo girando em `32s` enquanto cada imagem recebe rotação inversa para permanecer sempre reta.
  - **`.ph` Cover-Crop:** recorta células individuais de uma única sprite-sheet com `inset = 8px` contra sangramento e `ResizeObserver` recalculando `background-size` e `background-position` com `data-fx`/`data-fy`.
  - **Slides 3D:** 4 seções em `100vh` onde cada slide fixa (`pin`) e tomba para trás no scroll (`rotationX: 40°`, `scale: 0.7`, torção `±5°`, `opacity -> 0`).
  - **Coluna Infinita com Máscara:** frases subindo continuamente através de `mask-image: linear-gradient(180deg, transparent 0, #000 12%, #000 88%, transparent 100%)`.
