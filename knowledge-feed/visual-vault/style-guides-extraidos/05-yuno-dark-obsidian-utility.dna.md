# DNA Visual Extraído: Yuno Dark Obsidian & Crimson Utility UI (`05-yuno-dark-obsidian-utility`)

> **Fonte Absorvida:** Acervo Pessoal `F:\01\TUDO\Pasted image 20260708211101.png` (`Yuno7 Mem - Otimização em tempo real`) + Arquitetura de Utilitários Desktop de Alta Performance.

## 1. Paleta de Cores (Hex Exatos + Função Semântica)
- **Fundo Principal da Aplicação (`Obsidian Carbon`):** `#0B0A09` — Preto quente quase absoluto, evitando o azulado artificial de temas dark genéricos.
- **Fundo da Sidebar & Painéis Secundários (`Deep Espresso`):** `#0F0D0C` — Separação estrutural por diferença sutil de luminância + borda de `1px solid #221B17`.
- **Superfície de Cards Interativos (`Warm Dark Card`):** `#151210` a `#1A1512` — Cards horizontais limpos com borda `1px solid #2A211B` e hover sutil para `#211A16`.
- **Acento Primário de Identidade & Navegação (`Crimson Pulse`):** `#E11D48` a `#F43F5E` — Usado na barra vertical indicadora de seção (`3px` de largura à esquerda do título da categoria), no indicador lateral da aba ativa, nos ícones de destaque e no preenchimento de pílulas ativas (`rgba(225, 29, 72, 0.14)`).
- **Acento de Estado Ativo / Toggle (`Amber Gold`):** `#F59E0B` — Usado exclusivamente nos *switches* (toggles) ligados e indicadores de otimização ativa em tempo real, criando contraste imediato entre "navegação (vermelho)" e "função ligada (âmbar)".
- **Texto Primário:** `#F5F5F4` (Branco pedra nítido para títulos de funcionalidades e cabeçalhos).
- **Texto Secundário / Descrições Técnicas:** `#78716C` a `#A8A29E` (Cinza quente legível em `12px–13px` explicando exatamente o efeito de cada otimização).

## 2. Geometria de Componentes & Layout Desktop Utility
- **Estrutura de Janela (Frameless / Custom Titlebar):**
  - Barra lateral esquerda fixa (`220px–240px`) com logo no topo, lista de módulos com ícone + rótulo, item ativo com barra vertical vermelha à esquerda (`3px`) e fundo translúcido avermelhado, e rodapé da sidebar com status de licença/expiração.
- **Agrupamento por Seções com Barra Guia:**
  - Cada grupo de configurações é precedido por um título de seção (`15px SemiBold`) acompanhado de uma **barra vertical carmim (`3px x 16px`, `#E11D48`)** à esquerda.
- **Cards de Opção (Switch Rows):**
  - Altura enxuta (`64px–72px`), `border-radius: 10px`, `padding: 14px 18px`, layout `flex` com `justify-content: space-between` e `align-items: center`.
  - Lado esquerdo: Título da opção em destaque (`14px Medium #F5F5F4`) + subtítulo técnico abaixo (`12px Regular #78716C`).
  - Lado direito: Toggle switch compacto (`40px x 22px`, `border-radius: 999px`) — desligado em `#292524` com thumb `#78716C`; ligado em `#F59E0B` com thumb escuro `#0B0A09`.
- **Botão de Ação Global (CTA Principal):**
  - Posicionado no canto inferior direito (`border-radius: 8px`, fundo sólido `#E11D48`, texto branco `#FFFFFF` em peso `600`, sombra difusa `0 4px 18px rgba(225, 29, 72, 0.35)`).
