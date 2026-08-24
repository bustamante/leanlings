/- # Propositions 1: True, False e Igualdade

  Em Lean, proposições são tipos e provas são valores.

  • `True` é uma proposição sempre provável.
    Sua prova é `True.intro` (ou `trivial`).

  • `False` é uma proposição SEM construtores — ela nunca
    pode ser provada. Mas se você de algum modo tem `h : False`,
    você pode provar qualquer coisa com `nomatch h` (ou `h.elim`).
    Isso funciona porque casar padrões em zero casos é
    vacuamente completo — não sobra nada para tratar!

  • `a = b` é uma proposição de igualdade.
    Quando os dois lados são definicionalmente iguais, `rfl` é uma prova.
    (rfl significa "reflexivity")

  TODO: Forneça provas para cada teorema.
-/

-- True é trivialmente verdadeiro
theorem obvious : True := sorry

-- 1 + 1 é definicionalmente igual a 2
theorem one_plus_one : 1 + 1 = 2 := sorry

-- Concatenação de strings é computada definicionalmente
theorem hello_lean : "Hello, " ++ "Lean!" = "Hello, Lean!" := sorry

-- De False, qualquer coisa se segue (explosão / ex falso)
-- Dica: use `nomatch h` ou `h.elim`
theorem false_implies_anything (h : False) : 2 + 2 = 5 := sorry
