/- # Final Quiz: O Quadro Completo

  Este exercício final testa tudo o que você aprendeu:
  tipos recursivos, recursão estrutural, provas por indução,
  existenciais, provas de iff e automação de táticas.

  TODO: Complete todas as definições e provas.
-/

-- =============================================
-- Parte 1: Tipos e Funções (Unidades 6, 7)
-- =============================================

-- Uma árvore binária que armazena valores em nós internos.
inductive Tree (α : Type) where
  | leaf : Tree α
  | node (left : Tree α) (value : α) (right : Tree α) : Tree α
  deriving Repr, BEq

-- 1. Conte os nós de uma árvore (recursivo).
def Tree.size : Tree α → Nat := sorry

-- 2. Colete todos os valores em uma lista (percurso em ordem).
def Tree.toList : Tree α → List α := sorry

-- 3. Espelhe uma árvore: troque as subárvores esquerda e direita recursivamente.
def Tree.mirror : Tree α → Tree α := sorry

-- 4. Calcule a profundidade (o caminho mais longo da raiz até uma folha).
--    Uma folha tem profundidade 0.
def Tree.depth : Tree α → Nat := sorry

-- =============================================
-- Parte 2: Provas Simples (Unidades 8, 9, 10)
-- =============================================

-- 5. Uma folha tem tamanho 0.
theorem Tree.size_leaf : (Tree.leaf : Tree α).size = 0 := by
  sorry

-- 6. toList de uma folha é vazio.
theorem Tree.toList_leaf : (Tree.leaf : Tree α).toList = [] := by
  sorry

-- 7. Uma árvore de exemplo para testes.
def sampleTree : Tree Nat :=
  .node (.node .leaf 1 .leaf) 2 (.node .leaf 3 .leaf)

-- 8. Prove o tamanho da árvore de exemplo.
theorem sample_size : sampleTree.size = 3 := by
  sorry

-- 9. Um node sempre tem tamanho ≥ 1.
--    Tente `simp [size]` e depois `omega`.
theorem Tree.size_node_pos (l : Tree α) (v : α) (r : Tree α) :
    (Tree.node l v r).size ≥ 1 := by
  sorry

-- =============================================
-- Parte 3: Indução (Unidades 11, 24, 25)
-- =============================================

-- 10. Espelhar preserva o tamanho.
--     Use `induction t` e depois `simp [mirror, size, ...]` e `omega`.
theorem Tree.size_mirror (t : Tree α) : t.mirror.size = t.size := by
  sorry

-- 11. Espelhar preserva a profundidade.
--     Dica: `Nat.max_comm` troca os argumentos de `max`.
theorem Tree.depth_mirror (t : Tree α) : t.mirror.depth = t.depth := by
  sorry

-- 12. Espelhar é sua própria inversa: espelhar duas vezes devolve
--     a árvore original.
theorem Tree.mirror_mirror (t : Tree α) : t.mirror.mirror = t := by
  sorry

-- 13. O comprimento de toList é igual ao tamanho.
theorem Tree.toList_length (t : Tree α) : t.toList.length = t.size := by
  sorry

-- 14. A profundidade é sempre ≤ o tamanho.
theorem Tree.depth_le_size (t : Tree α) : t.depth ≤ t.size := by
  sorry

-- =============================================
-- Parte 4: Existenciais e Iff (Unidades 20, 21)
-- =============================================

-- 15. Uma árvore com node sempre contém pelo menos um elemento.
--     Forneça uma testemunha e prove que ela está na lista.
theorem Tree.node_has_element (l : Tree α) (v : α) (r : Tree α) :
    ∃ x, x ∈ (Tree.node l v r).toList := by
  sorry

-- 16. Uma árvore tem tamanho 0 se e somente se for uma folha.
--     Use `constructor` para dividir o ↔ em duas direções.
--     Na direção direta, use `cases t` para dividir em casos.
theorem Tree.size_zero_iff_leaf (t : Tree α) : t.size = 0 ↔ t = .leaf := by
  sorry

-- =============================================
