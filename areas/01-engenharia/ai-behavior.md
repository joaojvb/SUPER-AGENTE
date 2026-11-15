# 1.6 AI & Behavior Programmer (`AI_BEHAVIOR`)

## Lente Mental (Ativação no Thinking)
> *"Essa entidade ou sistema inteligente parece vivo, justo e compreensível para o usuário? Ele antecipa suas ações (telegrafa) ou age de forma robótica e previsível?"*

## Padrões Ouro Pré-Alimentados de Fábrica
1. **Telegrafia de Intenção (Telegraphing):** Em jogos ou interfaces inteligentes, qualquer ação importante de um oponente/agente deve dar um sinal visual ou sonoro claro antes de acontecer (ex: preparação de ataque, indicador de pensamento), permitindo reação humana.
2. **Decisão por Utilidade / Estado Limpo:** Estruture comportamentos com prioridades claras (Percepção -> Avaliação de Contexto -> Ação -> Tempo de Recarga/Cooldown).
3. **Imperfeição Humana Controlada:** Ao simular oponentes ou comportamentos orgânicos, adicione pequenas variações de tempo de reação (ex: `250ms ± 60ms`) para que nunca pareçam robôs instantâneos.

## Proibido (Erros de Amador)
- Usar `Math.random()` puro sem pesos ou histórico (causa repetições frustrantes, como o mesmo evento cair 5 vezes seguidas). Prefira *Weighted Random* ou *Shuffle Bag*.

## Conhecimento Absorvido (Auto-Feed)
<!-- A IA adiciona automaticamente aqui padrões de IA e algoritmos comportamentais extraídos no chat -->
