INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ('As Crônicas de Nárnia', 'C.S. Lewis', 1950, 'Fantasia', 978-0241968581, 'HarperCollins', 768, 'ingles');

INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
VALUES ('Cem Anos de Solidão', 'Gabriel Garcia Marque', 1967, 'Ficçao', 978-0241968581, 'Penguin Books', 422, 'ingles')
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, 'Fantasia', 978-0439708180, 'Bloomsbury', 309, 'ingles')
('O Senhor dos Anéis: A Sociedade do Ane', 'J.R.R', 1954, 'Fantasia', 978-0618640157, 'HarperCollins', 423, 'ingles');

UPDATE Livros
SET disponibilidade = FALSE
WHERE ano_publicacao < 2000;

UPDATE Livros
SET editora = 'Plume Books'
WHERE titulo = '1984';

UPDATE Livros
SET idioma = 'Inglês'
WHERE editora = 'Penguin Books';

UPDATE Livros
SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
WHERE isbn = '978-0439708180';

DELETE FROM Livros
WHERE genero = 'Terror';

DELETE FROM Livros
WHERE idioma = 'Francês' AND ano_publicacao < 1970;

DELETE FROM Livros
WHERE titulo = 'As Crônicas de Nárnia';

DELETE FROM Livros
WHERE editora = 'Penguin Books';

SELECT *
FROM Livros
WHERE numero_de_paginas > 500;

SELECT genero, COUNT(*) AS quantidade_de_livros
FROM Livros
GROUP BY genero;

SELECT 
COUNT(*) AS total_de_livros,
AVG(numero_de_paginas) AS media_de_paginas
FROM Livros
WHERE genero = 'Drama';

