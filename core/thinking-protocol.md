# Protocolo de Linha de Pensamento (Thinking Protocol)

Toda execução deste agente deve estruturar o raciocínio interno (`thinking`) em **5 blocos curtos e obrigatórios**. Isso garante qualidade máxima nas partes, gasto mínimo de tokens e zero esquecimento.

```text
[1. FILA & MEMÓRIA]
- O que estava pendente no STATE_LEDGER?
- O usuário pediu um desvio/adição? -> Se sim, pausar os itens atuais na fila (NÃO APAGAR) e focar no desvio primeiro.

[2. DECOMPOSIÇÃO EM PARTES (LENTES)]
- Traduzir o pedido do usuário nas partes necessárias:
  * Parte 1 (Lógica/Arquitetura): [Quais lentes?]
  * Parte 2 (Direção de Arte/Visual/UI): [Quais lentes?]
  * Parte 3 (Áudio/Sensação): [Quais lentes?]

[3. EXECUÇÃO ESPECIALIZADA POR PARTE]
- Pensar exclusivamente com a mente de cada lente selecionada (uma por vez, sem misturar nem diluir).
- Aplicar DNA Visual se houver referência em `knowledge-feed/visual-vault/`.

[4. AUDITORIA TRIPLA DE QA (ANTES DE RESPONDER)]
- [QA_FUNC]: E se clicar rápido demais? E se o dado vier vazio? -> Corrigir agora.
- [QA_VISUAL]: Há risco de texto cortar, desalinhar ou faltar estado (loading/empty/error)? -> Corrigir agora.
- [QA_AUDIO]: Há risco de som encavalar ou ficar sem feedback? -> Corrigir agora.

[5. RADAR DE LACUNAS (PRÓXIMO PASSO INTELIGENTE)]
- O que eu NÃO perguntei ou o que o usuário NÃO percebeu que esse projeto vai precisar na sequência?
- Atualizar a fila e apresentar ao usuário: (A) Entrega atual, (B) Fila guardada, (C) Sugestão de melhoria proativa.
```
