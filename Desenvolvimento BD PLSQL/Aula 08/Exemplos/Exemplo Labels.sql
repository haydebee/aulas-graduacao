BEGIN
 <<LOOP_EXTERNO>>
 
 FOR V_EXTERNO IN 1..20 LOOP
  DBMS_OUTPUT.PUT_LINE('Contador externo: ' || V_EXTERNO);
  
  <<LOOP_INTERNO>>
   FOR V_INTERNO IN 1..5 LOOP
    DBMS_OUTPUT.PUT_LINE('Contador interno: ' || V_INTERNO);
    IF V_EXTERNO = 10 THEN
     EXIT LOOP_EXTERNO;
    END IF;
    
  END LOOP LOOP_INTERNO;
  
 END LOOP LOOP_EXTERNO;
END;
/
