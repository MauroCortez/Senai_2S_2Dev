USE Pclinics;

SELECT Funcionarios.Nome, Funcionarios.CRMV, Clinicas.Nome AS Clinica FROM Funcionarios
INNER JOIN Clinicas
ON Funcionarios.idClinica = Clinicas.idClinica

SELECT Racas.Nome AS 'Ra�a' FROM Racas
WHERE Nome LIKE 'S%'

SELECT Tipos.Nome AS Tipo FROM Tipos
WHERE Nome LIKE '%o'

SELECT Pets.Nome AS Pet, Donos.Nome AS Dono FROM Pets
INNER JOIN Donos
ON Pets.idDono = Donos.idDono

SELECT Atendimentos.Descricao AS Atendimento, Funcionarios.Nome AS Veterin�rio, Pets.Nome AS Nome_do_Pet, Racas.Nome AS 'Ra�a', Tipos.Nome AS Tipo, Donos.Nome AS Dono, Clinicas.Nome AS Clinica FROM Atendimentos
INNER JOIN Funcionarios
ON Atendimentos.idFuncionario = Funcionarios.idFuncionario
INNER JOIN Pets
ON Atendimentos.idPet = Pets.idPet
INNER JOIN Racas
ON Atendimentos.idPet = Racas.idRaca
INNER JOIN Tipos
ON Atendimentos.idPet = Tipos.idTipo
INNER JOIN Donos
ON Atendimentos.idPet = Donos.idDono
INNER JOIN Clinicas
ON Atendimentos.idFuncionario = Clinicas.idClinica