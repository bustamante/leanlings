/- # Structures 2: Usando Campos

  Acesse campos de structures com notação de ponto:
    let p : Point := ⟨3.0, 4.0⟩
    p.x    -- 3.0
    p.y    -- 4.0

  Você também pode criar uma cópia modificada com `{ s with field := val }`:
    let p2 := { p with age := 26 }  -- mesmo nome, idade nova

  TODO: Implemente as três funções; cada uma tem um comentário
        dizendo o que ela deve fazer.
-/

structure Person where
  firstName : String
  lastName : String
  age : Nat
  deriving BEq  -- gera `==` automaticamente; você verá como na unidade 12

-- Retorne o primeiro e o último nome separados por um único espaço,
-- ex.: "Jane" e "Doe" viram "Jane Doe". (Junte strings com `++`.)
def fullName (p : Person) : String := sorry

-- Uma pessoa é adulta se sua idade for pelo menos 18.
def isAdult (p : Person) : Bool := sorry

-- Retorne uma nova Person com a idade incrementada em 1.
-- Use `{ p with ... }` para copiar todos os campos exceto o que você muda.
def birthday (p : Person) : Person := sorry
