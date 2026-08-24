/- # Tactics 2: apply e constructor

  • `apply f` — se o objetivo é `B` e `f : A → B`,
    muda o objetivo para `A` (trabalhando de trás para frente).

  • `constructor` — divide um objetivo `A ∧ B` em dois subobjetivos.
    Também funciona para outros tipos com múltiplos construtores.

  TODO: Complete as provas.
-/

-- Use `apply` para trabalhar de trás para frente
theorem apply_example (P Q : Prop) (hp : P) (f : P → Q) : Q := by
  sorry

-- Use `constructor` para dividir ∧, depois prove cada parte
theorem and_intro (P Q : Prop) (hp : P) (hq : Q) : P ∧ Q := by
  sorry

-- No próximo teorema, você pode acessar partes de `h : P ∧ Q`
-- usando `h.left` (ou `h.1`) e `h.right` (ou `h.2`).

-- Use constructor e os acessores .left/.right juntos
theorem and_swap (P Q : Prop) (h : P ∧ Q) : Q ∧ P := by
  sorry

-- Combine constructor e apply
theorem and_map (P Q R : Prop) (h : P ∧ Q) (f : Q → R) : P ∧ R := by
  sorry
