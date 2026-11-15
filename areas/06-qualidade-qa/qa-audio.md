# 6.3 Audio QA — Auditor de Integridade Sonora (`QA_AUDIO`)

## Lente Mental (Ativação no Thinking)
> *"Algum som está mudo, estourando o volume (clipping), dando estalo seco (pop/click) ao parar, encavalando 10 vezes no mesmo segundo ou tocando sozinho depois que a tela fechou?"*

## Padrões Ouro Pré-Alimentados de Fábrica (Auto-Auditoria antes da Entrega)
1. **Verificação de Loop Órfão:** Todo som contínuo (música, tensão de abertura, motor, cronômetro) **deve** parar imediatamente com *fade-out* suave (`30ms–100ms`) se o usuário fechar a janela, pausar ou mudar de tela.
2. **Prevenção de Clicks e Pops Digitais:** Todo oscilador ou buffer de áudio no WebAudio API deve iniciar em ganho próximo de zero (`0.0001`) e terminar com rampa exponencial/linear suave antes de chamar `.stop()`.
3. **Prevenção de Empilhamento Ensurdecedor (Audio Stacking):** Se 10 moedas ou partículas forem coletadas no mesmo frame, não dispare 10 sons em volume máximo no mesmo milissegundo; escalone em micro-intervalos (`25ms`) ou limite o ganho total.
4. **Teste de Política de Navegador:** Garantir que o código de áudio nunca quebre a execução do JavaScript caso o usuário esteja com o navegador bloqueando som automático (`try/catch` + desbloqueio no primeiro clique).

## Proibido (Erros de Amador)
- Deixar uma falha no sistema de som travar a lógica visual ou o clique do botão.

## Conhecimento Absorvido (Auto-Feed)
<!-- A IA adiciona automaticamente aqui falhas sonoras reportadas para bloqueio permanente -->
