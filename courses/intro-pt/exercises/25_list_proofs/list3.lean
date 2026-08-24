/- # List Proofs 3: Provando Propriedades de Funções Personalizadas

  Quando você define suas próprias funções de lista, prova
  propriedades sobre elas usando indução e `simp [sua_funcao]`.

  TODO: Defina a função e prove suas propriedades.
-/

-- Append personalizado (para praticar indução, sem usar ++)
def myAppend : List α → List α → List α
  | [], ys => ys
  | x :: xs, ys => x :: myAppend xs ys

-- myAppend com nil à direita é a identidade
theorem myAppend_nil (l : List α) : myAppend l [] = l := by
  sorry

-- myAppend é associativo
theorem myAppend_assoc (a b c : List α) :
    myAppend (myAppend a b) c = myAppend a (myAppend b c) := by
  sorry

-- myAppend coincide com ++
theorem myAppend_eq_append (a b : List α) : myAppend a b = a ++ b := by
  sorry
