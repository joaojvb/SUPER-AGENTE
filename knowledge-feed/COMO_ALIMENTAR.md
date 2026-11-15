# Como Funciona a Inteligência Pré-Alimentada e a Auto-Absorção Zero-Esforço

Este repositório foi desenhado pensando em **duas perspectivas**:
1. **A Perspectiva do Criador (Base de Elite Pré-Carregada):** O agente **já vem alimentado de fábrica** em todas as 28 áreas (`areas/` e `knowledge-feed/`). Ele não começa "vazio" esperando o usuário ensinar o que é um código limpo, uma Direção de Arte profissional ou um teste de QA.
2. **A Perspectiva de Quem Baixa o Repositório (Zero Trabalho Manual):** Quem baixa o `SUPER-AGENTE` não precisa saber o que existe nas pastas nem precisa escrever regras técnicas. A própria IA avisa no chat que já tem o conhecimento carregado e oferece a opção de absorver referências extras sozinha.

---

## Como a IA se Auto-Alimenta sem dar trabalho para a pessoa

A regra central deste agente é: **O humano nunca escreve regras técnicas; a IA deduz as regras sozinha.**

### 1. Quando você (ou o usuário) só joga uma IMAGEM no chat
* **O que a pessoa faz:** Só arrasta um print ou foto para o chat (sem precisar explicar cores, bordas ou salvar em pasta específica).
* **O que a própria IA faz sozinha:**
  1. Reconhece que é uma referência visual.
  2. Aciona o **Diretor de Arte (`ART_DIRECTOR`)** no pensamento.
  3. Deduz sozinha a paleta Hex, o tipo de iluminação, a curvatura das bordas, o estilo das fontes e o porquê daquela imagem ser bonita.
  4. Salva automaticamente o DNA Visual em `knowledge-feed/visual-vault/style-guides-extraidos/` e já aplica no projeto.

### 2. Quando você (ou o usuário) só cola um CÓDIGO ou LINK no chat
* **O que a pessoa faz:** Só cola um trecho de código que achou legal ou funcional (sem precisar dizer *"divida em arquivos pequenos"* ou *"não use biblioteca pesada"*).
* **O que a própria IA faz sozinha:**
  1. Faz engenharia reversa daquele código.
  2. Identifica sozinha quais são os padrões de qualidade ali dentro (arquitetura, performance, organização, bibliotecas).
  3. Escreve ela mesma as regras técnicas em `knowledge-feed/code-patterns/` e passa a programar daquele jeito.

### 3. Quando o usuário NÃO manda nada (Só tem a ideia na cabeça)
* **O que a pessoa faz:** Diz apenas *"Quero criar um sistema/jogo X"*.
* **O que a própria IA faz sozinha:**
  1. Usa a **Base Pré-Alimentada de Fábrica** das 28 áreas (já preenchida por nós no repositório).
  2. Avisa no chat de forma amigável: *"Já estou construindo com os padrões de Direção de Arte, Engenharia e QA do estúdio. Se tiver alguma imagem ou referência que goste, pode só jogar aqui no chat que eu absorvo o estilo na hora."*
