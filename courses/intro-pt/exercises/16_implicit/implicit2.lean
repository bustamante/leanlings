/- # Implicit Arguments 2: Restrições de Type Class

  Nota: `[BEq α]` (colchetes) é diferente de `{α : Type}`
  (chaves) — os dois são "implícitos" em certo sentido, mas
  funcionam de forma diferente:
  • `{α : Type}` — o Lean infere o tipo a partir do uso
  • `[BEq α]` — o Lean encontra uma *instância* de type class automaticamente

  Colchetes `[...]` passam instâncias de type class:

    def printTwice [ToString α] (x : α) : String :=
      toString x ++ ", " ++ toString x

  Isso funciona com qualquer tipo que tenha uma instância `ToString`.
  O Lean encontra automaticamente a instância certa.

  TODO: Implemente estas funções polimórficas usando restrições de type class.
-/

-- Verifique se uma lista contém um elemento (precisa de BEq)
def myContains [BEq α] (x : α) (l : List α) : Bool := sorry

-- Remova duplicatas, mantendo a última ocorrência de cada valor e preservando a ordem
-- (precisa de BEq). Por exemplo: myDedup [1, 2, 1, 3, 2] = [1, 3, 2].
def myDedup [BEq α] (l : List α) : List α := sorry
