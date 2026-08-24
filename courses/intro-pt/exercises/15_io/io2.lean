/- # IO 2: Ações de IO

  Ações de IO podem ser combinadas em blocos `do`:

    def greetTwice (name : String) : IO Unit := do
      IO.println s!"Hello, {name}!"
      IO.println s!"Nice to meet you, {name}!"

  Ações de IO comuns:
  • `IO.println` — imprime uma linha
  • `IO.print` — imprime sem quebra de linha
  • `for i in List.range n do` — repete n vezes

  Você pode usar `let` e `←` em blocos `do` de IO exatamente
  como fez com `Option` no módulo anterior.

  TODO: Implemente printCountdown.
-/

-- Imprima os números de n até 1, cada um em sua própria linha
-- Use um laço for com List.range
def printCountdown (n : Nat) : IO Unit := sorry

def main : IO Unit := do
  printCountdown 5
