/- # Proving Code 1: Suas Primeiras Provas

  Em Lean, você pode *provar* coisas sobre seu código.
  Um `theorem` declara um fato, e você precisa fornecer uma prova.

  Quando os dois lados de uma equação computam para o mesmo valor,
  `rfl` ("reflexividade") é uma prova. Lean avalia os dois
  lados e verifica se coincidem — sem nenhuma esperteza necessária.

  Essa é a ponte entre programar e provar: as funções que você
  escreve se tornam coisas sobre as quais você pode raciocinar.

  TODO: Substitua cada `sorry` por `rfl`.
-/

def double (n : Nat) : Nat := n + n

def isEven (n : Nat) : Bool := n % 2 == 0

-- Lean computa: double 3 = 3 + 3 = 6
theorem double_3 : double 3 = 6 := sorry

-- Lean computa: double 0 = 0 + 0 = 0
theorem double_0 : double 0 = 0 := sorry

-- Lean computa: isEven 4 = (4 % 2 == 0) = (0 == 0) = true
theorem four_is_even : isEven 4 = true := sorry

-- Os dois lados computam para 4, então são iguais
theorem double_2_is_add : double 2 = 2 + 2 := sorry
