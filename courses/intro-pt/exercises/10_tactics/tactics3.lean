/- # Tactics 3: rewrite (rw)

  `rw [h]` reescreve o objetivo usando uma equação `h : a = b`,
  substituindo `a` por `b`.

  `rw [← h]` reescreve para trás, substituindo `b` por `a`.
  (Digite ← como \l ou \left)

  Você pode encadear reescritas: `rw [h1, h2, h3]`

  TODO: Complete as provas usando `rw`.
-/

-- Reescreva usando a hipótese
theorem rewrite_example (a b : Nat) (h : a = b) : a + 1 = b + 1 := by
  sorry

-- Encadeie duas reescritas
theorem rewrite_chain (a b c : Nat) (h1 : a = b) (h2 : b = c) : a = c := by
  sorry

-- Use reescrita para trás. O objetivo é sobre `b`, mas nosso fato extra `ha` é
-- sobre `a`. `rw [h]` para frente procura por `a` no objetivo e não encontra,
-- então você precisa reescrever para trás (`rw [← h]`) para transformar `b` em `a` primeiro.
theorem rewrite_back (a b : Nat) (h : a = b) (ha : a + 1 = 5) : b + 1 = 5 := by
  sorry
