/- # Cases and Have 1: Desestruturando Hipóteses

  `cases h` desestrutura uma hipótese pelos seus construtores:

  Para `h : A ∧ B`:
    cases h with
    | intro left right => ...   -- dá left : A, right : B

  Para `h : A ∨ B`:
    cases h with
    | inl ha => ...   -- caso em que A vale
    | inr hb => ...   -- caso em que B vale

  Para `h : ∃ x, P x`:
    cases h with
    | intro w hw => ...  -- dá a testemunha w e a prova hw

  TODO: Prove usando `cases`.
-/

-- E é comutativo
theorem and_comm' (P Q : Prop) (h : P ∧ Q) : Q ∧ P := by
  sorry

-- Ou é comutativo
theorem or_comm' (P Q : Prop) (h : P ∨ Q) : Q ∨ P := by
  sorry

-- E se distribui sobre Ou (à esquerda)
theorem and_or_left' (P Q R : Prop) (h : P ∧ (Q ∨ R)) : (P ∧ Q) ∨ (P ∧ R) := by
  sorry
