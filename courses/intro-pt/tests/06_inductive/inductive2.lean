-- Verificações ocultas de corretude para este exercício (não mostradas ao aluno).
#guard getValueOr (.ok 42) 0 == 42
#guard getValueOr (.error "oops") 99 == 99
#guard isOk (.ok 5) == true
#guard isOk (.error "nope") == false

