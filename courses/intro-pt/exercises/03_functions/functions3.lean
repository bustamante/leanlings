/- # Functions 3: Funções Anônimas

  Funções anônimas (lambdas) usam a palavra-chave `fun`:

    fun x => x + 1          -- uma função que soma 1
    fun x y => x + y        -- uma função que soma dois números

  Também existe um atalho usando `·` (digitado com \cdot):

    (· + 1)                 -- o mesmo que fun x => x + 1
    (· * ·)                 -- o mesmo que fun x y => x * y

  TODO: Substitua `sorry` por funções anônimas.
-/

-- Use `fun n => ...` para escrever uma função anônima que dobra sua entrada
def doubler : Nat → Nat := fun n => sorry

-- Nota: use `==` (não `=`) para igualdade booleana.
-- `==` retorna Bool, enquanto `=` cria uma Prop (proposição).

-- Use `fun n => ...` para verificar se um número é zero
def isZero : Nat → Bool := fun n => sorry

-- Agora use o atalho `·`: (· + 1) significa fun x => x + 1
def tripler : Nat → Nat := sorry
