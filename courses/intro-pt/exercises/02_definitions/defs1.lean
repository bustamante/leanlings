/- # Definitions 1: Explorando com #check e #eval

  Dois comandos essenciais para aprender Lean interativamente:

  • `#eval expr`  — avalia uma expressão e imprime o resultado
  • `#check expr` — mostra o tipo de uma expressão

  Experimente! Adicione `#eval 2 + 3` em qualquer lugar deste arquivo
  e seu editor mostrará o resultado (5).
  Adicione `#check "hello"` e ele mostrará `"hello" : String`.

  Essas são suas melhores ferramentas para experimentar com Lean.

  TODO: Use `#eval` no seu editor para descobrir as respostas,
        depois preencha-as.
-/

-- Dica: tente `#eval 2 ^ 10` no seu editor
def powerOfTwo : Nat := sorry

-- Dica: tente `#eval "hello".length`
def helloLength : Nat := sorry

-- Dica: tente `#eval (List.range 5).length`
-- List.range 5 produz [0, 1, 2, 3, 4]
def rangeLength : Nat := sorry
