/- # Recursion 3: Padrão do Acumulador

  Às vezes ajuda carregar um acumulador — um parâmetro extra
  que vai construindo o resultado:

    def sum (l : List Nat) : Nat :=
      go l 0
    where
      go : List Nat → Nat → Nat
        | [], acc     => acc
        | h :: t, acc => go t (acc + h)

  A cláusula `where` define uma função auxiliar local.

  TODO: Implemente `reverse` usando um acumulador.
        reverse [1, 2, 3] = [3, 2, 1]
-/

def reverse (l : List α) : List α :=
  sorry
