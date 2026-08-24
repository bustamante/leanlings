/- # Quiz 1: Catálogo de Biblioteca

  Construa um pequeno sistema de catálogo de biblioteca! Este quiz
  combina conceitos das primeiras doze unidades. Não há dicas —
  você tem todas as ferramentas necessárias.

  TODO: Complete todas as definições e provas.
-/

-- =============================================
-- Parte 1: Tipos (Unidades 5, 6, 12)
-- =============================================

-- Aqui estão os tipos do nosso catálogo.

inductive Genre where
  | science
  | history
  | fantasy
  deriving Repr

inductive Rating where
  | stars (n : Nat)
  | unrated
  deriving Repr

structure Book where
  title  : String
  author : String
  pages  : Nat
  genre  : Genre
  rating : Rating := .unrated
  deriving Repr

-- 1. Implemente BEq para Genre.
instance : BEq Genre where
  beq := sorry

-- 2. Implemente ToString para Rating:
--    stars 5 => "5 stars", stars 1 => "1 star", unrated => "unrated"
instance : ToString Rating where
  toString := sorry

-- =============================================
-- Parte 2: Funções (Unidades 2, 3, 4)
-- =============================================

-- 3. Retorne o nome do gênero como uma String.
def Genre.name : Genre → String := sorry

-- 4. Extraia a quantidade de estrelas de um Rating (0 se unrated).
def Rating.toNat : Rating → Nat := sorry

-- 5. Um livro é "longo"? (mais de 300 páginas)
def Book.isLong (b : Book) : Bool := sorry

-- 6. Um livro vale a pena ler? Um livro vale a pena ler
--    se tem mais de 3 estrelas, ou é um livro de ciência longo.
def Book.isWorthReading (b : Book) : Bool := sorry

-- 7. Descreva um livro: "<title> by <author> (<pages> pages, <genre>)"
def Book.describe (b : Book) : String := sorry

-- 8. Retorne uma cópia do livro com uma nova avaliação.
def Book.withRating (b : Book) (r : Rating) : Book := sorry

-- 9. Encontre um livro pelo título. Retorne none se não for encontrado.
def findBook (title : String) : List Book → Option Book := sorry

-- =============================================
-- Parte 3: Alta Ordem e Recursão (Unidades 3, 7)
-- =============================================

-- 10. Mantenha apenas livros de um gênero determinado.
def booksOfGenre (g : Genre) (books : List Book) : List Book := sorry

-- 11. Extraia todos os títulos de livros de um catálogo.
def titles (books : List Book) : List String := sorry

-- 12. Calcule o total de páginas de um catálogo.
def totalPages (books : List Book) : Nat := sorry

-- 13. Renderize uma avaliação por estrelas como uma string de estrelas.
--     starBar (.stars 3) = "***", starBar .unrated = ""
def starBar : Rating → String := sorry

-- =============================================
-- Parte 4: Provas (Unidades 8, 9, 10, 11)
-- =============================================

-- 14. Um livro com 0 páginas não é longo.
theorem zero_not_long (b : Book) (h : b.pages = 0) :
    b.isLong = false := by
  sorry

-- 15. withRating devolve a avaliação que recebeu.
theorem withRating_rating (b : Book) (r : Rating) :
    (b.withRating r).rating = r := by
  sorry

-- 16. Um livro sem avaliação tem contagem de estrelas 0.
theorem unrated_zero_stars (b : Book) (h : b.rating = .unrated) :
    b.rating.toNat = 0 := by
  sorry

-- 17. Ciência e história são gêneros diferentes.
theorem science_ne_history : Genre.science ≠ Genre.history := by
  sorry

-- 18. Todo gênero é ciência, história ou fantasia.
-- Faça o casamento de padrões em `g` (um `match g with | .science => ... | ...`);
-- cada ramo é então uma igualdade que você fecha com `rfl`, envolta em `Or.inl`/`Or.inr`.
theorem genre_cases (g : Genre) :
    g = .science ∨ g = .history ∨ g = .fantasy := by
  sorry

-- Para as provas por indução abaixo:
def pageCount : List Book → Nat
  | [] => 0
  | b :: bs => b.pages + pageCount bs

def bookTitles : List Book → List String
  | [] => []
  | b :: bs => b.title :: bookTitles bs

-- 19. pageCount se distribui sobre append.
theorem pageCount_append (l1 l2 : List Book) :
    pageCount (l1 ++ l2) = pageCount l1 + pageCount l2 := by
  sorry

-- 20. bookTitles se distribui sobre append.
theorem bookTitles_append (l1 l2 : List Book) :
    bookTitles (l1 ++ l2) = bookTitles l1 ++ bookTitles l2 := by
  sorry

-- =============================================
