/- # Induction 2: Indução sobre Listas

  Listas também suportam indução:

    induction l with
    | nil => ...          -- caso base: lista vazia
    | cons h t ih => ...  -- passo indutivo: h :: t
                          -- ih é a hipótese para t

  TODO: Prove que o comprimento de duas listas concatenadas é a
        soma de seus comprimentos.
-/

def myLength : List α → Nat
  | []     => 0
  | _ :: t => 1 + myLength t

-- Dica: use `induction l1 with` para obter dois casos.
-- No caso `nil`, tente `simp [myLength]`.
-- No caso `cons`, tente `simp [myLength, ih, Nat.add_assoc]`.
theorem myLength_append (l1 l2 : List α) :
    myLength (l1 ++ l2) = myLength l1 + myLength l2 := by
  sorry
