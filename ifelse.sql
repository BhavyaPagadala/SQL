SET SERVEROUTPUT ON;

DECLARE
    student_name VARCHAR2(50) := 'Navya';
    marks        NUMBER := 75;
BEGIN
    IF marks >= 40 THEN
        DBMS_OUTPUT.PUT_LINE(student_name || ' has passed.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(student_name || ' has failed.');
    END IF;
END;
/