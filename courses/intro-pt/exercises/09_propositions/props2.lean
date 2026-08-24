/- # Propositions 2: E / Ou

  Conectivos lógicos em Lean:

  • `A ∧ B` (E): provado por `⟨proof_a, proof_b⟩` ou `And.intro ha hb`
  • `A ∨ B` (Ou):  provado por `Or.inl proof_a` (esquerda) ou `Or.inr proof_b` (direita)

  Você pode digitar ∧ como \and e ∨ como \or.

  TODO: Forneça provas para cada teorema.
-/

-- Para provar A ∧ B, prove A e B
theorem and_example : 1 + 1 = 2 ∧ 2 + 2 = 4 := sorry

-- Para provar A ∨ B, prove A ou B
theorem or_example : 1 + 1 = 2 ∨ 1 + 1 = 3 := sorry

-- Você pode usar And.intro e Or.inl/Or.inr explicitamente
theorem and_or : (True ∧ True) ∨ False := sorry
