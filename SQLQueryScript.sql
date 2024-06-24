--1
SELECT Nome, Ano FROM Filmes 

--2
SELECT Nome, Ano, Duracao FROM Filmes ORDER By Ano asc;

--3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

--4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = '1997';

--5
SELECT Nome, Ano, Duracao FROM filmes
WHERE Ano > 2000;

--6
SELECT Nome, Ano, Duracao FROM filmes
WHERE Duracao > 100
ORDER BY Duracao asc;

--7
SELECT 
    Ano, 
    COUNT(*) AS Quantidade
FROM 
    Filmes
GROUP BY 
    Ano
ORDER BY 
   Quantidade DESC;


--8
SELECT 
    PrimeiroNome, 
    UltimoNome, 
    Genero 
FROM 
    Atores
WHERE 
    Genero = 'M';

--9
SELECT 
    Id,
    PrimeiroNome, 
    UltimoNome, 
    Genero 
FROM 
    Atores
WHERE 
    Genero = 'F'
ORDER BY PrimeiroNome ASC;

--10
SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id

--11
SELECT Nome, Genero FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'

--12
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes
INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id



