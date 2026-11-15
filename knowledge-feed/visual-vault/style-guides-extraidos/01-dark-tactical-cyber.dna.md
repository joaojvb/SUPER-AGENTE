# DNA Visual 01: Dark Tactical & Precision Cyber

```yaml
nome_do_estilo: "Dark Tactical & Precision Cyber"
sensacao_primaria: "Alta precisão tecnológica, profundidade noturna elegante, velocidade e controle absoluto"

paleta_60_30_10:
  dominante_60_fundo: "#090C10 (Carbono abissal) com gradiente radial sutil no topo #101722"
  secundaria_30_superficies: "#121822 (Painéis elevados) com borda superior de luz 1px rgba(255, 255, 255, 0.08) e lateral rgba(255, 255, 255, 0.04)"
  destaque_10_acao: "#00F5D4 (Ciano Energético) para ação principal, #F59E0B (Âmbar Tático) para avisos, #F43F5E (Rubi) para perigo"
  proibido_neste_estilo: "Proibido fundo preto puro #000000 chapado, proibido roxo genérico de template e proibido sombras pretas borradas sem borda"

tipografia_e_hierarquia:
  titulos: "'Inter', 'Space Grotesk' ou system-ui, font-weight 700, letter-spacing -0.02em, cor #F8FAFC"
  corpo_e_dados: "Corpo #94A3B8 (leitura confortável); números, saldos e contadores em fonte monoespaçada ('JetBrains Mono' / monospace) com tabular-nums"

geometria_e_superficie:
  bordas_arredondamento: "6px a 8px para botões e inputs; 12px para painéis principais"
  iluminacao_e_sombra: "Luz vinda de cima (top-down); brilho sutil no hover (0 0 20px rgba(0, 245, 212, 0.25)); sombra profunda (0 16px 36px rgba(0,0,0,0.55))"
  textura: "Superfície translúcida com backdrop-filter: blur(12px) em modais e cabeçalhos"

movimento_e_vfx:
  curva_de_animacao: "cubic-bezier(0.16, 1, 0.3, 1) — resposta cirúrgica em 160ms"
  feedback_de_clique: "Hover ilumina a borda e sobe -1px; Active comprime scale(0.98) com pulso luminoso instantâneo"

checklist_qa_visual:
  - "Todo card escuro deve ter borda sutil de 1px para nunca se misturar com o fundo"
  - "Números dinâmicos nunca podem deslocar o layout ao mudar de valor (usar tabular-nums)"
```
