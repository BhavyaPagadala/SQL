SET SERVEROUTPUT ON;

DECLARE
    str VARCHAR2(50) := 'Navya';   -- You can change this value
    rev VARCHAR2(50) := '';
    i   NUMBER;
BEGIN
    FOR i IN REVERSE 1..LENGTH(str) LOOP
        rev := rev || SUBSTR(str, i, 1);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Original String: ' || str);
    DBMS_OUTPUT.PUT_LINE('Reversed String: ' || rev);
END;
/