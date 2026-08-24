/- # Implicit Arguments 1: Chaves

  Em Lean, argumentos entre `{...}` são implícitos — o Lean os infere:

    def identity {α : Type} (x : α) : α := x

    #check identity 42        -- Nat
    #check identity "hello"   -- String

  Sem argumentos implícitos, você teria que escrever:
    identity Nat 42    -- tedioso!

  Você também pode usar `(α : Type)` para argumentos de tipo explícitos
  e `[inst : BEq α]` para argumentos de type class.

  TODO: Implemente estas funções polimórficas.
-/

-- Retorne o primeiro elemento de um par
def myFst {α β : Type} (p : α × β) : α := sorry

-- Troque os elementos de um par
def mySwap {α β : Type} (p : α × β) : β × α := sorry

-- Aplique uma função aos dois elementos de um par
def mapPair {α β γ : Type} (f : α → γ) (g : β → γ) (p : α × β) : γ × γ := sorry
