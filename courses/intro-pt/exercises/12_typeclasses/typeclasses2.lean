/- # Type Classes 2: Definindo Instâncias

  Você pode definir suas próprias type classes:

    class Describable (α : Type) where
      describe : α → String

  E fornecer instâncias para tipos específicos:

    instance : Describable Nat where
      describe n := s!"the number {n}"

  TODO: 1. Implemente a instância `BEq` para `Suit`. Dois valores devem ser
           iguais exatamente quando usam o mesmo construtor.
        2. Implemente a instância `Describable` para `Suit`, retornando "Hearts",
           "Diamonds", "Clubs" e "Spades" respectivamente.
-/

inductive Suit where
  | hearts
  | diamonds
  | clubs
  | spades
  deriving Repr

class Describable (α : Type) where
  describe : α → String

-- TODO: Implemente BEq para Suit
instance : BEq Suit where
  beq := sorry

-- TODO: Implemente Describable para Suit
instance : Describable Suit where
  describe := sorry
