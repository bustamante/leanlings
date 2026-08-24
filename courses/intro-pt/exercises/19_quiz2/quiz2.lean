/- # Quiz 2: Lean Prático

  Este quiz cobre notação do, laços e funções polimórficas.
  Nenhum conceito novo — só aplicando o que você já sabe!

  TODO: Complete todas as definições.
-/

-- Auxiliar: divisão segura (retorna none ao dividir por zero)
def safeDivide (a b : Nat) : Option Nat :=
  if b == 0 then none else some (a / b)

-- 1. Use a notação do para encadear duas divisões seguras:
--    divida a por b, depois divida o resultado por c.
def safeDivTwice (a b c : Nat) : Option Nat := do
  sorry

-- 2. Use Id.run do com uma variável mutável e laço for.
--    Calcule 1² + 2² + ... + n²
def sumOfSquares (n : Nat) : Nat := Id.run do
  sorry

-- 3. Função polimórfica: conte quantas vezes `target`
--    aparece na lista. Precisa da restrição [BEq α].
def countOccurrences [BEq α] (target : α) (l : List α) : Nat :=
  sorry
