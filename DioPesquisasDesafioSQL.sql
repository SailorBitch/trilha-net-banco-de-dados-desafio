--1 Buscar nome e ano dos Filmes:
SELECT Nome, Ano
		FROM Filmes

--2 Buscar o nome/ano dos filmes, ordenados por ordem crescente por ano:
SELECT Nome, Ano, Duracao
		FROM Filmes
ORDER BY Ano

--3 Buscar o filme "De Volta para o Futuro" com nome, ano e a dura��o:
SELECT Nome, Ano, Duracao
		FROM Filmes
WHERE Nome = 'De Volta para o Futuro' 

--4 Buscar  filmes lan�ados em 1997:
SELECT Nome, Ano, Duracao
		FROM Filmes
WHERE Ano = 1997

--5 Buscar  filmes lan�ados AP�S o ano 2000:
SELECT Nome, Ano, Duracao
		FROM Filmes
WHERE Ano >= 2000

--6 Buscar os filmes com a duracao > 100 e < 150, ordenando pela duracao em ordem crescente:
SELECT Nome, Ano, Duracao
		FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7 Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente:

SELECT Ano,
COUNT(*) Quantidade
		FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8 Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome:
SELECT * FROM Generos
WHERE Genero = 'M'

--9 Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome:
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10 Buscar o nome do filme e o g�nero:
Select Filmes.Nome,Generos.Genero
		FROM FilmesGenero 
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

--11 Buscar o nome do filme e o g�nero do tipo "Mist�rio":
Select Filmes.Nome,Generos.Genero
		FROM FilmesGenero AS FilGen
INNER JOIN Filmes ON Filmes.Id = FilGen.IdFilme
INNER JOIN Generos ON Generos.Id = FilGen.IdGenero
WHERE Genero = 'Mist�rio'

--12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel:
Select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel 
		FROM ElencoFilme
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor