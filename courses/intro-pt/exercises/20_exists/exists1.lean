/- # Provas Existenciais 1: Testemunhas

  Bem-vindo de volta ao modo prova! Uma revisão rápida das táticas:
  • `rfl` — prova a = a
  • `intro h` — introduz uma hipótese
  • `exact e` — fecha o objetivo com a expressão e
  • `simp` / `omega` — simplificação / aritmética

  Agora, algo novo: quantificação existencial.

  `∃ x, P x` significa "existe um x tal que P x vale."
  (Digite ∃ como \exists ou \ex)

  Para provar isso, forneça uma testemunha e uma prova:
    ⟨testemunha, prova⟩

  Ou em modo tático:
    exact ⟨testemunha, prova⟩
    -- ou, para deixar a prova de `P testemunha` como um objetivo seguinte --
    refine ⟨testemunha, ?_⟩  -- depois prove P testemunha

  (A tática `use` do Mathlib faz a mesma coisa, mas ela não faz parte
  do Lean core, então usamos o construtor anônimo ⟨_, _⟩ aqui.)

  TODO: Prove estas afirmações existenciais.
-/

-- Existe um número natural maior que 5
theorem exists_gt_five : ∃ n : Nat, n > 5 := sorry

-- Existe um número natural cujo dobro é 10
theorem exists_double : ∃ n : Nat, n + n = 10 := sorry

-- Para qualquer n, existe um número maior que n
theorem exists_greater (n : Nat) : ∃ m : Nat, m > n := sorry
