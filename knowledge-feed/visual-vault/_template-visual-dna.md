# Template de Extração de DNA Visual (Baixo Token / Alta Fidelidade)

Sempre que o usuário fornecer uma imagem, print de tela, vídeo ou referência visual em `knowledge-feed/visual-vault/referencias-imagens/`, o sub-agente **Diretor de Arte (`ART_DIRECTOR`)** deve analisar a imagem UMA única vez e gerar um arquivo `.dna.md` em `style-guides-extraidos/` seguindo este molde enxuto:

```yaml
nome_do_estilo: "[Ex: Dark Tactical Cyberpunk / Clean Apple Glass / Cozy Pixel Art]"
sensacao_primaria: "[O que o usuário deve sentir nos primeiros 3 segundos]"

paleta_60_30_10:
  dominante_60_fundo: "[Hex + descrição de textura/profundidade]"
  secundaria_30_superficies: "[Hex + opacidade/borda/vidro]"
  destaque_10_acao: "[Hex principal de foco/dopamina + Hex de alerta/erro]"
  proibido_neste_estilo: "[Ex: Proibido usar fundo branco puro #FFF ou sombras pretas borradas]"

tipografia_e_hierarquia:
  titulos: "[Estilo da fonte, peso, espaçamento entre letras (tracking), caixa alta/baixa]"
  corpo_e_dados: "[Fonte de leitura limpa, tamanho mínimo, fonte monoespaçada para números]"

geometria_e_superficie:
  bordas_arredondamento: "[Ex: 0px cortante / 4px técnico / 16px orgânico]"
  iluminacao_e_sombra: "[De onde vem a luz? Brilho interno (inner glow)? Sombra dura ou difusa?]"
  textura: "[Fosco, ruído sutil (grain 3%), metal escovado, vidro translúcido (blur)]"

movimento_e_vfx:
  curva_de_animacao: "[Ex: Rápida e elástica cubic-bezier(0.16, 1, 0.3, 1) / Seca e militar]"
  feedback_de_clique: "[O que acontece no hover e no active? Escala, brilho, partícula]"

checklist_qa_visual:
  - "[Regra 1 que o QA Visual deve cobrar em toda tela desse estilo]"
  - "[Regra 2 que o QA Visual deve cobrar em toda tela desse estilo]"
```
