/- # Recursion 4: Recursão sobre Tipos Personalizados

  Até agora recursamos sobre Nat e List — tipos da biblioteca
  padrão. Mas você pode recursar sobre qualquer tipo indutivo
  que você mesmo definir!

  Relembre o tipo de expressão dos exercícios de tipos indutivos:

    inductive Expr where
      | num (n : Nat)
      | add (a b : Expr)
      | mul (a b : Expr)

  Uma função recursiva segue o mesmo padrão — casa cada
  construtor e recursa nas subexpressões:

    def depth : Expr → Nat
      | .num _   => 0
      | .add a b => 1 + max (depth a) (depth b)
      | .mul a b => 1 + max (depth a) (depth b)

  Isso é chamado de **recursão estrutural**: toda chamada recursiva
  é sobre uma parte estruturalmente menor da entrada. O Lean verifica
  isso automaticamente — se sua recursão não for estrutural, ele
  vai rejeitar a definição.

  TODO: Implemente `eval` e `countNums`.
-/

inductive Expr where
  | num (n : Nat)
  | add (a b : Expr)
  | mul (a b : Expr)
  deriving Repr

-- Avalie a árvore de expressão para um Nat
def eval : Expr → Nat := sorry

-- Conte quantas folhas `num` existem na expressão
def countNums : Expr → Nat := sorry
