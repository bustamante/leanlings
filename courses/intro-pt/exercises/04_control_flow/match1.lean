/- # Control Flow 3: Casamento de Padrões

  `match` permite ramificar com base na estrutura de um valor.

  `Option α` representa um valor que pode estar ausente:
  • `some x` — contém um valor `x`
  • `none`   — nenhum valor

  Sintaxe de casamento de padrões:
    match value with
    | pattern1 => result1
    | pattern2 => result2

  TODO: Implemente `getOrDefault`, que extrai o valor de
        um Option, ou retorna um padrão se for none.
-/

def getOrDefault (opt : Option Nat) (default : Nat) : Nat :=
  sorry
