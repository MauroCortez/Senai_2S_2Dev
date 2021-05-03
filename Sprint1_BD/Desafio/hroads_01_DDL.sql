-- exercicio 1
CREATE DATABASE SENAI_HROADS_TARDE;

USE SENAI_HROADS_TARDE;

-- exercicio 2
CREATE TABLE TipoHabilidade
(
    idTipo    INT PRIMARY KEY IDENTITY
    ,nomeTipo    VARCHAR (50) NOT NULL
);

CREATE TABLE Habilidades
(
    idHabilidade		INT PRIMARY KEY IDENTITY
    ,idTipo				INT FOREIGN KEY REFERENCES TipoHabilidade(idTipo)
    ,nomeHabilidade     VARCHAR(200) NOT NULL
);

CREATE TABLE Classes
(
    idClasse            INT PRIMARY KEY IDENTITY
    ,nomeClasse         VARCHAR(50)
);

CREATE TABLE ClassHab
(
    idClassHab       INT PRIMARY KEY IDENTITY
    ,idClasse        INT FOREIGN KEY REFERENCES Classes(idClasse)
    ,idHabilidade    INT FOREIGN KEY REFERENCES Habilidades(idHabilidade)
);

CREATE TABLE Personagens
(
    idPersonagem			INT PRIMARY KEY IDENTITY
    ,Nome					VARCHAR (20) NOT NULL
    ,CapacidadeMaxVida		INT
    ,CapacidadeMaxMana		INT
    ,DataAtualizacao		DATE
    ,DataCriacao			DATE
    ,idClasse				INT FOREIGN KEY REFERENCES Classes(idClasse)
);

CREATE TABLE TipoUsuario
(
	idTipoUsuario		INT PRIMARY KEY IDENTITY
	,NomeTipoUsuario	VARCHAR (20) NOT NULL
);

CREATE TABLE Usuarios
(
	idUsuario		INT PRIMARY KEY IDENTITY
	,Email			VARCHAR(200) NOT NULL
	,Senha			Varchar(200) NOT NULL
	,idTipoUsuario	INT FOREIGN KEY REFERENCES TipoUsuario (idTipoUsuario)
);