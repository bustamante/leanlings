/- # List Proofs 2: Map e Reverse

  Mais propriedades de listas:
  - `List.length_map` : (l.map f).length = l.length
  - `List.map_id` : l.map id = l
  - `List.length_reverse` : l.reverse.length = l.length

  `simp` também conhece essas, mas você também pode prová-las
  por indução, como prática extra.

  TODO: Prove estas com simp ou indução.
-/

-- Mapear preserva o comprimento
theorem map_length (f : α → β) (l : List α) :
    (l.map f).length = l.length := by
  sorry

-- Mapear id não faz nada
theorem map_id' (l : List α) : l.map id = l := by
  sorry

-- Reverse preserva o comprimento
theorem reverse_length (l : List α) : l.reverse.length = l.length := by
  sorry
