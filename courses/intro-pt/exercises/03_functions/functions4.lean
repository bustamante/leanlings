/- # Functions 4: Funções de Alta Ordem

  Funções podem receber outras funções como argumentos.
  Listas têm métodos úteis de alta ordem:

  • `List.map f`      — aplica `f` a cada elemento
  • `List.filter p`   — mantém os elementos onde `p` é verdadeiro
  • `List.foldl f init` — combina os elementos da esquerda para a direita

  Exemplos:
    [1, 2, 3].map (· + 10)       = [11, 12, 13]
    [1, 2, 3, 4].filter (· > 2)  = [3, 4]
    [1, 2, 3].foldl (· + ·) 0    = 6   (0+1+2+3)

  TODO: Use `map`, `filter` e `foldl` para transformar as listas.
-/

-- Dobre cada elemento: [1, 2, 3] → [2, 4, 6]
def doubled : List Nat := [1, 2, 3].map sorry

-- Mantenha apenas números pares: [1, 2, 3, 4, 5, 6] → [2, 4, 6]
def evens : List Nat := [1, 2, 3, 4, 5, 6].filter sorry

-- Some todos os elementos usando foldl
def total : Nat := [10, 20, 30].foldl sorry sorry
