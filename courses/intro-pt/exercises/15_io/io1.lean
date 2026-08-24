/- # IO 1: Entrada e Saída

  `IO` é uma mônade para efeitos colaterais. A função `main`
  tem o tipo `IO Unit`:

    def main : IO Unit := do
      IO.println "Hello, World!"

  Você pode sequenciar ações de IO com `do`:

    def main : IO Unit := do
      let name := "Lean"
      IO.println s!"Hello, {name}!"
      IO.println "Goodbye!"

  TODO: 1. Implemente `greet` para imprimir "Hello, {name}!"
           usando `IO.println` e interpolação de strings `s!"..."`.
        2. Faça `main` chamar `greet "Lean"` exatamente uma vez.

  Executar este arquivo deve imprimir exatamente:

    Hello, Lean!
-/

-- Imprima "Hello, {name}!" usando IO.println e s!"..."
def greet (name : String) : IO Unit := sorry

def main : IO Unit := do
  sorry
