/- # Arrays 1: Fundamentos de Array

  `Array α` é a coleção de acesso aleatório eficiente do Lean:

    let a := #[1, 2, 3]          -- literal de array
    a.size                         -- 3
    a[0]!                          -- 1 (com verificação de limites)
    a.push 4                       -- #[1, 2, 3, 4]
    a.map (· * 2)                  -- #[2, 4, 6]

  Arrays são a estrutura de dados preferida por desempenho
  (acesso O(1) contra O(n) para listas).

  TODO: Implemente estas operações de array.
-/

-- Dobre cada elemento do array
def doubleArray (a : Array Nat) : Array Nat := sorry

-- Some todos os elementos de um array usando um fold
def arraySum (a : Array Nat) : Nat := sorry

-- Mantenha apenas elementos maiores que um limite
def filterAbove (a : Array Nat) (threshold : Nat) : Array Nat := sorry
