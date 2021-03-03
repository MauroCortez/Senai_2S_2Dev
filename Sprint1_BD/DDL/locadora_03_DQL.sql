USE Locadora;

SELECT Marcas.idMarca, Marcas.Nome, Modelos.Nome AS Modelo, Modelos.Ano FROM Marcas
INNER JOIN Modelos
ON Marcas.idModelo = Modelos.idModelo;

SELECT * FROM Marcas
INNER JOIN Modelos
ON Marcas.idModelo = Modelos.idModelo;

-- AS (ALIAS) para mudar o nome da coluna quando for puxar a tabela

SELECT Alugueis._Data, Pessoas.Nome, Modelos.Nome AS Modelo FROM Alugueis
INNER JOIN Pessoas
ON Alugueis.idPessoa = Pessoas.idPessoa
INNER JOIN Modelos
ON Alugueis.idAluguel = Modelos.idVeiculo


SELECT Pessoas.Nome, Alugueis._Data, Modelos.Nome AS Modelo FROM Pessoas
INNER JOIN Alugueis
ON Pessoas.idPessoa = Alugueis.idPessoa
INNER JOIN Modelos
ON Alugueis.idAluguel = Modelos.idVeiculo
WHERE Pessoas.Nome LIKE 'Luis';