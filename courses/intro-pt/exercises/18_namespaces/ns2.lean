/- # Namespaces 2: Sections e Variables

  `section` com `variable` permite evitar repetir parâmetros:

    section
      variable (α : Type) [BEq α]

      def myContains (x : α) (l : List α) : Bool :=
        match l with
        | [] => false
        | h :: t => h == x || myContains x t

      def myCount (x : α) (l : List α) : Nat :=
        match l with
        | [] => 0
        | h :: t => (if h == x then 1 else 0) + myCount x t
    end

  Nota: `α` e `[BEq α]` são adicionados automaticamente como
  parâmetros a toda definição dentro da section.

  TODO: Complete as definições dentro da section.
-/

section
  variable {α : Type} [BEq α]

  def myElem (x : α) : List α → Bool := sorry

  def myRemoveAll (x : α) : List α → List α := sorry
end
