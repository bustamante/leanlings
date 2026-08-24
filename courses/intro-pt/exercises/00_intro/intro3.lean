/- # Intro 3: Lendo Mensagens de Erro

  Quando seu código tem um problema, o Lean diz o que deu errado.
  Aprender a ler essas mensagens é uma habilidade essencial!

  Cada definição abaixo tem um erro. Seu editor vai sublinhar
  o problema — passe o mouse sobre ele para ver a mensagem, ou rode
  `lake exe leanlings run` para vê-la no terminal.

  Erros comuns:
  • "type mismatch" — o valor não corresponde ao tipo esperado
  • "unknown identifier" — você usou um nome que não existe
  • "function expected" — você tentou chamar algo que não é uma função

  TODO: Corrija cada definição para que o arquivo compile.
-/

-- Erro: "type mismatch" — "yes" é uma String, mas Bool era esperado.
-- Correção: troque o valor por um Bool. Os dois valores de Bool são `true` e
--           `false` — escolha o que significa "sim".
def isReady : Bool := "yes"

-- Erro: "type mismatch" — true é um Bool, mas Nat era esperado.
-- Correção: troque o valor por um Nat maior que zero (digamos, 1).
def count : Nat := true

-- Erro: "type mismatch" — "hello" é uma String, mas Nat era esperado.
-- Correção: desta vez, troque a ANOTAÇÃO DE TIPO para corresponder ao valor.
def message : Nat := "hello"
