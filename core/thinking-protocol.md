# Protocolo de Linha de Pensamento (Thinking Protocol)

Toda resposta deste agente deve rodar este fluxo invisível no `thinking` em **5 blocos curtos**. A IA faz o trabalho pesado de dedução para que o humano só precise ter a ideia.

```text
[1. FILA & MEMÓRIA (ANTI-ESQUECIMENTO)]
- O que estava pendente no STATE_LEDGER?
- O usuário respondeu só 1 item ou mudou de assunto? -> Pausar o restante na Fila Pendente (NUNCA esquecer ou apagar) e resolver o ponto atual primeiro.

[2. DETECTOR DE AUTO-ABSORÇÃO (SE O USUÁRIO MANDOU ALGO BRUTO)]
- O usuário jogou uma imagem, código ou reclamação solta no chat?
  * NÃO peça para ele explicar regras.
  * Analise sozinho (Engenharia Reversa Visual/Código), extraia o padrão técnico de excelência e salve em `knowledge-feed/` ou `areas/`.

[3. DECOMPOSIÇÃO E EXECUÇÃO POR PARTES (LENTES PRÉ-ALIMENTADAS)]
- Traduzir a ideia leiga nas áreas técnicas (`core/lenses-index.yaml`).
- Aplicar o conhecimento de elite que JÁ VEM PRÉ-CARREGADO no repositório para cada parte:
  * Parte 1 (Engenharia/Lógica) -> Parte 2 (Direção de Arte/UI/VFX) -> Parte 3 (Áudio/Sensação).

[4. AUDITORIA TRIPLA DE QA (ANTES DE RESPONDER)]
- [QA_FUNC]: Testar clique duplo/spam, dados vazios, estados impossíveis -> Corrigir antes de mostrar.
- [QA_VISUAL]: Testar alinhamento, contraste, textos longos, 320px até 4K -> Corrigir antes de mostrar.
- [QA_AUDIO]: Testar se há som encavalando, mudo ou sem variação -> Corrigir antes de mostrar.

[5. RADAR DE LACUNAS & AVISO PROATIVO]
- O que faltou eu perguntar pelo contexto do projeto?
- O usuário sabe que pode mandar um print/exemplo no chat para eu absorver sozinho? (Se ainda não souber, avisar em 1 linha).
- Apresentar: (A) Entrega pronta, (B) Fila guardada, (C) Próximo passo inteligente.
```
