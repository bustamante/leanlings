/- # Arrays 2: Construindo Arrays

  Você pode construir arrays programaticamente:

    Array.mkArray 5 0        -- #[0, 0, 0, 0, 0]
    Array.range 5             -- #[0, 1, 2, 3, 4]
    #[1, 2] ++ #[3, 4]       -- #[1, 2, 3, 4]

  Ou use `Id.run do` com arrays mutáveis:

    Id.run do
      let mut a := #[]
      for i in List.range 5 do
        a := a.push (i * i)
      return a                -- #[0, 1, 4, 9, 16]

  TODO: Construa estes arrays.
-/

-- Os primeiros 10 quadrados: #[0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
def squares : Array Nat := sorry

-- Inverta um array (sem usar Array.reverse)
def myReverse (a : Array Nat) : Array Nat := sorry
