USE Pclinics;

INSERT INTO Enderecos		(Endereco)
VALUES						('Avenida Inajar de Souza, 3562');


INSERT INTO Clinicas		(Nome, idEndereco)
VALUES						('Petz', 1);

INSERT INTO Funcionarios    (idClinica, Nome, CRMV)
VALUES                      (1, 'Gilberto','591')
                            ,(1, 'Barbara','456')
                            ,(1, 'Ana Luiza','231')
                            ,(1, 'Elaine','375');


INSERT INTO Tipos			(Nome)
VALUES						('Cachorro')
							,('Gato')
							,('P�ssaro');


INSERT INTO Racas			(Nome, idTipo)
VALUES						('Shih-tzu', 1)
							,('Basset', 1)
							,('Maine Coon', 2)
							,('Calopsita', 3)
							,('Papagaio', 3)
							,('Sphynx', 2);

INSERT INTO Donos			(Nome)
VALUES						('Mauro')
							,('Jean')
							,('F�bio')
							,('J�lia')
							,('Jasmine')
							,('Daniel');



INSERT INTO    Pets			(Nome, DatadeNascimento, idDono, idRaca)
VALUES						('�tila' , '2017/12/18', 1, 3)
							,('Amenadiel' , '2009/06/15', 2, 2)
							,('Adele' , '2015/07/07',3, 1 )
							,('Seraphine', '2020/02/25', 4, 4)
							,('Brigadeiro', '2012/12/02', 5, 6)
							,('Daniel', '2002/11/11', 6, 5);

INSERT INTO Atendimentos	(Descricao, DataAtendimento, idFuncionario, idPet)
VALUES						('Cirurgia', '2021/02/15', 2, 2)
							,('Odontologia', '2021/01/20', 2, 1)
							,('Vacina��o', '2021/02/24', 1, 6)
							,('Vermifuga��o', '2021/01/06', 1, 4)
							,('Tosa', '2021/03/01', 4, 3)
							,('Castra��o', '2021/01/29', 3, 5);