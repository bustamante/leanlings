/- # List Proofs 1: Propriedades de Append

  Listas suportam vários lemas úteis:
  - `List.nil_append` : [] ++ l = l
  - `List.append_nil` : l ++ [] = l
  - `List.append_assoc` : (a ++ b) ++ c = a ++ (b ++ c)
  - `List.length_append` : (a ++ b).length = a.length + b.length

  `simp` conhece a maioria deles, então costuma fechar o objetivo sozinho.

  TODO: Prove estas propriedades sobre as operações padrão de List.
-/

-- Anexar nil à direita é a identidade
theorem append_nil' (l : List α) : l ++ [] = l := by
  sorry

-- Append é associativo
theorem append_assoc' (a b c : List α) : (a ++ b) ++ c = a ++ (b ++ c) := by
  sorry

-- Comprimento do append
theorem length_append' (a b : List α) : (a ++ b).length = a.length + b.length := by
  sorry
