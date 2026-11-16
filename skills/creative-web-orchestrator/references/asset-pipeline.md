# Pipeline de Mídia, Prompts & Recorte Orgânico

Guia prático para impedir que um site saia "preto e branco genérico com faixa de degradê reto" e para guiar o usuário passo a passo na produção das artes de cada seção.

---

## 1. Por Que os Prompts Crus Falham (Lição do Teste Mindloop)

Ao comparar uma referência rica (ilha 3D colorida com silhueta recortada flutuando sobre névoa azul) contra um prompt literal de código:
1. **Contaminação Monocromática:** escrever "monochrome #000/#fff" no bloco global faz o gerador dessaturar a mídia ou descartar a atmosfera colorida. **Regra:** separe sempre `UI Chrome` (tipografia, bordas, botões) de `Media Color Grade` (cores controladas, iluminação e materiais da cena).
2. **Colisão Texto × Sujeito:** usar `justify-center` joga a headline e o input em cima do objeto focal da mídia. **Regra:** reserve explicitamente a **zona negativa** no prompt da imagem (ex.: "top 38% empty deep-black sky for typography; subject anchored in lower 62%").
3. **O Degradê Reto (`bg-gradient-to-t from-black`) vs. Recorte Orgânico Real:** MP4 padrão não tem canal alfa universal. Aplicar um degradê linear por cima apenas cria uma faixa preta reta cortando o cenário, matando o efeito de "ilha/terreno recortado invadindo a próxima seção".

---

## 2. As 4 Soluções Técnicas para Recorte Orgânico Real (Zero Faixa Reta)

Sempre que a arte precisar ter **borda recortada orgânica** (ilha flutuante, terreno botânico, tecido costurado, peça de roupa, objeto 3D sobre fundo atmosférico):

| Solução | Como Funciona na Prática | Quando Escolher |
|---|---|---|
| **1. Camada Alpha + Parallax (`PNG`/`WebP` Transparente)** | Gera-se a cena/ilha/produto com fundo isolado, remove-se o fundo para canal alfa real (`z-10`), e coloca-se a névoa/estrelas/shader vivo atrás (`z-0`). A borda inferior de musgo, fios ou rocha recorta de verdade sobre a seção abaixo. Animado com flutuação sutil, parallax de ponteiro e partículas no `<canvas>`. | Melhor custo-benefício para **ilhas flutuantes, terrenos e peças de produto** com silhueta recortada perfeita. |
| **2. Vídeo MP4 + Shader Luma/Chroma Key (`<canvas>` / WebGL)** | O vídeo é gerado sobre fundo preto puro (`#000`) ou chroma limpo; um `<canvas>` 2D/WebGL lê os frames do `<video>` em tempo real e transforma o fundo em transparência (`alpha`) por luminância/cor com `smoothstep` na borda. | Quando o elemento recortado **precisa ter vídeo em movimento** (tecido balançando, agulha costurando, fumaça, água) flutuando sobre outro fundo colorido ou sobre a próxima seção. |
| **3. Costura Híbrida (Vídeo Central + Borda Recortada Alpha)** | Um `<video>` looping roda no miolo da cena e uma faixa recortada em `PNG` transparente (`pointer-events-none`) — tirada do último frame/borda da mesma cena — fica sobreposta na base criando a silhueta orgânica saliente para fora do container. | Quando quer vídeo pesado no miolo com borda inferior irregular invadindo a dobra seguinte, sem custo de shader por pixel. |
| **4. Máscara SVG / `clip-path` Orgânica + Glow Atmosférico** | Se a mídia for full-bleed mas não puder ser uma caixa reta, aplica-se `mask-image` com SVG orgânico suave + camada de névoa (`radial-gradient`) no `z-1` atrás do texto da seção seguinte, em vez de faixa preta dura `h-64 bg-gradient-to-t`. | Fallback rápido quando já existe um vídeo pronto sem fundo isolado. |

---

## 3. Formato Padrão do Roteiro de Mídia (Para Entregar ao Usuário)

Para **toda seção** que depender de visual customizado, entregue o bloco padronizado abaixo antes (ou junto) da etapa de montagem:

```markdown
### 🎬 Produção Visual — [Nome da Seção]
- **Motivo Artístico:** [Por que essa cena existe aqui e o que comunica sobre o projeto]
- **Técnica de Recorte / Integração:** [Alpha + Parallax | Vídeo Shader Luma-Key | Borda Zero-Emenda `--bg` | Costura Híbrida]
- **Prompt de Imagem (Keyframe):**
  > [Prompt completo em inglês para máxima fidelidade: sujeito, material, iluminação, paleta de 2-3 tons + 1 destaque, zona negativa limpa onde irá a tipografia, especificação de fundo (#000 puro / chroma / sem texto, 16:9 ou proporção exata)]
- **Prompt de Animação (Image-to-Video):**
  > [Prompt completo: movimento único contínuo, câmera lenta/locked, o que se move na cena, o que fica parado na zona de texto, 24fps, loop suave ou transição]
- **Ativos Derivados (Continuidade de Mundo):** [Se objetos desta cena virarão ícones/miniaturas 3D na seção seguinte, listar os prompts isolados aqui]
```

---

## 4. Diretriz Anti-Engessamento para Prompts de Referência

Os 9 núcleos de [interaction-engines.md](./interaction-engines.md) são **doadores de mecânica técnica** (lógica de loop rAF, matemática do cilindro 3D, projeção de portal em canvas, scroll-opacity, `.liquid-glass`, sprite-sheet crop). **Nunca** copie cegamente:
- restrições de cor P&B quando o projeto pede atmosfera colorida;
- faixas de `bg-gradient-to-t` retas onde o layout pede silhueta recortada;
- layouts engessados onde o nicho exige uma anatomia nova.
