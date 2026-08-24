/- # Proving Code 3: Provando Propriedades Gerais

  Você já provou fatos sobre valores específicos e sobre
  variáveis. Agora vamos provar propriedades que combinam
  definições de funções com raciocínio aritmético.

  Estratégia:
  1. `simp [f]` para desdobrar a definição da sua função
  2. `omega` para tratar a aritmética resultante

  Depois deste módulo, você vai provar coisas sobre proposições
  abstratas — mas as táticas são as mesmas que você
  acabou de aprender!

  TODO: Complete as provas.
-/

def double (n : Nat) : Nat := n + n

-- double n é o mesmo que 2 * n
theorem double_is_mul2 (n : Nat) : double n = 2 * n := by
  sorry

-- double preserva a ordem ≤
theorem double_le (a b : Nat) (h : a ≤ b) : double a ≤ double b := by
  sorry

-- Compondo double consigo mesma
theorem double_double (n : Nat) : double (double n) = 4 * n := by
  sorry
