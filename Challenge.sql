--1
select Nome, Ano from Filmes

--2
select * from Filmes order by Ano ASC

--3
select * from Filmes where id = 28

--4
select * from filmes where Ano = 1997

--5
select * from Filmes where Ano >= 2000

--6
select * from Filmes where Duracao > 100 AND Duracao < 150 order by Duracao ASC

--7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

--8
select * from Atores where Genero = 'M'

--9
select * from Atores where Genero = 'F' order by PrimeiroNome

--10
select F.Nome, G.Genero from Filmes F left join Generos G on F.Id = G.Id

--11
select F.Nome, G.Genero from Filmes F inner join Generos G on F.Id = G.Id where Genero = 'Mistério'

--12
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel
FROM Filmes F
INNER JOIN ElencoFilme E ON F.Id = E.Id
INNER JOIN Atores A ON E.Id = A.Id;
