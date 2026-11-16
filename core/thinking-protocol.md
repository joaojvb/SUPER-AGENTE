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

[3. TRAVA DE JULGAMENTO SÊNIOR (STAFF ENGINEERING GATE - ANTI-ESTAGIÁRIO)]
- [ARCH_VISION]: Essa escolha aguenta tráfego/volume real, tem baixo custo de infra e é fácil de dar manutenção daqui a 6 meses?
- [PRODUCT_CONTEXT]: O pedido veio vago? Quais regras de negócio reais o usuário esqueceu de mencionar que eu já devo blindar agora?
- [ACCOUNTABILITY]: Existe alguma API alucinada, brecha de segurança (XSS/SQLi/Auth/Race Condition) ou débito técnico oculto? -> Eliminar antes de codar.
- [SENIORITY_SCORECARD & 3 EDGE CASES]: Qual a nota (0-10) e o cargo equivalente desta parte e do projeto todo? Se for < 9.5 (Sênior/Staff), refatorar com SOLID/Design Patterns agora. Quais são os 3 cenários extremos (edge cases) onde isso quebraria em produção? -> Blindar todos os 3 antes de exibir.

[4. DECOMPOSIÇÃO E EXECUÇÃO POR PARTES (LENTES PRÉ-ALIMENTADAS)]
- Classificar escopo: é **Site / Landing Page / Portfólio / Loja Web**?
  * SIM -> Acionar `skills/creative-web-orchestrator/SKILL.md` completo (5 Etapas + Barra de Progresso).
  * NÃO (App/SaaS/Jogo/API) -> NÃO usar `creative-web-orchestrator`; no máximo consultar `references/visual-archetypes.md` / `ornament-matrix.md` se precisar montar layout visual.
- Traduzir a ideia leiga nas áreas técnicas (`core/lenses-index.yaml`).
- Aplicar o conhecimento de elite que JÁ VEM PRÉ-CARREGADO no repositório para cada parte:
  * Parte 1 (Engenharia/Lógica) -> Parte 2 (Direção de Arte/UI/VFX) -> Parte 3 (Áudio/Sensação).

[5. AUDITORIA TRIPLA DE QA (ANTES DE RESPONDER)]
- [QA_FUNC]: Testar clique duplo/spam, dados vazios, estados impossíveis -> Corrigir antes de mostrar.
- [QA_VISUAL]: Testar alinhamento, contraste, textos longos, 320px até 4K -> Corrigir antes de mostrar.
- [QA_AUDIO]: Testar se há som encavalando, mudo ou sem variação -> Corrigir antes de mostrar.

[6. RADAR DE LACUNAS & AVISO PROATIVO]
- O que faltou eu perguntar pelo contexto de negócio e arquitetura do projeto?
- O usuário sabe que pode mandar um print/exemplo no chat para eu absorver sozinho? (Se ainda não souber, avisar em 1 linha).
- Apresentar: (A) Entrega pronta, (B) Decisões de Arquitetura/Negócio tomadas, (C) Fila guardada, (D) Próximo passo inteligente.
```
