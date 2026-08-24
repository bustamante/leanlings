/- # Type Classes 1: Usando Type Classes

  Type classes fornecem operações sobrecarregadas:

  • `ToString α` — converte para String via `toString`
  • `Repr α` — exibe com `#eval` via `repr`
  • `BEq α` — verificação de igualdade via `==`

  Você pode adicioná-las automaticamente com `deriving`:

    structure Foo where
      x : Nat
      deriving Repr, BEq

  Ou definir instâncias manualmente:

    instance : ToString Foo where
      toString f := s!"Foo({f.x})"

  TODO: Adicione uma instância de `ToString` para `Color`.
-/

inductive Color where
  | red
  | green
  | blue
  deriving Repr, BEq

-- TODO: Implemente ToString para Color
instance : ToString Color where
  toString := sorry
