/- # Namespaces 1: Organizando Código

  Namespaces agrupam definições relacionadas:

    namespace Geometry
      def area (r : Float) : Float := 3.14159 * r * r
    end Geometry

    #eval Geometry.area 5.0  -- totalmente qualificado

  `open` traz nomes para o escopo:

    open Geometry in
    #eval area 5.0  -- sem precisar de prefixo

  `section` + `variable` permite compartilhar parâmetros:

    section
      variable (n : Nat)
      def double := n + n    -- n é parâmetro automático
      def triple := n + n + n
    end

  TODO: Complete o namespace e use `open`.
-/

namespace MyMath
  def square (n : Nat) : Nat := sorry
  def cube (n : Nat) : Nat := sorry
end MyMath

-- Use `open MyMath in` antes do corpo para acessar square e cube:
--   def foo (...) : ... :=
--     open MyMath in
--     ...use square, cube sem prefixo...
def sumOfPowers (n : Nat) : Nat := sorry
