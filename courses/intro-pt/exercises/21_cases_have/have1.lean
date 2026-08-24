/- # Cases and Have 2: Passos Intermediários

  `have name : type := proof` introduz um resultado intermediário:

    theorem example (h : P ∧ Q) : Q ∧ P := by
      have hp : P := h.left
      have hq : Q := h.right
      exact ⟨hq, hp⟩

  Isso é útil para quebrar provas complexas em etapas.
  Você também pode usar `have` com táticas:

    have hp : P := by exact h.left

  TODO: Use `have` para quebrar estas provas em etapas.
-/

-- Encadeie implicações usando passos intermediários
theorem chain (P Q R : Prop) (hpq : P → Q) (hqr : Q → R) (hp : P) : R := by
  sorry

-- Use `have` para estabelecer um fato intermediário.
-- Lembre que `¬¬P` se desdobra em `(¬P) → False`, então comece com `intro hn` para obter
-- `hn : ¬P`. Então `¬P` é ele mesmo `P → False`, então `hn hp : False`.
-- Nomeie essa contradição com `have contra : False := hn hp`, depois feche
-- o objetivo com ela.
theorem double_neg_intro (P : Prop) (hp : P) : ¬¬P := by
  sorry
