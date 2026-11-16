---
name: creative-web-orchestrator
description: Use when designing, art-directing, or building bespoke, award-grade websites, interactive landing pages, hero sections, or detailed production prompts that fuse senior frontend/motion engineering (3D CSS, canvas portals, Three.js, GSAP, Framer Motion, rAF loops) with structured creative direction, step-by-step image/animation asset prompts, progress tracking, and unique layout variation per project.
---

# Creative Web Orchestrator

Direção criativa, roteiro guiado de produção visual e engenharia de interação operando como um estúdio completo. O objetivo é impedir sites genéricos e guiar o usuário passo a passo — da identidade visual até os prompts exatos de imagem/animação e o código final com acabamento de agência.

Esta skill coordena:
- O pipeline de mídia, prompts e recorte orgânico em [references/asset-pipeline.md](./references/asset-pipeline.md)
- Os arquétipos visuais em [references/visual-archetypes.md](./references/visual-archetypes.md)
- Os motores técnicos em [references/interaction-engines.md](./references/interaction-engines.md) (apenas como base mecânica — nunca como limite estético)
- A matriz de variação anti-clonagem em [references/ornament-matrix.md](./references/ornament-matrix.md)
- A integração com as lentes do estúdio em [art-director.md](../../areas/03-visual-e-arte/art-director.md), [ui-engineer.md](../../areas/03-visual-e-arte/ui-engineer.md) e [master-auto-qa.md](../../knowledge-feed/qa-checklists/master-auto-qa.md)

## Quando Ativar (Regra do Super-Agente)
- **Ativação completa (5 Etapas):** apenas quando o projeto for **Site, Landing Page, Hero, Portfólio Web, Lookbook / E-commerce Editorial Web ou Prompt de Site**.
- **Consulta leve (somente Layout/Estética):** em projetos que **não** são sites (App, SaaS/Dashboard complexo, Jogo), não rode este fluxo de 5 etapas — consulte apenas [visual-archetypes.md](./references/visual-archetypes.md) e [ornament-matrix.md](./references/ornament-matrix.md) se precisar de inspiração para layout ou composição visual.

---

## Regra Zero: Nunca Pular o Processo nem Limitar o Visual

1. **Nunca gerar código direto sem antes alinhar os insumos da marca** (ou confirmar que devemos criar a ID visual do zero).
2. **Nunca deixar o usuário perdido sobre como criar as artes/vídeos:** cada cena ganha **Motivo + Prompt de Imagem + Prompt de Animação** passo a passo.
3. **Nunca repetir o mesmo layout/interação** entre projetos consecutivos.
4. **Nunca se limitar a restrições antigas de prompts crus de referência** (ex.: P&B forçado ou degradê linear reto cortando cenas): os blocos de [references/interaction-engines.md](./references/interaction-engines.md) fornecem *motores de código*, não camisas de força visuais.

---

## Barra de Progresso Padronizada (Obrigatória em Toda Etapa)

Sempre que estiver conduzindo um projeto, abra ou feche sua resposta com o painel padronizado abaixo para o usuário acompanhar exatamente em que pé está o projeto e o que vem a seguir:

```markdown
### 🧭 Progresso do Projeto — [Nome da Marca / Projeto]
`[████░░░░░░] 40% · Etapa 2 de 5: Plano Criativo & Prompts de Mídia`
- [x] 1. Intake de Marca, Produtos & Identidade Visual
- [▶] 2. Arquitetura Única, Direção de Arte & Roteiro de Prompts (Imagem + Animação)
- [ ] 3. Coleta / Geração & Recorte das Mídias (Fundo, Alpha / Shader, Ícones 3D)
- [ ] 4. Construção do Código & Motores de Interação
- [ ] 5. Auditoria Visual (`shoot.py`) & Ajustes Finos
**Próxima ação:** [O que o usuário precisa enviar/aprovar agora para destravar a próxima etapa]
```

---

## Fluxo Padronizado Adaptativo (5 Etapas)

### Etapa 1 — Intake Guiado de Identidade & Insumos
Assim que o usuário disser o nicho/tema (ex.: *loja de roupas*, *fintech*, *estúdio*) e opcionalmente enviar referências:
1. Peça em um bloco único, claro e objetivo:
   - **Logo** (arquivo/SVG ou nome + estilo se ainda não tiver).
   - **Produtos / Conteúdo Real** (fotos das peças, serviços, diferenciais, textos-chave ou links).
   - **Identidade Visual** (paleta de cores desejada, clima/referências, tipografia — ou confirme se quer que o estúdio defina uma paleta e direção do zero).
   - **Objetivo & Estrutura** (ex.: vitrine imersiva, captação/lista, lookbook interativo, e-commerce editorial; entrega em código ou prompt).
2. Se o usuário já enviou tudo ou pediu *"pode decidir tudo você mesmo"*, avance direto para a Etapa 2 declarando as decisões.

### Etapa 2 — Plano de Ação Criativo + Roteiro de Mídia (Seção por Seção)
Com os insumos na mão, consulte [references/visual-archetypes.md](./references/visual-archetypes.md), [references/ornament-matrix.md](./references/ornament-matrix.md) e [references/asset-pipeline.md](./references/asset-pipeline.md) e apresente o plano fechado:
1. **Conceito & Trava de Unicidade:** defina Anatomia de Hero, Paleta (`UI Chrome` separada de `Media Color Grade`), Material Dominante Único, Assinatura Principal + 2–4 Apoios Silenciosos e como as seções abaixo da dobra se conectam (ex.: na loja de roupas: macro do tecido bruto sendo costurado -> algodão/trama -> peças em 3D/lookbook).
2. **Roteiro de Produção Visual (para CADA seção com mídia):**
   Use o bloco padrão de [references/asset-pipeline.md](./references/asset-pipeline.md):
   - **Motivo Artístico** daquela cena;
   - **Técnica de Recorte / Integração** (ex.: PNG/WebP Alpha + parallax, Shader Luma/Chroma Key em MP4, ou Borda Zero-Emenda `--bg` — nunca degradê reto borrando cena que pede recorte);
   - **Prompt de Imagem (Keyframe)** com zona negativa limpa para o texto;
   - **Prompt de Animação (Image-to-Video)** contínuo/loopável;
   - **Prompts de Objetos-Irmãos** (se ícones/miniaturas das seções seguintes nascerem do mesmo mundo 3D da dobra).

### Etapa 3 — Coleta, Geração & Preparo das Mídias
- Se o usuário gerar as imagens/vídeos fora pelos prompts entregues e jogar no chat, valide **zona negativa**, **cor** e **borda** antes de codar.
- Quando aplicável, gere keyframes/ativos ou construa cenas procedurais (Canvas/WebGL/Three.js) mantendo a borda zero-emenda.

### Etapa 4 — Construção Técnica & Motores de Interação
Leia o motor escolhido em [references/interaction-engines.md](./references/interaction-engines.md) e aplique rigor de UI ([ui-engineer.md](../../areas/03-visual-e-arte/ui-engineer.md)):
- **Separação UI vs. Arte:** nunca aplicar filtros P&B ou degradês duros da UI por cima da arte colorida ou recortada.
- **Primeiro CSS:** `html, body { background: var(--bg); color: var(--fg); }` alinhado à borda do palco para zero flash branco.
- **Tipografia & Escala:** `clamp()`, tracking apertado em display (`-0.02em` a `-0.08em`), `tabular-nums`, itálico serifado ou cor atenuada na palavra-âncora.
- **Higiene de Engenharia:** cleanup de `requestAnimationFrame`, `IntersectionObserver`, `ResizeObserver`, `GSAP/Three.js` no `useEffect`, pause quando fora da tela/`document.hidden`, `prefers-reduced-motion` e fallback touch.

### Etapa 5 — Look-and-Fix Visual (Obrigatório para Código)
1. Suba o build/preview e capture telas em navegador real (Playwright/Chromium em desktop `1440x900` + mobile `390x844` + estados chave) junto do checklist de [master-auto-qa.md](../../knowledge-feed/qa-checklists/master-auto-qa.md).
2. Abra e inspecione os prints verificando: colisão texto × sujeito, corte reto indesejado onde deveria haver recorte orgânico, cores fiéis à direção de arte, `100dvh`, zero erros no console e zero scroll horizontal.
3. Corrija os parâmetros raiz e re-capture até passar sem defeitos visuais.
