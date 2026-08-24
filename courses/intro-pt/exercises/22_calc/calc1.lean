/- # Calc 1: Provas Passo a Passo

  `calc` permite escrever provas como uma cadeia de igualdades:

    calc expression
        _ = step1 := by rw [h1]
        _ = step2 := by rw [h2]

  Cada passo usa `rw [h]` para reescrever com uma hipótese.
  Isso torna provas complexas legíveis e estruturadas.

  Quando os objetivos envolvem aplicações de função (não só aritmética),
  `omega` não ajuda — você precisa de `rw` para percorrer a cadeia.

  TODO: Preencha cada `sorry` com `rw [...]` usando a hipótese certa.
-/

-- A estrutura do calc já está pronta — preencha as justificativas.
-- Dica: use `rw [h1]` e `rw [h2]`.
theorem calc_rewrite (f : Nat → Nat) (h1 : f 0 = 3) (h2 : f 3 = 7) :
    f (f 0) = 7 := by
  calc f (f 0)
      _ = f 3 := by sorry     -- reescreve f 0 para 3
      _ = 7   := by sorry     -- reescreve f 3 para 7

-- Agora escreva sua própria cadeia de calc do zero.
-- Comece com `calc f 5`, depois encadeie passos `rw` através de g.
-- Dica: f 5 → g 5 + 1 → 5 * 2 + 1 → 11
theorem calc_chain (f g : Nat → Nat)
    (h1 : ∀ x, f x = g x + 1)
    (h2 : ∀ x, g x = x * 2) :
    f 5 = 11 := by
  sorry
