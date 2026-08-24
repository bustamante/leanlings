/- # Do Notation 2: Tratamento de Erros com Except

  `Except ε α` é como `Option`, mas carrega uma mensagem de erro:
  • `Except.ok value` — sucesso
  • `Except.error msg` — falha com uma mensagem

  A notação `do` funciona da mesma forma — `←` extrai de `ok`,
  e curto-circuita em `error`.

  TODO: Implemente as funções de validação.
-/

def checkPositive (n : Int) : Except String Int :=
  if n > 0 then .ok n else .error "must be positive"

def checkSmall (n : Int) : Except String Int :=
  if n < 100 then .ok n else .error "must be less than 100"

-- Valide que um número é positivo e pequeno ao mesmo tempo
-- Encadeie as duas verificações usando a notação do.
def validate (n : Int) : Except String Int := do
  sorry
