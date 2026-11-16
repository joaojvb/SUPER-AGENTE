# Checklist Mestre de Auto-QA Triplo (Funcional, Visual e Áudio)

Antes de entregar qualquer código, tela ou sistema ao usuário, o **Super-Agente** deve passar esta peneira no `thinking` e corrigir qualquer falha encontrada antes de responder.

---

## 1. Peneira Funcional (`QA_FUNC` + `SEC_APPSEC`)
- [ ] **Anti-Spam de Clique:** Se o usuário clicar 20 vezes rápido no botão principal, o sistema ignora os cliques extras ou trava o botão durante a ação?
- [ ] **Estados Completos:** A tela tem tratamento real para **Lista Vazia (Empty State)**, **Carregando (Loading)**, **Sucesso** e **Erro**?
- [ ] **Inputs Extremos:** Campos de texto ou número tratam valores vazios, espaços em branco, números negativos (`-1`) e textos longos sem quebrar?
- [ ] **Persistência Segura:** Qualquer uso de `localStorage` ou `JSON.parse` está protegido dentro de `try/catch` com valor padrão de segurança?
- [ ] **Zero Erros de Referência:** Todas as variáveis, IDs de elementos DOM e funções chamadas realmente existem no código?

## 2. Peneira Visual e Cosmética (`QA_VISUAL` + `ART_DIRECTOR` + `UI_ENGINEER`)
- [ ] **DNA Visual Ativo:** A tela segue a regra **60-30-10** de cores e tem personalidade real (sem cara genérica de template branco/roxo sem alma)?
- [ ] **Responsividade 320px a 4K:** Em telas de celular (`320px`), os botões e cards quebram de linha sem gerar barra de rolagem horizontal e sem cortar texto?
- [ ] **Alinhamento e Ritmo (Grid 4px/8px):** Todos os espaçamentos (`padding`/`gap`) são consistentes e nenhum texto encosta na borda do card?
- [ ] **Estabilidade de Números:** Contadores, relógios e valores usam `font-variant-numeric: tabular-nums` para não fazer a tela tremer pros lados?
- [ ] **Z-Index e Camadas:** Modais, alertas e partículas aparecem na camada correta sem ficarem cortados ou escondidos atrás de outros painéis?

## 3. Peneira de Áudio e Performance (`QA_AUDIO` + `QA_PERF`)
- [ ] **Zero Arquivos Fantasmas:** Os sons usam síntese nativa (`WebAudio API`) ou arquivos 100% confirmados (nunca caminhos `.mp3` que dão erro 404)?
- [ ] **Zero Estalos (Pop/Click):** Todo som sintetizado termina com rampa suave de volume até `0.0001` antes do `.stop()`?
- [ ] **Humanização Sonora:** Sons repetitivos têm leve variação automática de tom (*pitch* `±5%`) e limite de polifonia para não irritar nem estourar o volume?
- [ ] **Zero Loop Órfão e Memory Leak:** Fechar uma janela ou reiniciar a ação cancela imediatamente timers (`clearTimeout`), animações (`cancelAnimationFrame`) e sons contínuos?

---

## Regras Extras Absorvidas pelo Uso
- **Proibido "Caixa Retângulo Arredondado Genérica" no Hero:** Nunca empilhar cards/caixinhas arredondadas fechadas sobre a arte principal do Hero (visual clichê de SaaS barato). Em vitrines/showcases, a logo/elemento 3D deve **flutuar livre em espaço aberto** (zero borda/fundo de card ao redor), usando seletores de linha (*hairlines*) e métricas em rodapé estrutural dividido por linhas de `1px`, mantendo geometria arquitetônica firme (`2px–6px`) em vez de tudo `rounded-full` / `20px`.
<!-- A IA adiciona automaticamente aqui qualquer novo erro ou preferência que você apontar no chat -->
