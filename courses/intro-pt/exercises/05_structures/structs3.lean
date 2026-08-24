/- # Structures 3: Valores Padrão

  Campos de structures podem ter valores padrão:

    structure Config where
      width : Nat := 80
      height : Nat := 24

  Você pode omitir campos com padrão ao construir:
    let c : Config := {}              -- todos os padrões
    let c : Config := { width := 120 } -- sobrescreve um

  `deriving Repr` permite imprimir com `#eval`.
  `deriving BEq` permite comparar com `==`.
  (Você vai aprender a escrever suas próprias instâncias mais tarde.)

  TODO: Crie instâncias de RGBColor usando os padrões.
-/

structure RGBColor where
  red : Nat := 0
  green : Nat := 0
  blue : Nat := 0
  deriving Repr, BEq

-- Vermelho puro: red=255, green e blue usam os padrões
def pureRed : RGBColor := sorry

-- Branco: todos os canais em 255
def white : RGBColor := sorry

-- Preto: use todos os padrões
def black : RGBColor := sorry
