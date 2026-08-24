/- # Tactics 1: intro e exact

  No módulo anterior, você escreveu provas como expressões
  (ex.: `fun h => h`). O modo tático é uma alternativa:
  em vez de construir o termo de prova você mesmo, você dá
  instruções passo a passo e o Lean o constrói para você.

  Entre no modo tático com `by`:

    theorem foo : P → P := by
      intro h    -- introduz a hipótese `h : P`
      exact h    -- fecha o objetivo com `h`

  • `intro h` move a hipótese do objetivo para o contexto
  • `exact term` fecha o objetivo quando `term` tem o tipo certo

  TODO: Complete as provas usando `intro` e `exact`.
-/

-- Introduza a hipótese, depois a forneça como prova
theorem self_implication (P : Prop) : P → P := by
  sorry

-- Introduza as duas hipóteses, depois use a certa
theorem use_second (P Q : Prop) : P → Q → Q := by
  sorry

-- Composição de funções
theorem compose (P Q R : Prop) : (P → Q) → (Q → R) → P → R := by
  sorry
