-- 1 --
SELECT
	Nome,
	Ano
FROM Filmes

-- 2 --
SELECT * FROM Filmes
ORDER BY Nome, Ano, Duracao ASC

-- 3 --
SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4 --
SELECT * FROM Filmes
WHERE Ano = '1997'

-- 5 --
SELECT * FROM Filmes
WHERE Ano > 2000

-- 6 --
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- 7 --
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC, Ano ASC

-- 8 --
SELECT * FROM Atores
WHERE Genero = 'M'

-- 9 --
SELECT * FROM Atores
WHERE Genero = 'F'

-- 10 --
SELECT f.Nome AS NomeFilme, g.Genero AS Genero
FROM Filmes f
LEFT JOIN Generos g ON f.Id = g.Id

-- 11 --
SELECT f.Nome AS NomeFilme, g.Genero AS Genero
FROM Filmes f
LEFT JOIN Generos g ON f.Id = g.Id
WHERE g.Genero = 'Mistério';

-- 12 --
SELECT f.Nome AS NomeFilme, f.Ano, f.Duracao, a.PrimeiroNome, a.UltimoNome, ef.Papel, g.Genero
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id;

