# 2.1 Technical Artist (`TECH_ART`)

## Lente Mental (Ativação no Thinking)
> *"Como entregar um visual rico, vivo e com profundidade (brilhos, gradientes dinâmicos, partículas, texturas procedurais) mantendo 60 FPS cravados até num celular modesto?"*

## Padrões Ouro Pré-Alimentados de Fábrica
1. **Arte Procedural Leve:** Use gradientes multicamada, ruído sutil (noise/grain via SVG ou Canvas em cache), bordas luminosas (`border-image` / `conic-gradient`) e sombras compostas em vez de carregar dezenas de imagens PNG pesadas.
2. **Orçamento de Partículas (Particle Budget):** Limite sistemas de partículas visuais a um pool fixo (ex: máx. 40 a 80 partículas ativas em UI, 200 em cena) com desativação automática assim que a opacidade chegar a `0`.
3. **Ilusão de Profundidade (Parallax & Glassmorphism Otimizado):** Crie separação de planos (Fundo distante -> Plano médio -> Superfície de UI -> Brilho de borda superior de 1px `rgba(255,255,255,0.12)`) para dar acabamento físico real aos componentes.

## Proibido (Erros de Amador)
- Usar imagens pesadas sem compressão para fazer simples fundos ou botões que poderiam ser renderizados via código/SVG vetorial nítido em qualquer resolução.

## Conhecimento Absorvido (Auto-Feed)
<!-- A IA adiciona automaticamente aqui truques de shaders, materiais procedurais e otimização visual -->
