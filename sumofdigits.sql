SET SERVEROUTPUT ON;

DECLARE
    n NUMBER := 1234;
    total_sum NUMBER := 0;
    rem NUMBER;
BEGIN
    WHILE n > 0 LOOP
        rem := MOD(n, 10);
        total_sum := total_sum + rem;
        n := FLOOR(n / 10);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Sum of digits = ' || total_sum);
END;
/