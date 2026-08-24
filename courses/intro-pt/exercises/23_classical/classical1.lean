/- # Classical Logic 1: Terceiro Excluído

  O Lean suporta raciocínio clássico via:
  • `Classical.em (P : Prop) : P ∨ ¬P` — terceiro excluído
  • `Classical.byContradiction : (¬P → False) → P`
  • `Decidable.decide` para proposições decidíveis

  Nem todas as proposições são decidíveis construtivamente,
  mas classicamente, toda proposição é verdadeira ou falsa.

  TODO: Prove usando raciocínio clássico.
-/

-- Toda proposição é verdadeira ou falsa
theorem em_example (P : Prop) : P ∨ ¬P :=
  sorry

-- Eliminação de dupla negação (precisa de lógica clássica)
theorem dne (P : Prop) (h : ¬¬P) : P := by
  sorry

-- Prova por contradição
theorem by_contradiction_example (P Q : Prop) (h : ¬P → Q) (hnq : ¬Q) : P := by
  sorry
