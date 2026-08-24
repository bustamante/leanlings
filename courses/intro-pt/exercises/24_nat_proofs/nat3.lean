/- # Nat Proofs 3: Indução (Avançado)

  Com base na seção de indução, vamos provar propriedades mais
  substanciais.

  Para funções personalizadas, você costuma precisar de:
  1. `induction` para recursar na estrutura
  2. `simp [nome_da_funcao]` para desdobrar definições
  3. A hipótese de indução `ih`
  4. `rw [lemma]` para reescrever com lemas da biblioteca

  Lemas úteis:
  - `Nat.mul_add` : a * (b + c) = a * b + a * c
  - `Nat.add_mul` : (a + b) * c = a * c + b * c
  - `Nat.mul_comm` : a * b = b * a

  TODO: Prove estas propriedades usando indução.
-/

-- Soma dos primeiros n números naturais
def sumTo : Nat → Nat
  | 0 => 0
  | n + 1 => sumTo n + (n + 1)

-- Fórmula de Gauss: sumTo n = n * (n + 1) / 2
-- Como estamos usando Nat (sem frações), prove a versão dobrada:
theorem sumTo_formula (n : Nat) : 2 * sumTo n = n * (n + 1) := by
  sorry

-- A soma é monótona
theorem sumTo_mono (n : Nat) : sumTo n ≤ sumTo (n + 1) := by
  sorry
