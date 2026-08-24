/- # Cases and Have 3: Cases sobre Tipos de Dados

  `cases` funciona em qualquer tipo indutivo, não só em proposições:

    cases n with
    | zero => ...
    | succ m => ...  -- m é o predecessor

  Para Bool:
    cases b with
    | true => ...
    | false => ...

  Isso é casamento de padrões em modo tático.

  Dica: `<;>` aplica uma tática a TODOS os subobjetivos resultantes de uma vez:
    cases b <;> rfl    -- tenta `rfl` em cada ramo

  TODO: Prove estes teoremas usando `cases`.
-/

-- Um número é zero ou positivo
theorem zero_or_pos (n : Nat) : n = 0 ∨ n > 0 := by
  sorry

-- O E booleano é comutativo
theorem bool_and_comm (a b : Bool) : (a && b) = (b && a) := by
  sorry
