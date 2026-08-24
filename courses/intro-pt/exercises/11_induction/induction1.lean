/- # Induction 1: Indução sobre Nat

  Para provar propriedades para todos os números naturais, use indução:

    induction n with
    | zero => ...        -- caso base: prove para 0
    | succ n ih => ...   -- passo indutivo: prove para n+1
                         -- `ih` é a hipótese de indução para n

  `myAdd` abaixo recursa no segundo argumento:
    myAdd n 0     = n
    myAdd n (m+1) = (myAdd n m) + 1

  Então `myAdd n 0 = n` é verdadeiro por definição (primeira equação),
  mas `myAdd 0 n = n` NÃO é — isso exige indução em `n`.

  TODO: Prove estes teoremas. O primeiro é definicional (tente `rfl`).
        O segundo genuinamente exige `induction`.
-/

def myAdd : Nat → Nat → Nat
  | n, 0     => n
  | n, m + 1 => (myAdd n m) + 1

-- Isso é verdadeiro por definição — `rfl` basta
theorem myAdd_zero (n : Nat) : myAdd n 0 = n := by
  sorry

-- Isso exige indução em `n`
theorem myAdd_zero_left (n : Nat) : myAdd 0 n = n := by
  sorry
