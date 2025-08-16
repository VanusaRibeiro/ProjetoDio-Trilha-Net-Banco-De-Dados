# DIO - Trilha .NET - Banco de Dados
<br>
Desafio de projeto:<br><br>
Banco de dados de um site de filmes, onde são armazenados dados sobre os filmes e seus atores. Sendo assim, foi solicitado  que  realize uma consulta no banco de dados com o objetivo de trazer alguns dados para análises.<br><br>

O projeto contém as tabelas descritas a seguir:

Filmes

Tabela responsável por armazenar informações dos filmes.

Atores

Tabela responsável por armazenar informações dos atores.

Generos

Tabela responsável por armazenar os gêneros dos gêneros.

ElencoFilme

Tabela responsável por representar um relacionamento do tipo muitos para muitos entre filmes e atores, ou seja, um ator pode trabalhar em muitos filmes, e filmes podem ter muitos atores.

FilmesGenero
Tabela responsável por representar um relacionamento do tipo muitos para muitos entre filmes e gêneros, ou seja, um filme pode ter mais de um gênero, e um gênero pode fazer parte de muitos filmes.

Nesse desafio foram  realizada diversas consultas em SQL, com o objetivo de retornar os dados a seguintes: <br><br>
 1 - Nome e ano dos filmes

 2 - Nome e ano dos filmes, ordenados por ordem crescente pelo ano

 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

4 - Buscar os filmes lançados em 1997

 5 - Buscar os filmes lançados APÓS o ano 2000

6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente


8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome


 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

 10 - Buscar o nome do filme e o gênero

11 - Buscar o nome do filme e o gênero do tipo "Mistério"

 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel


 
