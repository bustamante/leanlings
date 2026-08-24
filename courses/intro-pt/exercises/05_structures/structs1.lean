/- # Structures 1: Definindo Structures

  Structures agrupam dados relacionados:

    structure Point where
      x : Float
      y : Float

  Crie instâncias com campos nomeados:
    { x := 1.0, y := 2.0 : Point }
  Ou com o construtor anônimo ⟨...⟩ (digitado com \langle e \rangle):
    (⟨1.0, 2.0⟩ : Point)

  `deriving Repr` no final permite imprimir valores com `#eval`.
  (Você vai aprender mais sobre `deriving` quando virmos type classes.)

  TODO: Crie uma Person chamada "Alice", com 30 anos.
        Use campos nomeados ou o construtor anônimo.
-/

structure Person where
  name : String
  age : Nat
  deriving Repr

-- TODO: Substitua sorry por um valor Person
def alice : Person := sorry
