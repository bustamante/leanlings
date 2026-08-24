/- # Inductive Types 3: Tipos Recursivos

  Tipos indutivos podem ser recursivos — um construtor pode
  referir-se ao próprio tipo sendo definido:

    inductive Expr where
      | num (n : Nat)
      | add (a b : Expr)
      | mul (a b : Expr)

  `add` e `mul` contêm cada uma duas subexpressões do tipo `Expr`.

  Você ainda pode casar padrões no construtor de nível mais alto
  sem recursão:

    def isAdd : Expr → Bool
      | .add _ _ => true
      | _        => false

  TODO: Implemente `isNum` e construa uma expressão de exemplo.
-/

inductive Expr where
  | num (n : Nat)
  | add (a b : Expr)
  | mul (a b : Expr)
  deriving Repr

-- Retorne true se a expressão for um número literal
def isNum : Expr → Bool := sorry

-- Construa a expressão que representa (2 + 3) * 4
def sampleExpr : Expr := sorry
