/- # Functions 2: Múltiplos Parâmetros

  Funções podem receber múltiplos parâmetros, cada um em seu
  próprio grupo entre parênteses:

    def add (a : Nat) (b : Nat) : Nat := a + b

  Você também pode agrupar parâmetros do mesmo tipo:

    def add (a b : Nat) : Nat := a + b

  TODO: Implemente `average`, que retorna a média de dois
        números naturais (divisão inteira está ok).
-/

def average (a b : Nat) : Nat := sorry
