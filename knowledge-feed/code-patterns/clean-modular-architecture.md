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

## Padrões de Código Absorvidos do Usuário (Auto-Feed)
<!-- A IA adiciona automaticamente aqui novos padrões quando você colar códigos de exemplo no chat -->
