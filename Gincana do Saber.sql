use avaliacao_22b;

-- inserir um novo livro -- 
INSERT INTO Livros(titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ("As Crônicas de Nárnia", "C.S Lewis", 1950, TRUE, "Fantasia", "978-0064471190", "HarperCollins", 768, "Inglês");

-- Atualizar Disponibilidade --
UPDATE Livros
SET disponivel = False
WHERE ano_publicacao < 2000;

-- Autualizar Editora --
UPDATE Livros
SET editora = "Plume Books"
WHERE titulo = "1984";

-- Deletar por Idioma e Ano --
DELETE FROM livros 
WHERE idioma="Francês" and ano_publicacao < 1970;

-- Selecionar com WHERE --
SELECT * FROM livros
WHERE quantidade_paginas > 500;

-- Selecionar com GROUP BY --
SELECT COUNT(titulo)
FROM Livros
GROUP BY Categoria;

-- Selecionar com LIMIT --
SELECT * FROM Livros
LIMIT 5;

-- Selecionar com AVG -- 
SELECT AVG(ano_publicacao)
FROM Livros;

-- Selecionar com ORDER BY --
SELECT * FROM Livros
ORDER BY ano_publicacao DESC;

-- Selecionar -- 
-- não sei--
