USE Pessoas;

SELECT Pessoa.Nome, Telefones.Numero, Emails.Endereco_de_email, CNH.Registro FROM Pessoa
INNER JOIN Telefones
ON Pessoa.idPessoa = Telefones.idPessoa
INNER JOIN Emails
ON Pessoa.idPessoa = Emails.idPessoa
INNER JOIN CNH
ON Pessoa.idCNH = CNH.idCNH