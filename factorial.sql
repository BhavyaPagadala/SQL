SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 5;        -- you can change this value
    fact NUMBER := 1;
    i NUMBER;
BEGIN
    IF n < 0 THEN
        DBMS_OUTPUT.PUT_LINE('Factorial is not defined for negative numbers.');
    ELSIF n = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Factorial of 0 is 1');
    ELSE
        FOR i IN 1..n LOOP
            fact := fact * i;
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('Factorial of ' || n || ' is ' || fact);
    END IF;
END;
/