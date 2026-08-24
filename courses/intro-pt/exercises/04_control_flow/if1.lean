/- # Control Flow 1: If / Then / Else

  `if/then/else` é uma expressão em Lean — ela retorna um valor.

    if condition then value1 else value2

  Ambos os ramos devem retornar o mesmo tipo.

  Para inteiros, você pode comparar com `<`, `>`, `<=`, `>=`, `==`.

  `Int` é o tipo dos números inteiros (..., -2, -1, 0, 1, 2, ...),
  diferente de `Nat`, que inclui apenas números não negativos.
  Você pode negar um Int com `-n`.

  TODO: Implemente `abs`, que retorna o valor absoluto de um inteiro.
-/

def abs (n : Int) : Int := sorry
