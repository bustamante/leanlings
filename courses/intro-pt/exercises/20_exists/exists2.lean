/- # Provas Existenciais 2: Desestruturação

  Dado `h : ∃ x, P x`, extraia a testemunha e sua prova:
  • `let ⟨w, hw⟩ := h`   -- agora `w` é a testemunha e `hw : P w`

  Depois use `w` (e `hw`) para construir o que o objetivo pedir.

  TODO: Prove estes teoremas desestruturando a hipótese existencial.
-/

-- Extraia a testemunha de `h` e a devolva, junto com sua prova.
theorem exists_relabel (h : ∃ n : Nat, n + n = 10) : ∃ m : Nat, m + m = 10 := by
  sorry

-- Construa uma nova testemunha a partir da antiga: se `n > 0`, então `n + 1 > 1`.
theorem exists_succ_gt_one (h : ∃ n : Nat, n > 0) : ∃ m : Nat, m > 1 := by
  sorry
