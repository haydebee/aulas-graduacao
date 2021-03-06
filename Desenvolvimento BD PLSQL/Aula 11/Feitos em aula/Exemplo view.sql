SET SERVEROUTPUT ON;

CREATE TABLE ID_PESSOA (
  ID NUMBER PRIMARY KEY,
  NOME VARCHAR2(50) NOT NULL,
  SOBRENOME VARCHAR2(50)
);
/

CREATE SEQUENCE id_pessoa_pk;

CREATE OR REPLACE VIEW ID_PESSOA_VW 
AS
SELECT NOME, SOBRENOME FROM ID_PESSOA;
/

-- Trigger
CREATE OR REPLACE TRIGGER trg_sequencia_id_pessoa
INSTEAD OF INSERT
ON ID_PESSOA_VW
FOR EACH ROW
BEGIN
  INSERT INTO ID_PESSOA
  VALUES (id_pessoa_pk.nextval, :new.nome, :new.sobrenome);
END;
/

INSERT INTO ID_PESSOA_VW VALUES ('Guilherme', 'Hugo');


SELECT * FROM ID_PESSOA_VW
