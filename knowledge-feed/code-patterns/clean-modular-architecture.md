# Padrões Ouro de Arquitetura de Código Pré-Alimentados

Estas regras são consultadas automaticamente pelas lentes de Engenharia (`SYS_ENGINE`, `CORE_LOGIC`, `TOOLS_PIPE`) ao construir qualquer projeto.

## 1. Estrutura Modular e Guiada por Estado
- **Fonte Única da Verdade (Single Source of Truth):** Mantenha o estado da aplicação/jogo centralizado em um objeto estruturado (`state`) com transições previsíveis, nunca espalhado em variáveis globais soltas ou atributos perdidos no HTML.
- **Separação Limpa em 4 Camadas (Mesmo em Arquivo Único):**
  1. `CONFIG & DATA`: Constantes, tabelas de itens, temas e configurações no topo.
  2. `AUDIO & VFX ENGINE`: Motor autônomo de som procedural e partículas com limpeza automática.
  3. `CORE STATE & LOGIC`: Funções puras de regra de negócio, validações e máquina de estados.
  4. `UI RENDER & EVENTS`: Atualização cirúrgica do DOM/Canvas e delegação de eventos.

## 2. Código Completo e Pronto para Rodar
- **Proibido Truncar Código:** Nunca entregue comentários como `// ... resto do código aqui` ou `// implemente a lógica depois`. Todo arquivo entregue deve ser 100% funcional, completo e testado mentalmente de ponta a ponta.

## Padrões de Código Absorvidos do Usuário (Auto-Feed de `F:\01`)

### 3. Arquitetura Modular de Baixo Nível, Leitura de Memória e Overlay Desktop (`BASE VZX C#`)
> **Fonte Absorvida:** Estrutura de Solução `BASE VZX C#` (`F:\01\{5CA6414A-0383-4464-BF03-1082576110A3}.png`).

Ao construir aplicações Desktop de alta frequência (Overlays transparentes, HUDs táticos, instrumentação de processos em tempo real, treinadores de mira ou utilitários de sistema estilo `Yuno7 Mem`), proibido misturar leitura de memória, cálculo matemático e renderização gráfica na mesma classe. Seguir estritamente o desacoplamento em **7 Módulos de Responsabilidade Única**:

1. **Camada de Acesso ao Sistema e Memória (`Memory.cs` / `GameOffsets.cs` / `Session.cs`):**
   * `Memory`: Encapsula handles de processo, leitura/escrita de buffers (`ReadProcessMemory` / syscalls) e gerenciamento seguro de ciclo de vida de recursos.
   * `GameOffsets`: Centraliza todos os deslocamentos de memória, assinaturas e ponteiros estáticos em um único catálogo configurável (zero *magic numbers* espalhados pelo código).
   * `Session`: Gerencia o estado da sessão ativa, autenticação, anexação ao processo alvo e telemetria de status.
2. **Camada de Ingestão e Estado do Mundo (`GameReader.cs` / `GameWindow.cs` / `TrainingTargets.cs`):**
   * `GameReader`: Loop dedicado de leitura que transforma bytes brutos em estruturas tipadas limpas (entidades, matrizes de visão, estado local).
   * `GameWindow`: Rastreia geometria, resolução, foco e coordenadas da janela alvo (`GetClientRect` / `ClientToScreen`).
3. **Camada de Estabilização Temporal (`FrameSmoother.cs`):**
   * Interpolação, filtragem de jitter e sincronização de quadros para garantir que a leitura assíncrona não gere trepidação visual (*stuttering*) no overlay.
4. **Camada de Solvers Matemáticos e Regiões (`AimLegit.cs` / `AimRegion.cs`):**
   * Cálculo de deltas angulares, curvas de suavização humanizada (*bezier/spring smoothing*), verificação de campo de visão (*FOV check*) e zonas de ativação totalmente isolados da UI.
5. **Camada de Superfície Transparente e Composição (`OverlayForm.cs` / `AlphaSurface.cs`):**
   * `OverlayForm`: Janela *topmost*, *click-through* (`WS_EX_TRANSPARENT | WS_EX_LAYERED`), sincronizada com a janela alvo.
   * `AlphaSurface`: Gerenciamento do buffer gráfico com canal alfa limpo e zero flickering.
6. **Camada de Renderização Visual (`EspRenderer.cs` / `EspColors.cs`):**
   * `EspRenderer`: Primitivas de desenho rápidas (caixas 2D/3D, linhas de esqueleto, barras de status, textos com contorno) consumindo a paleta semântica definida em `EspColors.cs`.
7. **Camada de Controle do Operador (`MainForm.cs`):**
   * Interface de configuração (estilo `05-yuno-dark-obsidian-utility`) separada do loop de renderização do overlay, comunicando-se via estado reativo thread-safe.

### 4. Componentes e Contratos de Alta Resiliência Web (`site.md`)

1. **Loop Contínuo Sem Corte Visível para Vídeos de Fundo (`FadingVideo` / `rAF Time-Monitor`):**
   * Loop nativo HTML `<video loop>` frequentemente dá um tranco visível no corte do último frame. Implementar monitoramento leve via `requestAnimationFrame` ou `timeupdate`: iniciar com `opacity: 0`, fazer fade-in em `500ms` ao `loadeddata`, iniciar fade-out `550ms` antes de `video.duration` e, no evento `ended`, aguardar `100ms` com opacidade zero, zerar `currentTime = 0` e disparar `play()` (ou avançar no array de fontes).
2. **Sincronia Visual-WebGL-Áudio Orientada a Transição (`Hover State Bus`):**
   * Desacoplar a UI HTML (camada `.ui` em `pointer-events: none` com apenas links/botões interativos) da cena pesada de renderização e da engine de som, comunicando intenções via hooks explícitos (`startHoverTransition()` / `stopHoverTransition()`), sem jamais acoplar manipulação do loop 3D dentro de componentes de texto/botão.
3. **Blindagem de Carrinho / Shortlist Local e Validação em Tempo de Execução:**
   * Todo catálogo JSON importado deve passar por validação explícita (ID string, preço finito `>= 0`, variantes com ID seguro e disponibilidade booleana) com mensagens de falha amigáveis em região `aria-live="polite" role="status"`.
   * Toda leitura/escrita em `localStorage` deve ficar envolta em `try/catch`, sanitizando inteiros seguros, limitando quantidades (ex: `1..20`) e teto máximo de itens (ex: `50`).
   * **Regra Anti-Erro Comercial:** Em seleções múltiplas (*"Adicionar look completo"*), nunca chutar ou confirmar silenciosamente o tamanho pré-marcado padrão sem interação explícita do usuário (`dataset.touched`); se faltarem escolhas confirmadas, abrir o seletor do primeiro item pendente e listar os nomes faltantes.

<!-- A IA adiciona automaticamente aqui novos padrões quando você colar códigos de exemplo no chat -->
