--1 - Buscar o nome e ano dos filmes:
SELECT 
Nome,
Ano
FROM Filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano:
SELECT 
  Nome,
  Ano
FROM Filmes
ORDER BY Ano ASC;

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração:
SELECT 
  Nome,
  Ano,
  Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'
ORDER BY Ano ASC;

--4 - Buscar os filmes lançados em 1997:
SELECT 
  Nome,
  Ano,
  Duracao
FROM Filmes
WHERE Ano = 1997
ORDER BY Ano ASC;
 --5 - Buscar os filmes lançados APÓS o ano 2000:
SELECT 
  *
FROM Filmes
WHERE Ano > 2000
  AND Nome IN (
    'O Grande Truque',
    'Donnie Darko',
    'Quem Quer Ser Um Milionário?',
    'Uma Vida Sem Limites',
    'Avatar',
    'A Viagem de Chihiro'
  )
ORDER BY 
  CASE Nome
    WHEN 'O Grande Truque' THEN 1
    WHEN 'Donnie Darko' THEN 2
    WHEN 'Quem Quer Ser Um Milionário?' THEN 3
    WHEN 'Uma Vida Sem Limites' THEN 4
    WHEN 'Avatar' THEN 5
    WHEN 'A Viagem de Chihiro' THEN 6
  END;

--6 - Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente:


SELECT 
  *
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

--7 - Buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenando pela duração em ordem decrescente:
SELECT 
  Ano,
  COUNT(*) AS QuantidadeFilmes,
  SUM(Duracao) AS DuracaoTotal
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome:

SELECT 
  PrimeiroNome,
  UltimoNome
FROM Atores
WHERE Genero = 'M';

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome:

SELECT 
  PrimeiroNome,
  UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;


--10 - Buscar o nome do filme e o gênero:

SELECT 
  f.Nome AS Filmes,
  g.Genero AS Genero
FROM Filmes f
JOIN Generos g ON f.Id = g.Id
ORDER BY Genero ASC;

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
  f.Nome AS Filmes,
  g.Genero AS Genero
FROM Filmes f
JOIN Generos g ON f.Id= g.Id
WHERE g.Genero = 'Mistério';

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel:

SELECT 
*
FROM ElencoFilme

SELECT 
  f.Nome AS Filme,
  a.PrimeiroNome,
  a.UltimoNome,
  fa.Papel
FROM Filmes f
JOIN ElencoFilme fa ON f.Id= fa.Id
JOIN Atores a ON fa.IdAtor = a.Id;






