/- # Tactics 4: simp, omega e decide

  Táticas de automação poderosas que podem fechar objetivos em um passo:

  • `omega` — aritmética linear sobre Nat e Int
    Use quando: o objetivo é sobre +, -, ≤, <, = em números.

  • `simp` — simplifica usando lemas e definições conhecidos
    Use quando: o objetivo envolve operações de lista/structure
    ou precisa de reescrita com fatos da biblioteca padrão.

  • `decide` — prova proposições decidíveis por avaliação
    Use quando: o objetivo pode ser verificado testando todos os casos
    (ex.: comparações de números específicos, lógica Bool finita).

  Cada exercício abaixo está marcado com a tática CORRETA.
  Tente usar a ERRADA também — veja o que acontece!

  TODO: Complete as provas usando a tática indicada.
-/

-- Use `omega` — isso é aritmética linear
theorem arith1 : 2 + 3 = 5 := by
  sorry

-- Use `omega` — aritmética com uma variável
theorem arith2 (n : Nat) : n + 0 = n := by
  sorry

-- Use `simp` — isso envolve operações de lista, não aritmética
theorem simp_example (l : List Nat) : l ++ [] = l := by
  sorry

-- Use `decide` — uma comparação concreta (sem variáveis)
theorem decide_example : 2 < 5 := by
  sorry
