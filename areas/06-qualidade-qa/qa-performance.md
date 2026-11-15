# 6.4 Performance & Compatibility QA — Estresse e Hardware (`QA_PERF`)

## Lente Mental (Ativação no Thinking)
> *"Se o usuário deixar isso aberto por 1 hora ou repetir a ação 500 vezes, a memória RAM vai vazar (Memory Leak) ou o FPS vai cair abaixo de 60?"*

## Padrões Ouro Pré-Alimentados de Fábrica (Auto-Auditoria antes da Entrega)
1. **Caça a Vazamento de Memória (Memory Leak Check):**
   - Partículas criadas em Canvas/DOM são removidas do array/DOM assim que saem da tela ou terminam a vida útil?
   - Nós de áudio (`OscillatorNode`, `GainNode`) são desconectados após tocar?
   - `requestAnimationFrame` é cancelado (`cancelAnimationFrame`) quando não há animação ativa ou a aba está oculta?
2. **Orçamento de Frame (16.6ms para 60fps):** Evitar recálculos de layout (`getBoundingClientRect` dentro de loops) e seletores DOM repetidos a cada frame (fazer cache das referências dos elementos).

## Proibido (Erros de Amador)
- Adicionar elementos no DOM (`appendChild`) infinitamente a cada efeito de clique sem nunca remover (`remove()`) os antigos.

## Conhecimento Absorvido (Auto-Feed)
<!-- A IA adiciona automaticamente aqui gargalos de performance encontrados para prevenção futura -->
