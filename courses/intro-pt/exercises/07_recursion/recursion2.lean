/- # Recursion 2: Recursão sobre Listas

  Listas são recursivas, então funções sobre listas também costumam
  ser recursivas. Faça o casamento em vazio e cons:

    def length : List α → Nat
      | []     => 0
      | _ :: t => 1 + length t

  TODO: Implemente `sum`, que soma todos os elementos de uma lista.
        sum []        = 0
        sum [1, 2, 3] = 6
-/

def sum : List Nat → Nat := sorry
