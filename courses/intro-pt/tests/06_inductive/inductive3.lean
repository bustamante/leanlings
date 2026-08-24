-- Verificações ocultas de corretude para este exercício (não mostradas ao aluno).
#guard isNum (.num 5) == true
#guard isNum (.add (.num 1) (.num 2)) == false
#guard isNum (.mul (.num 1) (.num 2)) == false
#guard
  match sampleExpr with
  | .mul (.add (.num 2) (.num 3)) (.num 4) => true
  | _ => false
