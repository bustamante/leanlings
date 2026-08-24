/- # Inductive Types 2: Construtores com Dados

  Construtores podem carregar dados:

    inductive Shape where
      | circle (radius : Float)
      | rectangle (width : Float) (height : Float)

  Faça o casamento de padrões para extrair os dados:

    match shape with
    | .circle r => ...
    | .rectangle w h => ...

  Você também pode casar padrões diretamente com `fun`:

    fun | .circle r => ... | .rectangle _ _ => ...

  Isso é um atalho para uma função anônima que
  imediatamente casa padrões no seu argumento.

  O prefixo `.` funciona quando o tipo esperado é conhecido.

  TODO: Implemente `getValueOr` usando `match`,
        e `isOk` usando casamento de padrões com `fun`.
-/

inductive Result where
  | ok (value : Nat)
  | error (message : String)
  deriving Repr

-- Use `match r with | .ok v => ... | .error _ => ...`
def getValueOr (r : Result) (default : Nat) : Nat := sorry

-- Use `fun | .ok _ => ... | .error _ => ...`
def isOk : Result → Bool := sorry
