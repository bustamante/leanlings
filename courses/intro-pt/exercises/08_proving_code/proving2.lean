/- # Proving Code 2: Provas por Tática

  Quando uma prova envolve *variáveis* (não valores concretos),
  nem sempre dá para confiar em `rfl`. Em vez disso, use o modo
  tático escrevendo `by`:

    theorem foo : ... := by
      tatica_aqui

  Táticas úteis:
  • `rfl` — fecha o objetivo quando os dois lados são iguais
  • `unfold f` — substitui `f` pela sua definição, para você continuar trabalhando
  • `simp [f]` — desdobra a função `f` e simplifica
  • `omega` — resolve aritmética sobre números naturais

  TODO: Complete as provas. Há dicas nos comentários.
-/

def double (n : Nat) : Nat := n + n

def triple (n : Nat) : Nat := 3 * n

-- Valores concretos: `rfl` ainda funciona dentro de `by`
theorem triple_0 : triple 0 = 0 := by
  sorry

-- Variável n: desdobre a definição com `simp [triple]`
theorem triple_def (n : Nat) : triple n = 3 * n := by
  sorry

-- Aritmética com variáveis: tente `omega`
theorem zero_add (n : Nat) : 0 + n = n := by
  sorry

-- Combine desdobramento + aritmética: `simp [double]; omega`
theorem double_add (a b : Nat) : double (a + b) = double a + double b := by
  sorry
