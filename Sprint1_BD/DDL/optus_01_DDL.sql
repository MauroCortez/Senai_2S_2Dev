CREATE DATABASE Optus

USE Optus

CREATE TABLE Empresas
(
		idEmpresa	INT PRIMARY	KEY IDENTITY,
		Nome		VARCHAR(200) NOT NULL,

);

CREATE TABLE Artistas
(
		idArtista	INT PRIMARY KEY IDENTITY,
		idEmpresa	INT FOREIGN KEY REFERENCES	Empresas(idEmpresa),
		Nome		VARCHAR(200) NOT NULL,

);

CREATE TABLE Estilos
(
		idEstilo	INT PRIMARY	KEY IDENTITY,
		Tipo		VARCHAR(200) NOT NULL,
);

CREATE TABLE Albuns
(
		idAlbum			INT PRIMARY KEY IDENTITY,
		idArtista		INT FOREIGN KEY REFERENCES	Artistas(idArtista),
		idEstilo		INT FOREIGN	KEY	REFERENCES	Estilos(idEstilo),
		Titulo			VARCHAR(200) NOT NULL,
		Ano				SMALLINT	NOT NULL,
		Localizacao		VARCHAR(200) NOT NULL,
		Minutos			VARCHAR(100) NOT NULL,
		Visualizacao	VARCHAR(20) NOT NULL,

);


CREATE TABLE Usuarios
(
		idUsuario	INT PRIMARY	KEY	IDENTITY,
		Nome		VARCHAR(200) NOT NULL,
		Email		VARCHAR(200) NOT NULL,
		Senha		VARCHAR(200) NOT NULL,
		Permissao	VARCHAR(13)	NOT NULL,
);