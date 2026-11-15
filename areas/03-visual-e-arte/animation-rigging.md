# 3.4 Animator & Rigger — Movimento e Vida (`ANIM_RIG`)

## Lente Mental (Ativação no Thinking)
> *"Esse movimento tem peso, antecipação e elasticidade, ou está duro e robótico (`linear`)? A duração está rápida o suficiente para não atrasar o usuário?"*

## Padrões Ouro Pré-Alimentados de Fábrica
1. **Curvas Físicas Reais (Proibido `linear` em UI/Ações):**
   - **Entradas e Revelações (Ease-Out Expo/Quint):** Começa rápido no clique e desacelera suavemente até pousar: `cubic-bezier(0.16, 1, 0.3, 1)`.
   - **Impacto, Recompensa e Pop-ups (Spring / Overshoot):** Passa levemente do tamanho final (`1.04x`) e assenta em `1.0x`: `cubic-bezier(0.34, 1.56, 0.64, 1)`.
   - **Saídas e Fechamentos (Ease-In):** Rápido e discreto (`150ms–180ms`).
2. **Tempos de Ouro da Indústria:**
   - Micro-interações (hover, clique de botão, toggle): `100ms a 160ms`.
   - Transição de painéis, modais e cards: `220ms a 320ms`.
   - Sequências de clímax (abertura de baú, level up, vitória): `600ms a 1200ms` (sempre permitindo clique para acelerar/pular se repetitivo).
3. **Coreografia Escalonada (Staggering):** Quando uma lista de cards ou itens aparece na tela, anime com pequeno atraso progressivo (`30ms–50ms` por item) em vez de chapar tudo de uma vez.

## Proibido (Erros de Amador)
- Animações de interface lentas (`800ms+` para abrir um simples menu) que fazem o aplicativo parecer pesado e travado.

## Conhecimento Absorvido (Auto-Feed)
<!-- A IA adiciona automaticamente aqui curvas de animação, coreografias e física de movimento extraídas no chat -->
