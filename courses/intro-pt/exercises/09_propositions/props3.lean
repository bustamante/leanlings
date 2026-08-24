/- # Propositions 3: Negação e Implicação

  • `A → B` (implicação): uma função de uma prova de A para uma prova de B.
    Provada por `fun (h : A) => ...prova de B...`

  • `¬A` (negação): definida como `A → False`.
    Para provar ¬A, assuma A e derive uma contradição.

  • `absurd : α → ¬α → β` deriva qualquer coisa a partir de uma contradição.

  Essas provas são escritas como expressões de função (modo termo).
  No próximo módulo, você vai aprender o modo tático — uma forma
  alternativa de construir provas passo a passo.

  TODO: Forneça provas para cada teorema usando `fun`.
-/

-- Implicação: se sabemos P, podemos provar P
theorem identity (P : Prop) : P → P :=
  sorry

-- Se sabemos P e P → Q, podemos provar Q
theorem modus_ponens (P Q : Prop) : P → (P → Q) → Q :=
  sorry

-- De uma contradição (P e ¬P), podemos provar qualquer coisa
theorem contradiction (P Q : Prop) : P → ¬P → Q :=
  sorry
