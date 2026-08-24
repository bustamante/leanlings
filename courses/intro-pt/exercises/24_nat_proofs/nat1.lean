/- # Nat Proofs 1: Propriedades da Adição

  Vamos provar propriedades fundamentais dos números naturais.
  Isso é uma ótima prática combinando táticas.

  Táticas úteis:
  - `omega` -- aritmética linear
  - `simp` -- simplificação
  - `rw [lemma]` -- reescrita

  Lemas úteis (na biblioteca padrão):
  - `Nat.add_comm` : n + m = m + n
  - `Nat.add_assoc` : (a + b) + c = a + (b + c)
  - `Nat.zero_add` : 0 + n = n
  - `Nat.add_zero` : n + 0 = n

  TODO: Prove estas propriedades.
-/

-- A adição é comutativa
theorem my_add_comm (a b : Nat) : a + b = b + a := by
  sorry

-- A adição é associativa
theorem my_add_assoc (a b c : Nat) : (a + b) + c = a + (b + c) := by
  sorry

-- Zero é o elemento neutro da adição (dos dois lados)
theorem add_zero_both (n : Nat) : 0 + n = n ∧ n + 0 = n := by
  sorry
