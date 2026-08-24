/- # Do Notation 1: Encadeando com Option

  Você pode associar `do` a IO, mas ele funciona com qualquer
  mônade — incluindo `Option`! Vemos `do` antes de IO para
  mostrar que a notação é sobre *sequenciamento*, não efeitos colaterais.

  A notação `do` permite encadear operações que podem falhar.
  Com `Option`:

    def safeDivide (a b : Nat) : Option Nat :=
      if b == 0 then none else some (a / b)

    def example : Option Nat := do
      let x ← safeDivide 10 2    -- x = 5, ou curto-circuita para none
      let y ← safeDivide x 1     -- y = 5
      return x + y                -- some 10

  `←` extrai o valor de `some`. Se qualquer passo retornar `none`,
  o bloco `do` inteiro retorna `none`.

  TODO: Preencha os blocos do abaixo.
-/

def safeDivide (a b : Nat) : Option Nat :=
  if b == 0 then none else some (a / b)

-- Calcule 100 / 5 / 4 usando a notação do (deve dar some 5)
def chainedDivide : Option Nat := do
  sorry

-- Isso deve retornar none (divisão por zero na cadeia)
def failingDivide : Option Nat := do
  sorry
