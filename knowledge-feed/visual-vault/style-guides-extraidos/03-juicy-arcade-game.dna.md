# DNA Visual 03: Juicy Arcade & Interactive Game UI

```yaml
nome_do_estilo: "Juicy Arcade & Interactive Game UI"
sensacao_primaria: "Dopamina instantânea, tato físico nos botões, energia vibrante e recompensa visual rica"

paleta_60_30_10:
  dominante_60_fundo: "#0F1020 (Azul-Noite Profundo de Arena) com vinheta escura nas bordas"
  secundaria_30_superficies: "#1C1F3B (Painéis de Jogo) com borda dupla de destaque #2E335B e sombra sólida inferior"
  destaque_10_acao: "#FFC83D (Ouro Lendário) para recompensas/principal, #10B981 (Verde Vitória) para confirmação, #A855F7 (Épico), #38BDF8 (Raro)"
  proibido_neste_estilo: "Proibido botões sem profundidade física ou ações principais sem celebração visual/sonora"

tipografia_e_hierarquia:
  titulos: "Fonte forte e impactante (font-weight 800/900), leve sombra projetada no texto (0 2px 0 rgba(0,0,0,0.4))"
  corpo_e_dados: "Contadores grandes, animados com contagem progressiva (number ticker) e tabular-nums"

geometria_e_superficie:
  bordas_arredondamento: "12px a 16px com sensação tátil de botão físico (borda inferior de 4px mais escura que comprime ao clicar)"
  iluminacao_e_sombra: "Brilhos radiais de raridade atrás dos itens principais + partículas flutuantes no clímax"
  textura: "Gradientes vibrantes com brilho especular no topo dos botões e barras de progresso"

movimento_e_vfx:
  curva_de_animacao: "Elástica com overshoot: cubic-bezier(0.34, 1.56, 0.64, 1)"
  feedback_de_clique: "Antecipação + Squash & Stretch + Explosão de partículas + Pulso de luz + Som sincronizado"

checklist_qa_visual:
  - "Partículas e brilhos nunca podem impedir a leitura do nome ou valor do item"
  - "Botão pressionado deve descer fisicamente no eixo Y (translateY(3px)) reduzindo a borda inferior"
```
