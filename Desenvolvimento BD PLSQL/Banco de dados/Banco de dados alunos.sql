CREATE DATABASE ExemploCurso
GO
USE ExemploCurso
GO
CREATE TABLE UnidadeFederativa (
	ID INT IDENTITY(1,1) NOT NULL,
	UF CHAR(2) NOT NULL,
	Descricao VARCHAR(25) NOT NULL,
	CONSTRAINT PK_ID_UF PRIMARY KEY (ID)
);
GO
CREATE TABLE Endereco (
	ID	INT IDENTITY(1,1) NOT NULL,
	Logradouro	NVARCHAR(120) NOT NULL,
	Descricao	NVARCHAR(120) NOT NULL,
	CEP		CHAR(6) NOT NULL,
	ID_UF	INT NULL,
	--Define a chave a prim�ria da tabela
	CONSTRAINT PK_ID_Endereco PRIMARY KEY (ID),
	CONSTRAINT FK_Endereco_UF FOREIGN KEY (ID_UF)
		REFERENCES UnidadeFederativa(ID)
);
GO
CREATE TABLE Aluno (
	ID INT IDENTITY(1,1)	NOT NULL,
	RA CHAR(11)		NOT NULL,
	PrimeiroNome	NVARCHAR(50) NOT NULL,
	UltimoNome	NVARCHAR(50) NOT NULL,
	RG	CHAR(11)	NOT NULL,
	CPF CHAR(11)	NOT NULL,
	Genero	NVARCHAR(30)	NOT NULL,
	ID_Endereco		INT	NOT NULL,
	ID_Curso	INT	NOT NULL,
	ID_Disciplina INT NOT NULL,
	-- Define a chave prim�ria da tabela
	CONSTRAINT PK_ID_Aluno PRIMARY KEY (ID),
	CONSTRAINT FK_Aluno_Endereco FOREIGN KEY (ID_Endereco)
		REFERENCES Endereco(ID),
	CONSTRAINT FK_Aluno_Curso	FOREIGN KEY	(ID_Curso)
		REFERENCES	Curso(ID),
	CONSTRAINT FK_Aluno_Disciplina	FOREIGN KEY (ID_Disciplina)
		REFERENCES	Disciplina(ID)
);
