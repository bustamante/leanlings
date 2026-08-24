/- # Do Notation 3: Variáveis Mutáveis e Laços For

  Em um bloco `do`, você pode usar variáveis mutáveis e laços for:

    def sumList (l : List Nat) : Nat := Id.run do
      let mut total := 0
      for x in l do
        total := total + x
      return total

  `Id.run` executa um bloco `do` puro (sem precisar de IO).
  `let mut` cria uma variável mutável.

  TODO: Implemente estas funções usando variáveis mutáveis e laços for.
-/

-- Conte quantos elementos satisfazem um predicado
def countWhere (p : Nat → Bool) (l : List Nat) : Nat := Id.run do
  sorry

-- Encontre o elemento máximo (retorne 0 para lista vazia)
def listMax (l : List Nat) : Nat := Id.run do
  sorry
