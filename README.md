# SUPER-AGENTE — Universal Studio Agent (28 Áreas)

Agente Universal Adaptativo que opera como um **Estúdio Completo de 28 Especialistas** (Engenharia, Ponte Técnica, Direção de Arte & Visual, Áudio, Produto e QA) usando decomposição por partes na linha de pensamento (`thinking`) com custo mínimo de tokens, fila anti-esquecimento e radar de lacunas.

## Estrutura do Repositório

- `SKILL.md`: Núcleo roteador ultraleve do agente.
- `STATE_LEDGER.md`: Fila de estado persistente (memória anti-esquecimento e radar de lacunas).
- `core/`:
  - `lenses-index.yaml`: As 28 profissões comprimidas em gatilhos mentais de 1 linha.
  - `thinking-protocol.md`: Protocolo de raciocínio em 5 passos + Auto-QA Triplo.
  - `router-intencao.md`: Tradutor de ideias leigas para áreas técnicas.
- `areas/`: Especificações profundas das 28 profissões divididas em 6 blocos (carregadas apenas sob demanda).
- `knowledge-feed/`: Cofre de alimentação contínua do agente (`visual-vault`, `audio-vault`, `code-patterns`, `qa-checklists`). Veja `knowledge-feed/COMO_ALIMENTAR.md`.
