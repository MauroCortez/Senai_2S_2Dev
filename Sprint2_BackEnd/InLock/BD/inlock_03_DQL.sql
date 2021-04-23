USE inlock_games_tarde

--Listar todos os usu�rios
SELECT * FROM Usuario

-- Listar todos os est�dios
SELECT * FROM Estudios

-- Listar todos os jogos
SELECT * FROM Jogos

-- Listar todos os jogos e seus respectivos est�dios
SELECT NomeJogo, NomeEstudio FROM Jogos
INNER JOIN Estudios
ON Jogos.idestudio = Estudios.idestudio


-- Buscar e trazer na lista todos os est�dios com os respectivos jogos. Obs.: Listartodos os est�dios mesmo que eles n�o contenham nenhum jogo de refer�ncia
SELECT NomeJogo, NomeEstudio FROM Estudios
LEFT JOIN Jogos
ON  Estudios.idestudio = Jogos.idestudio

-- Buscar um usu�rio por e-mail e senha (login)
SELECT Email, Senha FROM Usuario where email = 'admin@admin.com' and Senha = 'admin'

-- Buscar um jogo por idJogo
SELECT NomeJogo, DescricaoJogo, Datadelancamento, Valor, NomeEstudio FROM Jogos
INNER JOIN Estudios
ON Jogos.idestudio = Estudios.idestudio
WHERE idJogo = 1

-- Buscar um est�dio por idEstudio
SELECT NomeEstudio FROM Estudios WHERE idestudio = 2



