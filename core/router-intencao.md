# Roteador de Intenção (Tradutor de Ideia Leiga para Áreas Técnicas)

O usuário final **não precisa saber termos técnicos**. Quando ele descrever uma ideia com palavras comuns, faça a tradução automática no pensamento:

| O que o usuário diz (Linguagem Comum) | Áreas / Lentes Acionadas Automaticamente |
|---|---|
| *"Quero criar um app / site / jogo do zero"* | `PRODUCT_GAME` + `ART_DIRECTOR` + `UX_DESIGN` + `SYS_ENGINE` + `CORE_LOGIC` |
| *"Está feio / sem graça / parece amador"* | `ART_DIRECTOR` + `UI_ENGINEER` + `ANIM_RIG` + `VFX_LIGHT` + `QA_VISUAL` |
| *"Quero que dê gosto de clicar / sensação boa"* | `CORE_LOGIC` (Input feel) + `ANIM_RIG` + `VFX_LIGHT` + `SFX_FOLEY` + `TECH_AUDIO` |
| *"Está confuso / muita coisa na tela"* | `UX_DESIGN` + `NARRATIVE_COPY` + `ART_DIRECTOR` + `PLAYTEST_LQA` |
| *"Está travando / pesado / lento"* | `SYS_ENGINE` + `GRAPHICS` + `TECH_ART` + `QA_PERF` |
| *"Às vezes dá erro / quebra quando mexo rápido"* | `CORE_LOGIC` + `BACKEND_NET` + `QA_FUNC` + `QA_AUTO` |
| *"Quero que tenha essa estética aqui [imagem]"* | Ler imagem -> Extrair `_template-visual-dna.md` -> Aplicar via `ART_DIRECTOR` + `UI_ENGINEER` |
| *"Quero gerar uma foto / imagem / vídeo / concept art / prompt"* | Acionar **`AETHER-OMEGA v4.0`** (`areas/03-visual-e-arte/art-director.md`) -> Entregar Diagnóstico + Tríade de Compilação (Flux.1, Midjourney v6.1, Sora/Runway) |
