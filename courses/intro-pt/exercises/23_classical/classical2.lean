/- # Classical Logic 2: Contrapositiva

  A contrapositiva de `P → Q` é `¬Q → ¬P`.
  Provar a contrapositiva costuma ser mais fácil.

  Construtivamente: `(P → Q) → (¬Q → ¬P)` sempre pode ser provado.
    (Dado P, aplique h para obter Q, então ¬Q dá uma contradição.)

  Classicamente: `(¬Q → ¬P) → (P → Q)` precisa de `Classical.em`.
    (Dado P, precisamos de Q — mas não podemos computar Q a partir de P.
     Precisamos dividir em casos: ou Q vale, ou ¬Q vale e
     então h dá ¬P, contradizendo nosso P.)

  TODO: Prove as duas direções.
-/

-- Direção construtiva (não precisa de lógica clássica)
theorem contrapositive (P Q : Prop) (h : P → Q) : ¬Q → ¬P := by
  sorry

-- Direção clássica (precisa do terceiro excluído)
theorem contrapositive_reverse (P Q : Prop) (h : ¬Q → ¬P) : P → Q := by
  sorry

-- Aplique raciocínio de contrapositiva
theorem not_or_of_imp (P Q : Prop) (h : P → Q) : ¬P ∨ Q := by
  sorry
