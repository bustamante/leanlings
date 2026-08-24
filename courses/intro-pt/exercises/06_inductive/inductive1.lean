/- # Inductive Types 1: Enumerações

  Tipos indutivos definem um tipo com um conjunto fixo de construtores:

    inductive Season where
      | spring
      | summer
      | autumn
      | winter

  Use casamento de padrões para tratar cada caso:

    def isWarm : Season → Bool
      | .spring => true
      | .summer => true
      | _ => false

  TODO: Implemente `opposite`, que retorna a direção oposta.
-/

inductive Direction where
  | north
  | south
  | east
  | west
  deriving Repr, BEq

open Direction in
def opposite (d : Direction) : Direction := sorry
