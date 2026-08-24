/- # Basics 3: Operações com Strings

  Strings em Lean podem ser concatenadas com `++`:
    "Hello, " ++ "world!" = "Hello, world!"

  Você também pode usar interpolação de strings com `s!"..."`:
    let name := "Lean"
    s!"Hello, {name}!" = "Hello, Lean!"

  TODO: Substitua cada `sorry` por uma expressão de string.
-/

-- Use `++` para concatenar duas strings
def hello : String := sorry

-- Use `s!"..."` com `{name}` para interpolar uma variável
def name := "Lean"
def greeting : String := sorry
