CREATE TABLE ALUNO (
  ID INTEGER,
  RA CHAR(15) NOT NULL,
  NOME VARCHAR2(50) NOT NULL,
  SOBRENOME VARCHAR2(50) NOT NULL,
  NOTA  FLOAT,
  FALTAS  INTEGER,
  CURSO VARCHAR2(50),
  GENERO  VARCHAR2(50),
  PERIODO VARCHAR(50),
  CONSTRAINT Alunos_ID PRIMARY KEY(ID)
);
