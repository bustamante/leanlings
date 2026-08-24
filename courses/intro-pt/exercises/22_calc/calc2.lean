/- # Calc 2: Desigualdades em Calc

  `calc` também funciona com `≤`, `<`, `≥`, `>` e misturas:

    calc a
        _ ≤ b := by ...
        _ < c := by ...   -- as relações se compõem: a < c

  O Lean combina automaticamente relações compatíveis.

  TODO: Complete estas provas calculacionais.
        Use `calc` com as hipóteses dadas.
-/

-- A estrutura do calc já está pronta — preencha as justificativas.
-- Dica: use `exact h1`, `exact h2`.
theorem calc_trans (f : Nat → Nat)
    (h1 : f 0 ≤ f 1) (h2 : f 1 ≤ f 2) :
    f 0 ≤ f 2 := by
  calc f 0
      _ ≤ f 1 := by sorry
      _ ≤ f 2 := by sorry

-- Misture igualdade e desigualdade em uma cadeia de calc.
-- Dica: calc a _ = b := by rw [h1] _ ≤ c := by exact h2
theorem calc_mixed (a b c : Nat) (h1 : a = b) (h2 : b ≤ c) :
    a ≤ c := by
  sorry

-- Escreva uma cadeia de calc com três passos.
-- Dica: comece com `calc f 0` e encadeie por f 1, f 2, 100.
theorem calc_three (f : Nat → Nat)
    (h1 : f 0 ≤ f 1) (h2 : f 1 ≤ f 2) (h3 : f 2 ≤ 100) :
    f 0 ≤ 100 := by
  sorry
