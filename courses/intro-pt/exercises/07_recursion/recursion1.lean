/- # Recursion 1: Recursão sobre Números Naturais

  Lean suporta funções recursivas. Para recursão em Nat,
  faça o casamento em zero e sucessor:

    def countdown : Nat → List Nat
      | 0     => [0]
      | n + 1 => (n + 1) :: countdown n

  Lean verifica se a recursão é estruturalmente decrescente
  (o argumento diminui a cada chamada recursiva).

  TODO: Implemente `factorial`.
        factorial 0 = 1
        factorial 5 = 120
-/

def factorial : Nat → Nat := sorry
