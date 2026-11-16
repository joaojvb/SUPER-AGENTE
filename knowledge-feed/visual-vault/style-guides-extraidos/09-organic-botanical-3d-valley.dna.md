# DNA Visual Extraído: Nocturnal Regenerative 3D & Botanical Studio (`09-organic-botanical-3d-valley`)

> **Fonte Absorvida:** `site.md` — Blocos 11–13 (`Fernhollow — Night Flower Valley Hero`).

## 1. Paleta Cromática Noturna & Orgânica
- **Céu / Vazio Profundo (`Night Canvas`):** `#000000` atrás da cena 3D (partículas/sprites luminescentes, *bloom*, *split-RGB noise pass*, neblina de profundidade e vinheta reativa à velocidade).
- **Tipografia & Traços (`Warm Botanical Cream`):** `#F5EFE2` — Creme quente com suavidade analógica, nunca branco `#FFF` duro.
- **Tinta Sobre Creme (`Forest Charcoal`):** `#151510` dentro das pílulas sólidas e no estado hover preenchido do botão circular de ação.
- **Linhas Divisórias Sutis:** `rgba(245, 239, 226, 0.45)` em divisores verticais `1px` de rodapé.

## 2. Tipografia Condensada Monumental & Escala Proporcional de Cinema (`--u`)
- **Display Principal:** `Antonio` (peso `400`, ultra-condensada, `158u` no desktop -> `clamp(64px, 19vw, 96px)` no mobile, `line-height: 0.92`, `tracking: -0.012em`, `white-space: nowrap` no desktop).
- **UI & Navegação:** `Manrope` (pesos `400–500`), links em `14.5u` caixa alta com `letter-spacing: 0.16em` e logo em `26u tracking -0.02em`.
- **Unidade Cinemática `--u`:** `--u: min(calc(100vw / 1600), calc(100vh / 900))` em telas maiores que `820px`, travando toda a composição visual na proporção exata de tela de cinema `1600x900` independente do monitor; abaixo de `820px` vira `1px` com regras responsivas explícitas.

## 3. Arquitetura de Camada Não-Bloqueante Sobre Canvas WebGL + Áudio
- **Layering Limpo:** `#valley` fixo em `inset: 0` recebe cliques/scroll/mouse livremente para mover a câmera 3D e dispersar partículas; a camada `.ui` acima fica em `pointer-events: none` e só reativa `pointer-events: auto` em links (`a`) e botões (`button`).
- **Acoplamento Sensorial Dual (Hover CTA = Física 3D + Filtro de Áudio):** Passar o mouse sobre o CTA principal `.go` freia suavemente a trajetória da câmera (`startHoverTransition()`), dispersa os pontos em partículas flutuantes e aplica filtro *low-pass* abafando o áudio ambiente; retirar o mouse reverte tudo organicamente.
- **Loader Mínimo & Reveal Pós-Intro:** Tela preta com um único ponto creme pulsante (`9u`), que some em `1s` quando os chunks 3D terminam; a interface inteira entra de `opacity: 0` para `1` em `1.6s` após a conclusão da intro da câmera.
