CREATE [OR REPLACE ] TRIGGER trigger_name 
{BEFORE | AFTER | INSTEAD OF } 
{INSERT [OR] | UPDATE [OR] | DELETE} 
[OF col_name] 
ON table_name 
  [REFERENCING OLD AS o NEW AS n] 
  [FOR EACH ROW] 
  WHEN (condition) 
DECLARE
  Declaration-statements
BEGIN
  Executable-statements
EXCEPTION
  Exception-handling-statements
END;

DROP TRIGGER NOME_TRIGGER;


ALTER TRIGGER NOME_TRIGGER ENABLE;


ALTER TRIGGER NOME_TRIGGER DISABLE;


ALTER TABLE NOME_TABLE ENABLE ALL_TRIGGERS;




