# Guia Prático: Como Alimentar o Super-Agente (Visual e Não-Visual)

Este diretório (`knowledge-feed/`) é o **tanque de combustível** do seu agente. Tudo o que você coloca aqui refina o cérebro das 28 áreas sem você precisar reescrever o agente principal.

---

## 1. Como Alimentar com IMAGENS (Direção de Arte, UI, UX, VFX, 2D/3D)

### Passo a Passo Prático:
1. **Jogue a imagem na pasta:** Salve qualquer print de tela, interface bonita, paleta de cores, foto de jogo ou referência visual dentro de:
   `knowledge-feed/visual-vault/referencias-imagens/`
   *(Exemplo: `tela-login-futurista.png` ou `hud-rpg-escuro.jpg`)*.
2. **Peça para o Agente absorver:** No chat, basta dizer:
   > *"Absorva as novas imagens da pasta `referencias-imagens`"* (ou mencione a imagem direto no chat com `@caminho/da/imagem.png` dizendo *"Transforme em DNA Visual"*).
3. **O que o Agente faz sozinho:**
   - Ele ativa a mente do **Diretor de Arte (`ART_DIRECTOR`)** e do **UI Engineer (`UI_ENGINEER`)**.
   - Ele lê os pixels da sua imagem UMA única vez (cores exatas em Hex, tipo de sombra, espessura de borda, fonte, clima, contraste) e cria um arquivo de texto super leve (`.dna.md`) dentro de `knowledge-feed/visual-vault/style-guides-extraidos/`.
4. **Como funciona depois nos projetos:**
   - Quando você pedir *"Cria um sistema X usando o estilo futurista"*, o agente **não precisa reler a imagem pesada**. Ele lê o `.dna.md` de 20 linhas em 1 segundo, gasta quase zero tokens e constrói tudo seguindo exatamente aquelas cores, bordas e luzes.

---

## 2. Como Alimentar as Outras Áreas (SEM Imagem)

Para as áreas de **Código, Áudio, Produto/Game Design e QA**, você alimenta com **arquivos de texto (`.md`, `.txt`, `.json`) ou exemplos de código** nas pastas abaixo:

### A) Alimentar Engenharia e Código (`knowledge-feed/code-patterns/`)
* **O que jogar aqui:**
  - Códigos que você achou muito bem feitos (ex: `meu-sistema-login.ts`, `movimentacao-personagem.cs`).
  - Regras de tecnologia que você prefere (ex: *"Sempre usar Tailwind + React + Lucide Icons"*, ou *"Em Python, sempre usar FastAPI e tipagem estrita"*).
* **Como funciona:** Antes de programar, as lentes de **Engenharia (`SYS_ENGINE`, `CORE_LOGIC`, `BACKEND_NET`)** olham essa pasta e imitam o seu padrão de código.

### B) Alimentar Áudio e Som (`knowledge-feed/audio-vault/`)
* **O que jogar aqui:**
  - Descrições ou receitas de som que você gosta (ex: *"Nos meus projetos, cliques de botão devem ser curtos e graves tipo madeira/mecânico, nunca bipes agudos"*).
  - Links/nomes de bibliotecas de som ou scripts de WebAudio API / FMOD.
* **Como funciona:** O **Sound Designer (`SFX_FOLEY`)** e o **Tech Audio (`TECH_AUDIO`)** consultam essa pasta para gerar os sons procedurais ou escolher as frequências certas.

### C) Alimentar Qualidade e Testes (`knowledge-feed/qa-checklists/`)
* **O que jogar aqui:**
  - Qualquer erro ou irritação que você já passou (ex: *"Odeio quando o botão muda de tamanho ao carregar"*, *"Nunca deixe som continuar tocando ao trocar de aba"*).
* **Como funciona:** Os 6 especialistas de **QA (`QA_FUNC`, `QA_VISUAL`, `QA_AUDIO`, `QA_PERF`)** leem essa lista antes de entregar qualquer resposta e bloqueiam o erro antes de você ver.

### D) Alimentar uma Profissão Específica Diretamente (`areas/`)
* Se você encontrar um artigo incrível, um resumo de livro ou uma técnica avançada de uma profissão específica (ex: *Level Design* ou *Segurança*), basta colar no final do arquivo correspondente dentro de `areas/` ou pedir no chat:
  > *"Adicione esta regra dentro do especialista de Direção de Arte / QA Visual: [sua regra]"* — e o próprio agente edita o arquivo certo para você.
