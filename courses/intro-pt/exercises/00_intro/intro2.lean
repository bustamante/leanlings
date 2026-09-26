/- # Intro 2: Erros de Tipo

  Lean é uma linguagem fortemente tipada. Todo valor tem um tipo,
  e o compilador verifica se os tipos são compatíveis.

  O código abaixo tem um erro de tipo — ele tenta atribuir uma String
  onde um Nat (número natural) é esperado.

  TODO: Troque o valor da String "seven" pelo número 7,
        para que ele corresponda ao tipo `Nat`.
        (Mantenha a anotação de tipo como `Nat`.)
-/

def favoriteNumber : Nat := "seven"
