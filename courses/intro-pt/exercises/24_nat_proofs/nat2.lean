/- # Nat Proofs 2: Propriedades de Ordem

  Nat tem uma ordenação natural. Lemas úteis:
  - `Nat.le_refl` : n <= n
  - `Nat.le_trans` : a <= b -> b <= c -> a <= c
  - `Nat.lt_of_lt_of_le` : a < b -> b <= c -> a < c

  `omega` consegue provar a maioria dos objetivos de aritmética
  linear envolvendo adição, subtração e comparações.

  TODO: Prove estas propriedades de ordem.
-/

-- Transitividade de <=
theorem my_le_trans (a b c : Nat) (h1 : a ≤ b) (h2 : b ≤ c) : a ≤ c := by
  sorry

-- Somar preserva <=
theorem add_le_add (a b c : Nat) (h : a ≤ b) : a + c ≤ b + c := by
  sorry

-- Um número é menor ou igual ao seu dobro
theorem le_double (n : Nat) : n ≤ 2 * n := by
  sorry

-- Se a <= b e b <= a, então a = b (antissimetria)
theorem le_antisymm' (a b : Nat) (h1 : a ≤ b) (h2 : b ≤ a) : a = b := by
  sorry
